import { decorated } from '../proto';
import { Blocks } from "./blocks";
import { Writer, GlobalsRegistry } from './walker_as';
import { relativeName } from './internal';
import { Field } from "./field";
import { Message } from "./message";
import { Options } from "../options";
import { getTypeInfo, TypeInfo } from './type_info';

/**
 * Generates decode() method
 */
export class Decode {
    private decoder = 'Decoder';

    constructor(private p: Writer, private globals: GlobalsRegistry, private options:Options) {
        if (this.options.deps == "embed") {
            this.decoder = [Blocks.embedNamespace, "Decoder"].join(".");
        }
    }

    start(message: decorated.Message) {
        const t = relativeName(message.relativeName);

        this.p(`  
            // Decodes ${t} from an ArrayBuffer
            static decodeArrayBuffer(buf: ArrayBuffer):${t} {
                return ${t}.decode(new DataView(buf))
            }
            
            // Decodes ${t} from a DataView
            static decode(view: DataView): ${t} {
                const decoder = new ${this.decoder}(view);
                const obj = new ${t}();
        `);
    }

    begin() {
        this.p(this.beginMessageDecode());
    }

    end() {
        this.p(`
            ${this.endMessageDecode()}
            return obj;
        `);
    }

    finish(message: decorated.Message) {
        this.p(`
            } // decode ${relativeName(message.relativeName)}
        `);
    }

    field(field: decorated.Field) {
        const type = getTypeInfo(field);

        this.p(`case ${field.number}: {`);

        switch(field.kind) {
            case "field_elementary":
                this.elementary(field, type)
                break;
            case "field_elementary_repeated":
                if (field.packed) {
                    this.repeatedElementaryPacked(field, type)
                } else {
                    this.repeatedElementary(field, type)                    
                }
                break;
            case "field_message":
                this.message(field, type)
                break;
            case "field_message_repeated":
                this.repeatedMessage(field, type)
                break;
            case "field_map":
                this.map(field, type)
                break;
            case "field_map_message":
                this.map(field, type)
                break;
        }

        if (decorated.isElementary(field) || decorated.isMessage(field) || decorated.isAnyMap(field)) {
            if (field.oneOf != undefined) {
                this.p(`obj.${Message.oneOfVarName(field.oneOf)} = "${field.name}";`)
            }
        }

        this.p(`break;
            }`);
    }

    private elementary(field: decorated.Field, type: TypeInfo) {
        this.p(`obj.${field.name} = ${this.decodeElementary(type)};`);
    }

    private repeatedElementary(field: decorated.Field, type: TypeInfo) {
        this.p(`obj.${field.name}.push(decoder.${type.method}());`)
    }

    private repeatedElementaryPacked(field: decorated.Field, type: TypeInfo) {
        this.p(`
            const endPos = decoder.pos + decoder.uint32();
            while (decoder.pos <= endPos) {
                obj.${field.name}.push(${this.decodeElementary(type)});
            }
        `)
    }

    private message(field: decorated.Field, type: TypeInfo) {
        this.p(this.decodeMessage(type, `obj.${field.name}`));
    }

    private repeatedMessage(field: decorated.Field, type: TypeInfo) {
        this.p(`
            ${this.readLength()}
            obj.${field.name}.push(${type.typeName}.decode(${this.newDataBuffer()}));
            ${this.skipLength()}
        `);
    }

    private map(field: decorated.FieldMap | decorated.FieldMapMessage, type: TypeInfo) {
        const decoderName = this.registerMapMethod(field, type);
        this.p(`
            ${this.readLength()}
            ${decoderName}(decoder, length, obj.${field.name})
            ${this.skipLength()}
        `)
    }

    private beginMessageDecode(): string {
        return `
            while (!decoder.eof()) {
                const tag = decoder.tag();
                const number = tag >>> 3
                
                switch(number) {`;
    }

    private endMessageDecode(): string {
        return `                    
                default:
                    decoder.skipType(tag & 7);
                    break;
                }
            }`;
    }

    private newDataBuffer(parentDecoder = "decoder"): string {
        return `new DataView(${parentDecoder}.view.buffer, ${parentDecoder}.pos+${parentDecoder}.view.byteOffset, length)`;
    }

    private readLength():string {
        return `const length = decoder.uint32();`;
    }

    private skipLength(): string {
        return `decoder.skip(length);`;
    }

    private decodeElementary(type: TypeInfo): string {
        return `decoder.${type.method}()`
    }

    private decodeMessage(type: TypeInfo, varName: string): string {
        return (`
            ${this.readLength()}
            ${varName} = ${type.typeName}.decode(${this.newDataBuffer()})
            ${this.skipLength()}
        `);
    }

    private registerMapMethod(field: decorated.FieldMap | decorated.FieldMapMessage, type: TypeInfo):string {
        const mapTypeName = getTypeInfo(field).collectionTypeName
        const keyTypeInfo = type.keyTypeInfo as TypeInfo
        const valueTypeInfo = type.valueTypeInfo as TypeInfo
        const name = `__decodeMap_${relativeName(keyTypeInfo.typeName as string)}_${relativeName(valueTypeInfo.typeName as string)}`;

        const decodeValue = field.kind == "field_map" ? `value = ${this.decodeElementary(valueTypeInfo)};` : this.decodeMessage(valueTypeInfo, "value");

        this.globals.registerGlobal(name, `
            function ${name}(parentDecoder: ${this.decoder}, length: i32, map: ${mapTypeName}):void {
                const decoder = new ${this.decoder}(${this.newDataBuffer("parentDecoder")});
                
                let key:${Field.typeDecl(field.key, keyTypeInfo, this.options)};
                let value:${Field.typeDecl(field.value, valueTypeInfo, this.options)};
        
                ${this.beginMessageDecode()}
                case 1: {
                    key = ${this.decodeElementary(keyTypeInfo)};
                    break;
                }

                case 2: {
                    ${decodeValue}
                    break;
                }
                ${this.endMessageDecode()}
                map.set(key as ${keyTypeInfo.typeName}, value as ${type.valueTypeInfo?.typeName});    
            }
        `)

        return name;
    }
}
