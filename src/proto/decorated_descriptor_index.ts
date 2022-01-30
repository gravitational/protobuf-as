import * as decorated from './decorated_descriptor';
import * as named from './named_descriptor';

import {
    FieldDescriptorProto_Label,
    FieldDescriptorProto_Type,
    FieldDescriptorProto,
} from 'ts-proto-descriptors';

// Types that can't have the [packed=true] flag, used for guessing when packed is undefined explicitly.
const typesCantBePacked = [
    FieldDescriptorProto_Type.TYPE_BYTES,
    FieldDescriptorProto_Type.TYPE_GROUP,
    FieldDescriptorProto_Type.TYPE_MESSAGE,
    FieldDescriptorProto_Type.TYPE_STRING,
];

// Type to wire type map
const wireTypes = new Map<FieldDescriptorProto_Type, number>([
    [FieldDescriptorProto_Type.TYPE_DOUBLE, decorated.WireType.FIXED64],
    [FieldDescriptorProto_Type.TYPE_FLOAT, decorated.WireType.FIXED32],
    [FieldDescriptorProto_Type.TYPE_INT32, decorated.WireType.VARINT],
    [FieldDescriptorProto_Type.TYPE_UINT32, decorated.WireType.VARINT],
    [FieldDescriptorProto_Type.TYPE_SINT32, decorated.WireType.VARINT],
    [FieldDescriptorProto_Type.TYPE_FIXED32, decorated.WireType.FIXED32],
    [FieldDescriptorProto_Type.TYPE_SFIXED32, decorated.WireType.FIXED32],
    [FieldDescriptorProto_Type.TYPE_INT64, decorated.WireType.VARINT],
    [FieldDescriptorProto_Type.TYPE_UINT64, decorated.WireType.VARINT],
    [FieldDescriptorProto_Type.TYPE_SINT64, decorated.WireType.VARINT],
    [FieldDescriptorProto_Type.TYPE_FIXED64, decorated.WireType.FIXED64],
    [FieldDescriptorProto_Type.TYPE_SFIXED64, decorated.WireType.FIXED64],
    [FieldDescriptorProto_Type.TYPE_BOOL, decorated.WireType.VARINT],
    [
        FieldDescriptorProto_Type.TYPE_STRING,
        decorated.WireType.LENGTH_DELIMITED,
    ],
    [FieldDescriptorProto_Type.TYPE_BYTES, decorated.WireType.LENGTH_DELIMITED],
    [FieldDescriptorProto_Type.TYPE_ENUM, decorated.WireType.VARINT],
]);

/**
 * Represents the index of decorated protobuf descriptors from a collection of a named descriptors.
 * Decorated descriptor represents proto descriptor with additional metadata required for code generation.
 */
export class DecoratedDescriptorIndex
    implements decorated.DescriptorCollection
{
    private index: Map<string, decorated.Descriptor>;

    /**
     * Builds decorated descriptor index
     * @param index Descriptor collection
     */
    constructor(index: named.DescriptorCollection) {
        this.index = new Map<string, decorated.Descriptor>();

        for (const value of index.values()) {
            this.index.set(
                value.id,
                this.createDecoratedDescriptor(value, index),
            );
        }
    }

    values(): ReadonlyArray<decorated.Descriptor> {
        return Array.from(this.index.values());
    }

    get(key: string): decorated.Descriptor {
        return this.index.get(key);
    }

    private createDecoratedDescriptor(
        value: named.Descriptor,
        index: named.DescriptorCollection,
    ): decorated.Descriptor {
        switch (value.kind) {
            case 'namespace':
                return this.createNamespace(value);
            case 'enum':
                return this.createEnum(value);
            case 'enum_value':
                return this.createEnumValue(value);
            case 'message':
                return this.createMessage(value);
            case 'field':
                return this.createField(value, index);
        }
    }

    private createNamespace(d: named.Namespace): decorated.Namespace {
        return { kind: 'namespace', ...this.relativeName(d), name: d.name };
    }

    private createEnum(d: named.Enum): decorated.Enum {
        return {
            ...this.relativeName(d),
            kind: d.kind,
            deprecated: d.desc.options?.deprecated,
            comment: d.comment,
        };
    }

    private createEnumValue(d: named.EnumValue): decorated.EnumValue {
        return {
            ...this.relativeName(d),
            kind: d.kind,
            number: d.desc.number,
            deprecated: d.desc.options?.deprecated,
            comment: d.comment,
        };
    }

    private createMessage(d: named.Message): decorated.Message {
        return {
            ...this.relativeName(d),
            kind: d.kind,
            deprecated: d.desc.options?.deprecated,
            mapHelper: d.desc.options?.mapEntry,
            comment: d.comment,
        };
    }

    private createField(
        d: named.Field,
        index: named.DescriptorCollection,
    ): decorated.Field {
        const isMessage = d.desc.type == FieldDescriptorProto_Type.TYPE_MESSAGE;
        const message = isMessage
            ? <named.Message>index.get(named.normalize(d.desc.typeName))
            : null;
        const isMap = message?.desc?.options?.mapEntry;
        const isRepeated = this.isRepeated(d);
        const deprecated = d.desc.options?.deprecated;
        const number = d.desc.number;

        const fieldBase = {
            ...this.relativeName(d),
            number,
            deprecated,
            type: d.desc.type,
            comment: d.comment,
        };

        if (isMap) {
            const key = this.createField(
                <named.Field>index.get(message.id + '.key'),
                index,
            );
            const value = this.createField(
                <named.Field>index.get(message.id + '.value'),
                index,
            );
            const mapHelperMessage = this.relativeName(message);

            if (decorated.isElementary(key)) {
                const mapBase = { key, mapHelperMessage };

                if (decorated.isMessage(value)) {
                    return {
                        kind: 'field_map_message',
                        ...fieldBase,
                        ...mapBase,
                        value,
                        wireType: decorated.WireType.LENGTH_DELIMITED,
                    };
                } else if (decorated.isElementary(value)) {
                    return {
                        kind: 'field_map',
                        ...fieldBase,
                        ...mapBase,
                        value,
                        wireType: decorated.WireType.LENGTH_DELIMITED,
                    };
                }
            }
        } else if (isMessage) {
            const typeName = this.relativeName(
                index.get(named.normalize(d.desc.typeName)),
            )

            if (isRepeated) {
                return {
                    kind: 'field_message_repeated',
                    ...fieldBase,
                    typeName,
                    wireType: decorated.WireType.LENGTH_DELIMITED,
                };
            } else {
                return {
                    kind: 'field_message', 
                    ...fieldBase, 
                    typeName, 
                    wireType: decorated.WireType.LENGTH_DELIMITED,
                    withinOneOf: this.isWithinOneOf(d.desc),
                };
            }
        }

        const isCollection = [
            FieldDescriptorProto_Type.TYPE_STRING, FieldDescriptorProto_Type.TYPE_BYTES
        ].includes(d.desc.type)

        if (isRepeated) {
            return {
                kind: 'field_elementary_repeated',
                ...fieldBase,
                packed: this.isPacked(d),
                wireType: decorated.WireType.LENGTH_DELIMITED,
                isCollection,
            };
        }

        const wireType = wireTypes.get(d.desc.type);

        return { kind: 'field_elementary', ...fieldBase, wireType, isCollection };
    }

    private isRepeated(d: named.Field): boolean {
        return d.desc.label == FieldDescriptorProto_Label.LABEL_REPEATED;
    }

    private isPacked(d: named.Field): boolean {
        if (d.desc.options?.packed != undefined) {
            return this.isRepeated(d) && d.desc.options?.packed;
        }

        // By default [packed=true] unless otherwise specified.
        return this.isRepeated(d) && !typesCantBePacked.includes(d.desc.type);
    }

    private isWithinOneOf(field: FieldDescriptorProto): boolean {
        // please refer to ts-proto
        return Object.prototype.hasOwnProperty.call(field, 'oneofIndex');
    }
    

    private relativeName(value: named.Id): decorated.Named {
        const name = value.id.substring(value.id.lastIndexOf('.') + 1);
        const relativeName = named.normalize(
            value.id.substring(value.namespace.length),
        );

        return { id: value.id, name, relativeName, namespace: value.namespace };
    }
}
