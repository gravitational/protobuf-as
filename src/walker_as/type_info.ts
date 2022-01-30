import { FieldDescriptorProto_Type } from 'ts-proto-descriptors';
import { decorated } from '../proto';
import { absoluteName } from './internal';

// AssemblyScript types for the corresponding proto types
const types = new Map<FieldDescriptorProto_Type, string>([
    [FieldDescriptorProto_Type.TYPE_DOUBLE, 'f64'],
    [FieldDescriptorProto_Type.TYPE_FLOAT, 'f32'],
    [FieldDescriptorProto_Type.TYPE_INT32, 'i32'],
    [FieldDescriptorProto_Type.TYPE_UINT32, 'u32'],
    [FieldDescriptorProto_Type.TYPE_SINT32, 'i32'],
    [FieldDescriptorProto_Type.TYPE_FIXED32, 'u32'],
    [FieldDescriptorProto_Type.TYPE_SFIXED32, 'i32'],
    [FieldDescriptorProto_Type.TYPE_INT64, 'i64'],
    [FieldDescriptorProto_Type.TYPE_UINT64, 'u64'],
    [FieldDescriptorProto_Type.TYPE_SINT64, 'i64'],
    [FieldDescriptorProto_Type.TYPE_FIXED64, 'u64'],
    [FieldDescriptorProto_Type.TYPE_SFIXED64, 'i64'],
    [FieldDescriptorProto_Type.TYPE_BOOL, 'bool'],
    [FieldDescriptorProto_Type.TYPE_STRING, 'string'],
    [FieldDescriptorProto_Type.TYPE_BYTES, 'Array<u8>'],
    [FieldDescriptorProto_Type.TYPE_ENUM, 'u32'],
]);

// List of defaults for the types
const defaults = new Map<FieldDescriptorProto_Type, string>([
    [FieldDescriptorProto_Type.TYPE_STRING, "''"],
    [FieldDescriptorProto_Type.TYPE_BYTES, "new Array<u8>()"]
]);

// Decoder methods
const methods = new Map<FieldDescriptorProto_Type, string>([
    [FieldDescriptorProto_Type.TYPE_DOUBLE, 'double'],
    [FieldDescriptorProto_Type.TYPE_FLOAT, 'float'],
    [FieldDescriptorProto_Type.TYPE_INT32, 'int32'],
    [FieldDescriptorProto_Type.TYPE_UINT32, 'uint32'],
    [FieldDescriptorProto_Type.TYPE_SINT32, 'sint32'],
    [FieldDescriptorProto_Type.TYPE_FIXED32, 'fixed32'],
    [FieldDescriptorProto_Type.TYPE_SFIXED32, 'sfixed32'],
    [FieldDescriptorProto_Type.TYPE_INT64, 'int64'],
    [FieldDescriptorProto_Type.TYPE_UINT64, 'uint64'],
    [FieldDescriptorProto_Type.TYPE_SINT64, 'sint64'],
    [FieldDescriptorProto_Type.TYPE_FIXED64, 'fixed64'],
    [FieldDescriptorProto_Type.TYPE_SFIXED64, 'sfixed64'],
    [FieldDescriptorProto_Type.TYPE_BOOL, 'bool'],
    [FieldDescriptorProto_Type.TYPE_STRING, 'string'],
    [FieldDescriptorProto_Type.TYPE_BYTES, 'bytes'],
    [FieldDescriptorProto_Type.TYPE_ENUM, 'uint32'],
]);

// Size of a fixed types
const fixedSizes = new Map<FieldDescriptorProto_Type, number>([
    [FieldDescriptorProto_Type.TYPE_DOUBLE, 8],
    [FieldDescriptorProto_Type.TYPE_FLOAT, 4],
    [FieldDescriptorProto_Type.TYPE_FIXED32, 4],
    [FieldDescriptorProto_Type.TYPE_SFIXED32, 4],
    [FieldDescriptorProto_Type.TYPE_FIXED64, 8],
    [FieldDescriptorProto_Type.TYPE_SFIXED64, 8],
    [FieldDescriptorProto_Type.TYPE_BOOL, 1],

])

// TypeInfo is the helper struct which stores AS field type information
export type TypeInfo = {
    typeName?: string; // Type name
    collectionTypeName?: string; // Collection type name (Array<> or Map<>)
    default?: string; // Default value
    method?: string; // Decoder/Encoder/Sizer method name
    keyTypeInfo?: TypeInfo, // Key type info for a map key
    valueTypeInfo?: TypeInfo, // Value type info for a map value
    fixedSize?: number,
};

/**
 * Returns field type information required for AS definition/initialization.
 * @param field DecoratedField
 * @returns TypeInfo struct
 */
export function getTypeInfo(type: decorated.Field): TypeInfo {
    switch (type.kind) {
        case "field_elementary":
        case "field_elementary_repeated": {
            const typeName = types.get(type.type);
            const elementaryBase = {
                typeName,
                method: methods.get(type.type),
                fixedSize: fixedSizes.get(type.type),
            }

            if (type.kind == "field_elementary") {
                return {...elementaryBase,  default: defaults.get(type.type) }
            }
        
            return { ...elementaryBase, collectionTypeName: `Array<${typeName}>` }
        }
        case "field_message":            
        case "field_message_repeated": {
            const typeName = absoluteName(type.typeName)
            return {
                typeName,
                collectionTypeName: `Array<${typeName}>`
            }
        }

        case "field_map":
        case "field_map_message": {
            const keyTypeInfo = getTypeInfo(type.key)
            const valueTypeInfo = getTypeInfo(type.value)

            return {
                collectionTypeName: `Map<${keyTypeInfo.typeName}, ${valueTypeInfo.typeName}>`,
                keyTypeInfo,
                valueTypeInfo,
            }
        }
    }
}
