import * as proto from 'ts-proto-descriptors';
import { AbstractDescriptorCollection } from '.';

// Descriptor ID and namespace
export type Id = {
    id: string;        // Unique name in hierarchy
    namespace: string; // Namespace name
};

export type Comment = {
    comment: string;   // Comment from the source code
};

// Namespace
export type Namespace = Id & {
    kind: 'namespace';
    name: string;
};

// Enum
export type Enum = Id & Comment & {
    kind: 'enum';
    desc: proto.EnumDescriptorProto;
};

// Enum value
export type EnumValue = Id & Comment & {
    kind: 'enum_value';
    desc: proto.EnumValueDescriptorProto;
};

// Message
export type Message = Id & Comment & {
    kind: 'message';
    desc: proto.DescriptorProto;
};

// Field
export type Field = Id & Comment & {
    kind: 'field';
    desc: proto.FieldDescriptorProto;
    hasOne?: string; // Descriptor ID this field references, if any
};

// Descriptor is a wrapper over standard protobuf descriptor with global id. It transforms to DecoratedDescriptor.
export type Descriptor = Namespace | Enum | EnumValue | Message | Field;

export type DescriptorCollection = AbstractDescriptorCollection<Descriptor>;

// Removes leading and trailing dots in an id
export function normalize(name: string) {
    return name.replace(/[.]+/g, '.').replace(/^\./, '');
}
