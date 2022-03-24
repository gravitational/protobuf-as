import { decorated } from '../proto';
import { Blocks } from './blocks';
import { Writer } from './walker_as';
import { relativeName } from './internal';
import { Options } from '../options';
import { getTypeInfo, TypeInfo } from './type_info';

/**
 * Generates encode() method
 */
export class Encode {
    private encoder = 'Encoder';

    constructor(private p: Writer, private options: Options) {
        if (this.options.deps == 'embed') {
            this.encoder = [Blocks.embedNamespace, 'Encoder'].join('.');
        }
    }

    start(message: decorated.Message) {
        const t = relativeName(message.relativeName);
        this.p(`
            // Encodes ${t} to the DataView
            encode(): DataView {
                const source = this.encodeU8Array();
                const view = new DataView(new ArrayBuffer(source.length));
                for (let i: i32 = 0; i < source.length; i++) {
                    view.setUint8(i, source.at(i));
                }
                return view;            
            }
        
            // Encodes ${t} to the Array<u8>
            encodeU8Array(encoder: ${this.encoder} = new ${this.encoder}(new Array<u8>())):Array<u8> {
                const buf = encoder.buf;
        `);
    }

    begin() {
        // noop
    }

    end() {
        // noop
    }

    finish(message: decorated.Message) {
        this.p(`
                return buf;
            } // encode ${relativeName(message.relativeName)}
        `);
    }

    field(field: decorated.Field) {
        switch (field.kind) {
            case 'field_elementary':
                this.elementary(field);
                break;
            case 'field_elementary_repeated':
                if (field.packed) {
                    this.elementaryRepeatedPacked(field);
                } else {
                    this.elementaryRepeated(field);
                }
                break;

            case 'field_message':
                this.message(field);
                break;

            case 'field_message_repeated':
                this.messageRepeated(field);
                break;

            case 'field_map':
            case 'field_map_message':
                this.map(field);
                break;
        }
    }

    // TODO: Calculate statically
    // Returns the expression which encodes tag value
    private tag(field: decorated.Field): string {
        return `encoder.uint32(0x${(
            (field.number << 3) |
            field.wireType
        ).toString(16)})`;
    }

    // Returns the expression which encodes length of a variable
    private length(varName: string): string {
        return `encoder.uint32(${varName})`;
    }

    // Returns the expression which encodes a value
    private value(type: TypeInfo, varName: string): string {
        return `encoder.${type.method}(${varName})`;
    }

    // Returns the expression which encodes a message
    private encodeMessage(
        field: decorated.FieldMessage | decorated.FieldMessageRepeated,
        varName: string
    ): string {
        return `
            const messageSize = ${varName}.size()

            if (messageSize > 0) {
                ${this.tag(field)}
                ${this.length('messageSize')}
                ${varName}.encodeU8Array(encoder);
            }
        `;
    }

    // Returns the expression which encodes an elementary value
    private encodeElementary(
        field: decorated.FieldElementary | decorated.FieldElementaryRepeated,
        type: TypeInfo,
        varName: string,
        tag = true, // Encode tag (false for packed collection element)
        skipZeroValue = true, // Skip encoding zero values (false for packed collection elements)
    ): string {
        const el = [];
        const encodeVar = this.value(type, varName);

        if (tag) {
            el.push(this.tag(field));
        }

        if (field.isCollection) {
            el.push(this.length(`${varName}.length`));
            el.push(encodeVar);

            if (skipZeroValue) {
                return `if (${varName}.length > 0) { ${el.join('; ')} }`;
            }
            return el.join('; ');
        }

        el.push(encodeVar);

        return skipZeroValue ? `if (${varName} != 0) { ${el.join('; ')} }` : el.join('; ');
    }

    // Elementary non repeated
    private elementary(field: decorated.FieldElementary) {
        const type = getTypeInfo(field);
        const s = this.encodeElementary(field, type, `this.${field.name}`);
        if (s != '') {
            this.p(s);
        }
    }

    // Elementary repeated
    private elementaryRepeated(field: decorated.FieldElementaryRepeated) {
        const type = getTypeInfo(field);
        const f = `this.${field.name}`;

        this.p(`
            if (${f}.length > 0) {
                for (let n:i32 = 0; n < ${f}.length; n++) {
                    ${this.encodeElementary(field, type, `${f}[n]`, true, false)}
                }
            }
        `);
    }

    // Elementary repeated packed
    private elementaryRepeatedPacked(field: decorated.FieldElementaryRepeated) {
        const type = getTypeInfo(field);
        const f = `this.${field.name}`;

        this.p(`
            if (${f}.length > 0) {
                ${this.tag(field)}
                ${this.length(`__size_${type.method}_repeated_packed(${f})`)}

                for (let n:i32 = 0; n < ${f}.length; n++) {
                    ${this.encodeElementary(field, type, `${f}[n]`, false, false)}
                }
            }
        `);
    }

    // Message
    private message(field: decorated.FieldMessage) {
        const type = getTypeInfo(field);
        this.p(`
            if (this.${field.name} != null) {
                const f = this.${field.name} as ${type.typeName};
                ${this.encodeMessage(field, 'f')}
            }
        `);
    }

    // Message repeated
    private messageRepeated(field: decorated.FieldMessageRepeated) {
        const f = `this.${field.name}`;

        this.p(`
            for (let n:i32 = 0; n < ${f}.length; n++) {
                ${this.encodeMessage(field, `${f}[n]`)}
            }
        `);
    }

    // Map
    private map(field: decorated.FieldMap | decorated.FieldMapMessage) {
        const f = `this.${field.name}`;
        const type = getTypeInfo(field) as TypeInfo;
        const sizeMethodName = `__sizeMapEntry_${relativeName(type.keyTypeInfo?.typeName as string)}_${relativeName(type.valueTypeInfo?.typeName as string)}`;

        const encodeValue =
            field.value.kind == 'field_elementary'
                ? this.encodeElementary(field.value, type.valueTypeInfo as TypeInfo, 'value')
                : this.encodeMessage(field.value, 'value');

        this.p(`
            if (${f}.size > 0) {
                const keys = ${f}.keys();
                for (let i = 0; i < keys.length; i++) {
                    const key = keys[i]
                    const value = ${f}.get(key)
                    const size = ${sizeMethodName}(key, value);
                    if (size > 0) {
                        ${this.tag(field)}
                        ${this.length('size')}
                        ${this.encodeElementary(
                            field.key,
                            type.keyTypeInfo as TypeInfo,
                            'key',
                        )}
                        ${encodeValue}
                    }
                }
            }
        `);
    }
}
