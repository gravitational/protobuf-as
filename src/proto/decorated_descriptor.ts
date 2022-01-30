import { FieldDescriptorProto_Type } from 'ts-proto-descriptors';
import { AbstractDescriptorCollection } from '.';

// Protobuf wire type
export enum WireType {
    VARINT = 0,
    FIXED64 = 1,
    LENGTH_DELIMITED = 2,
    FIXED32 = 5,
}

// Has wire type
export type WireTypeable = {
    wireType: WireType;
};

// Has deprecated flag
export type Depricable = {
    deprecated: boolean;
};

// Has field index
export type Numbered = {
    number: number;
};

export type Commented = {
    comment: string;
};

// Has name
export type Named = {
    id: string; // ID (including namespace, absolute)
    name: string; // Name
    namespace: string; // Namespace
    relativeName: string; // Name relative to current namespace
};

// Namespace
export type Namespace = Named & {
    kind: 'namespace';
};

// Enum
export type Enum = Depricable &
    Named & Commented & {
        kind: 'enum';
    };

// EnumValue
export type EnumValue = Depricable &
    Named & Commented & {
        kind: 'enum_value';
        number: number;
    };

// Message
export type Message = Depricable &
    Named & Commented & {
        kind: 'message';
        mapHelper: boolean; // This message represents an artificial type of map entry [key, value]
    };

// Elementary field
export type FieldElementary = Depricable &
    Named &
    Numbered &
    Commented & 
    WireTypeable & {
        kind: 'field_elementary';
        type: FieldDescriptorProto_Type;
        isCollection: boolean;
    };

// Repeated elementary field
export type FieldElementaryRepeated = Depricable &
    Named &
    Numbered &
    Commented & 
    WireTypeable & {
        kind: 'field_elementary_repeated';
        type: FieldDescriptorProto_Type;
        packed: boolean;
        isCollection: boolean;
    };

// Message field
export type FieldMessage = Depricable &
    Named &
    Numbered &
    Commented & 
    WireTypeable & {
        kind: 'field_message';
        typeName: Named;
        withinOneOf: boolean;
    };

// Repeated message field
export type FieldMessageRepeated = Depricable &
    Named &
    Numbered &
    Commented & 
    WireTypeable & {
        kind: 'field_message_repeated';
        typeName: Named;
    };

// Map field
export type FieldMap = Depricable &
    Named &
    Numbered &
    Commented & 
    WireTypeable & {
        kind: 'field_map';
        key: FieldElementary;
        value: FieldElementary;
        mapHelperMessage: Named;
    };

// Message map field
export type FieldMapMessage = Depricable &
    Named &
    Numbered &
    Commented & 
    WireTypeable & {
        kind: 'field_map_message';
        key: FieldElementary;
        value: FieldMessage;
        mapHelperMessage: Named;
    };

// Any field
export type Field =
    | FieldElementary
    | FieldElementaryRepeated
    | FieldMessage
    | FieldMessageRepeated
    | FieldMap
    | FieldMapMessage;

// Decorated descriptor is a descriptor with global id and basic field type information which has no implementation
// details of a target language.
export type Descriptor = Namespace | Enum | EnumValue | Message | Field;

// Decorated descriptor collection
export type DescriptorCollection = AbstractDescriptorCollection<Descriptor>;

// Descriptor is any field
export function isField(field: Descriptor): field is Field {
    return field.kind.startsWith('field_');
}

// Descriptor is elementary field
export function isElementary(field: Field): field is FieldElementary {
    return field.kind == 'field_elementary';
}

// Descriptor is message field
export function isMessage(field: Field): field is FieldMessage {
    return field.kind == 'field_message';
}

// Descriptor is any map field
export function isAnyMap(field: Field): field is (FieldMap | FieldMapMessage) {
    return field.kind == 'field_map' || field.kind == 'field_map_message';
}
