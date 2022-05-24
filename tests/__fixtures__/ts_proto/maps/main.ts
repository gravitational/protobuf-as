/* eslint-disable */
import Long from 'long';
import _m0 from 'protobufjs/minimal.js';
import { MapValue } from './external.js';

export const protobufPackage = '';

export interface Value {
    Int32s: number[];
}

export interface Maps {
    StringStringMap: { [key: string]: string };
    StringInt32Map: { [key: string]: number };
    Int32StringMap: { [key: number]: string };
    StringValueMap: { [key: string]: Value };
    StringExternalMapValue: { [key: string]: MapValue };
}

export interface Maps_StringStringMapEntry {
    key: string;
    value: string;
}

export interface Maps_StringInt32MapEntry {
    key: string;
    value: number;
}

export interface Maps_Int32StringMapEntry {
    key: number;
    value: string;
}

export interface Maps_StringValueMapEntry {
    key: string;
    value: Value | undefined;
}

export interface Maps_StringExternalMapValueEntry {
    key: string;
    value: MapValue | undefined;
}

function createBaseValue(): Value {
    return { Int32s: [] };
}

export const Value = {
    encode(
        message: Value,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        writer.uint32(10).fork();
        for (const v of message.Int32s) {
            writer.int32(v);
        }
        writer.ldelim();
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): Value {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseValue();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if ((tag & 7) === 2) {
                        const end2 = reader.uint32() + reader.pos;
                        while (reader.pos < end2) {
                            message.Int32s.push(reader.int32());
                        }
                    } else {
                        message.Int32s.push(reader.int32());
                    }
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Value {
        return {
            Int32s: Array.isArray(object?.Int32s)
                ? object.Int32s.map((e: any) => Number(e))
                : [],
        };
    },

    toJSON(message: Value): unknown {
        const obj: any = {};
        if (message.Int32s) {
            obj.Int32s = message.Int32s.map((e) => Math.round(e));
        } else {
            obj.Int32s = [];
        }
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Value>, I>>(object: I): Value {
        const message = createBaseValue();
        message.Int32s = object.Int32s?.map((e) => e) || [];
        return message;
    },
};

function createBaseMaps(): Maps {
    return {
        StringStringMap: {},
        StringInt32Map: {},
        Int32StringMap: {},
        StringValueMap: {},
        StringExternalMapValue: {},
    };
}

export const Maps = {
    encode(
        message: Maps,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        Object.entries(message.StringStringMap).forEach(([key, value]) => {
            Maps_StringStringMapEntry.encode(
                { key: key as any, value },
                writer.uint32(10).fork(),
            ).ldelim();
        });
        Object.entries(message.StringInt32Map).forEach(([key, value]) => {
            Maps_StringInt32MapEntry.encode(
                { key: key as any, value },
                writer.uint32(18).fork(),
            ).ldelim();
        });
        Object.entries(message.Int32StringMap).forEach(([key, value]) => {
            Maps_Int32StringMapEntry.encode(
                { key: key as any, value },
                writer.uint32(26).fork(),
            ).ldelim();
        });
        Object.entries(message.StringValueMap).forEach(([key, value]) => {
            Maps_StringValueMapEntry.encode(
                { key: key as any, value },
                writer.uint32(34).fork(),
            ).ldelim();
        });
        Object.entries(message.StringExternalMapValue).forEach(
            ([key, value]) => {
                Maps_StringExternalMapValueEntry.encode(
                    { key: key as any, value },
                    writer.uint32(42).fork(),
                ).ldelim();
            },
        );
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): Maps {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseMaps();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    const entry1 = Maps_StringStringMapEntry.decode(
                        reader,
                        reader.uint32(),
                    );
                    if (entry1.value !== undefined) {
                        message.StringStringMap[entry1.key] = entry1.value;
                    }
                    break;
                case 2:
                    const entry2 = Maps_StringInt32MapEntry.decode(
                        reader,
                        reader.uint32(),
                    );
                    if (entry2.value !== undefined) {
                        message.StringInt32Map[entry2.key] = entry2.value;
                    }
                    break;
                case 3:
                    const entry3 = Maps_Int32StringMapEntry.decode(
                        reader,
                        reader.uint32(),
                    );
                    if (entry3.value !== undefined) {
                        message.Int32StringMap[entry3.key] = entry3.value;
                    }
                    break;
                case 4:
                    const entry4 = Maps_StringValueMapEntry.decode(
                        reader,
                        reader.uint32(),
                    );
                    if (entry4.value !== undefined) {
                        message.StringValueMap[entry4.key] = entry4.value;
                    }
                    break;
                case 5:
                    const entry5 = Maps_StringExternalMapValueEntry.decode(
                        reader,
                        reader.uint32(),
                    );
                    if (entry5.value !== undefined) {
                        message.StringExternalMapValue[entry5.key] =
                            entry5.value;
                    }
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Maps {
        return {
            StringStringMap: isObject(object.StringStringMap)
                ? Object.entries(object.StringStringMap).reduce<{
                      [key: string]: string;
                  }>((acc, [key, value]) => {
                      acc[key] = String(value);
                      return acc;
                  }, {})
                : {},
            StringInt32Map: isObject(object.StringInt32Map)
                ? Object.entries(object.StringInt32Map).reduce<{
                      [key: string]: number;
                  }>((acc, [key, value]) => {
                      acc[key] = Number(value);
                      return acc;
                  }, {})
                : {},
            Int32StringMap: isObject(object.Int32StringMap)
                ? Object.entries(object.Int32StringMap).reduce<{
                      [key: number]: string;
                  }>((acc, [key, value]) => {
                      acc[Number(key)] = String(value);
                      return acc;
                  }, {})
                : {},
            StringValueMap: isObject(object.StringValueMap)
                ? Object.entries(object.StringValueMap).reduce<{
                      [key: string]: Value;
                  }>((acc, [key, value]) => {
                      acc[key] = Value.fromJSON(value);
                      return acc;
                  }, {})
                : {},
            StringExternalMapValue: isObject(object.StringExternalMapValue)
                ? Object.entries(object.StringExternalMapValue).reduce<{
                      [key: string]: MapValue;
                  }>((acc, [key, value]) => {
                      acc[key] = MapValue.fromJSON(value);
                      return acc;
                  }, {})
                : {},
        };
    },

    toJSON(message: Maps): unknown {
        const obj: any = {};
        obj.StringStringMap = {};
        if (message.StringStringMap) {
            Object.entries(message.StringStringMap).forEach(([k, v]) => {
                obj.StringStringMap[k] = v;
            });
        }
        obj.StringInt32Map = {};
        if (message.StringInt32Map) {
            Object.entries(message.StringInt32Map).forEach(([k, v]) => {
                obj.StringInt32Map[k] = Math.round(v);
            });
        }
        obj.Int32StringMap = {};
        if (message.Int32StringMap) {
            Object.entries(message.Int32StringMap).forEach(([k, v]) => {
                obj.Int32StringMap[k] = v;
            });
        }
        obj.StringValueMap = {};
        if (message.StringValueMap) {
            Object.entries(message.StringValueMap).forEach(([k, v]) => {
                obj.StringValueMap[k] = Value.toJSON(v);
            });
        }
        obj.StringExternalMapValue = {};
        if (message.StringExternalMapValue) {
            Object.entries(message.StringExternalMapValue).forEach(([k, v]) => {
                obj.StringExternalMapValue[k] = MapValue.toJSON(v);
            });
        }
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Maps>, I>>(object: I): Maps {
        const message = createBaseMaps();
        message.StringStringMap = Object.entries(
            object.StringStringMap ?? {},
        ).reduce<{ [key: string]: string }>((acc, [key, value]) => {
            if (value !== undefined) {
                acc[key] = String(value);
            }
            return acc;
        }, {});
        message.StringInt32Map = Object.entries(
            object.StringInt32Map ?? {},
        ).reduce<{ [key: string]: number }>((acc, [key, value]) => {
            if (value !== undefined) {
                acc[key] = Number(value);
            }
            return acc;
        }, {});
        message.Int32StringMap = Object.entries(
            object.Int32StringMap ?? {},
        ).reduce<{ [key: number]: string }>((acc, [key, value]) => {
            if (value !== undefined) {
                acc[Number(key)] = String(value);
            }
            return acc;
        }, {});
        message.StringValueMap = Object.entries(
            object.StringValueMap ?? {},
        ).reduce<{ [key: string]: Value }>((acc, [key, value]) => {
            if (value !== undefined) {
                acc[key] = Value.fromPartial(value);
            }
            return acc;
        }, {});
        message.StringExternalMapValue = Object.entries(
            object.StringExternalMapValue ?? {},
        ).reduce<{ [key: string]: MapValue }>((acc, [key, value]) => {
            if (value !== undefined) {
                acc[key] = MapValue.fromPartial(value);
            }
            return acc;
        }, {});
        return message;
    },
};

function createBaseMaps_StringStringMapEntry(): Maps_StringStringMapEntry {
    return { key: '', value: '' };
}

export const Maps_StringStringMapEntry = {
    encode(
        message: Maps_StringStringMapEntry,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== '') {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== '') {
            writer.uint32(18).string(message.value);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): Maps_StringStringMapEntry {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseMaps_StringStringMapEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.key = reader.string();
                    break;
                case 2:
                    message.value = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Maps_StringStringMapEntry {
        return {
            key: isSet(object.key) ? String(object.key) : '',
            value: isSet(object.value) ? String(object.value) : '',
        };
    },

    toJSON(message: Maps_StringStringMapEntry): unknown {
        const obj: any = {};
        message.key !== undefined && (obj.key = message.key);
        message.value !== undefined && (obj.value = message.value);
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Maps_StringStringMapEntry>, I>>(
        object: I,
    ): Maps_StringStringMapEntry {
        const message = createBaseMaps_StringStringMapEntry();
        message.key = object.key ?? '';
        message.value = object.value ?? '';
        return message;
    },
};

function createBaseMaps_StringInt32MapEntry(): Maps_StringInt32MapEntry {
    return { key: '', value: 0 };
}

export const Maps_StringInt32MapEntry = {
    encode(
        message: Maps_StringInt32MapEntry,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== '') {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== 0) {
            writer.uint32(16).int32(message.value);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): Maps_StringInt32MapEntry {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseMaps_StringInt32MapEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.key = reader.string();
                    break;
                case 2:
                    message.value = reader.int32();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Maps_StringInt32MapEntry {
        return {
            key: isSet(object.key) ? String(object.key) : '',
            value: isSet(object.value) ? Number(object.value) : 0,
        };
    },

    toJSON(message: Maps_StringInt32MapEntry): unknown {
        const obj: any = {};
        message.key !== undefined && (obj.key = message.key);
        message.value !== undefined && (obj.value = Math.round(message.value));
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Maps_StringInt32MapEntry>, I>>(
        object: I,
    ): Maps_StringInt32MapEntry {
        const message = createBaseMaps_StringInt32MapEntry();
        message.key = object.key ?? '';
        message.value = object.value ?? 0;
        return message;
    },
};

function createBaseMaps_Int32StringMapEntry(): Maps_Int32StringMapEntry {
    return { key: 0, value: '' };
}

export const Maps_Int32StringMapEntry = {
    encode(
        message: Maps_Int32StringMapEntry,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== 0) {
            writer.uint32(8).int32(message.key);
        }
        if (message.value !== '') {
            writer.uint32(18).string(message.value);
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): Maps_Int32StringMapEntry {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseMaps_Int32StringMapEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.key = reader.int32();
                    break;
                case 2:
                    message.value = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Maps_Int32StringMapEntry {
        return {
            key: isSet(object.key) ? Number(object.key) : 0,
            value: isSet(object.value) ? String(object.value) : '',
        };
    },

    toJSON(message: Maps_Int32StringMapEntry): unknown {
        const obj: any = {};
        message.key !== undefined && (obj.key = Math.round(message.key));
        message.value !== undefined && (obj.value = message.value);
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Maps_Int32StringMapEntry>, I>>(
        object: I,
    ): Maps_Int32StringMapEntry {
        const message = createBaseMaps_Int32StringMapEntry();
        message.key = object.key ?? 0;
        message.value = object.value ?? '';
        return message;
    },
};

function createBaseMaps_StringValueMapEntry(): Maps_StringValueMapEntry {
    return { key: '', value: undefined };
}

export const Maps_StringValueMapEntry = {
    encode(
        message: Maps_StringValueMapEntry,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== '') {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            Value.encode(message.value, writer.uint32(18).fork()).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): Maps_StringValueMapEntry {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseMaps_StringValueMapEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.key = reader.string();
                    break;
                case 2:
                    message.value = Value.decode(reader, reader.uint32());
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Maps_StringValueMapEntry {
        return {
            key: isSet(object.key) ? String(object.key) : '',
            value: isSet(object.value)
                ? Value.fromJSON(object.value)
                : undefined,
        };
    },

    toJSON(message: Maps_StringValueMapEntry): unknown {
        const obj: any = {};
        message.key !== undefined && (obj.key = message.key);
        message.value !== undefined &&
            (obj.value = message.value
                ? Value.toJSON(message.value)
                : undefined);
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Maps_StringValueMapEntry>, I>>(
        object: I,
    ): Maps_StringValueMapEntry {
        const message = createBaseMaps_StringValueMapEntry();
        message.key = object.key ?? '';
        message.value =
            object.value !== undefined && object.value !== null
                ? Value.fromPartial(object.value)
                : undefined;
        return message;
    },
};

function createBaseMaps_StringExternalMapValueEntry(): Maps_StringExternalMapValueEntry {
    return { key: '', value: undefined };
}

export const Maps_StringExternalMapValueEntry = {
    encode(
        message: Maps_StringExternalMapValueEntry,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.key !== '') {
            writer.uint32(10).string(message.key);
        }
        if (message.value !== undefined) {
            MapValue.encode(message.value, writer.uint32(18).fork()).ldelim();
        }
        return writer;
    },

    decode(
        input: _m0.Reader | Uint8Array,
        length?: number,
    ): Maps_StringExternalMapValueEntry {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseMaps_StringExternalMapValueEntry();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.key = reader.string();
                    break;
                case 2:
                    message.value = MapValue.decode(reader, reader.uint32());
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Maps_StringExternalMapValueEntry {
        return {
            key: isSet(object.key) ? String(object.key) : '',
            value: isSet(object.value)
                ? MapValue.fromJSON(object.value)
                : undefined,
        };
    },

    toJSON(message: Maps_StringExternalMapValueEntry): unknown {
        const obj: any = {};
        message.key !== undefined && (obj.key = message.key);
        message.value !== undefined &&
            (obj.value = message.value
                ? MapValue.toJSON(message.value)
                : undefined);
        return obj;
    },

    fromPartial<
        I extends Exact<DeepPartial<Maps_StringExternalMapValueEntry>, I>,
    >(object: I): Maps_StringExternalMapValueEntry {
        const message = createBaseMaps_StringExternalMapValueEntry();
        message.key = object.key ?? '';
        message.value =
            object.value !== undefined && object.value !== null
                ? MapValue.fromPartial(object.value)
                : undefined;
        return message;
    },
};

type Builtin =
    | Date
    | Function
    | Uint8Array
    | string
    | number
    | boolean
    | undefined;

export type DeepPartial<T> = T extends Builtin
    ? T
    : T extends Array<infer U>
    ? Array<DeepPartial<U>>
    : T extends ReadonlyArray<infer U>
    ? ReadonlyArray<DeepPartial<U>>
    : T extends { $case: string }
    ? { [K in keyof Omit<T, '$case'>]?: DeepPartial<T[K]> } & {
          $case: T['$case'];
      }
    : T extends {}
    ? { [K in keyof T]?: DeepPartial<T[K]> }
    : Partial<T>;

type KeysOfUnion<T> = T extends T ? keyof T : never;
export type Exact<P, I extends P> = P extends Builtin
    ? P
    : P & { [K in keyof P]: Exact<P[K], I[K]> } & Record<
              Exclude<keyof I, KeysOfUnion<P>>,
              never
          >;

if (_m0.util.Long !== Long) {
    _m0.util.Long = Long as any;
    _m0.configure();
}

function isObject(value: any): boolean {
    return typeof value === 'object' && value !== null;
}

function isSet(value: any): boolean {
    return value !== null && value !== undefined;
}
