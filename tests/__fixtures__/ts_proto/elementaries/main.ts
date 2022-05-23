/* eslint-disable */
import Long from 'long';
import _m0 from 'protobufjs/minimal.js';

export const protobufPackage = '';

export enum Enum {
    Zero = 0,
    One = 1,
    Two = 2,
    UNRECOGNIZED = -1,
}

export function enumFromJSON(object: any): Enum {
    switch (object) {
        case 0:
        case 'Zero':
            return Enum.Zero;
        case 1:
        case 'One':
            return Enum.One;
        case 2:
        case 'Two':
            return Enum.Two;
        case -1:
        case 'UNRECOGNIZED':
        default:
            return Enum.UNRECOGNIZED;
    }
}

export function enumToJSON(object: Enum): string {
    switch (object) {
        case Enum.Zero:
            return 'Zero';
        case Enum.One:
            return 'One';
        case Enum.Two:
            return 'Two';
        default:
            return 'UNKNOWN';
    }
}

export interface Elementaries {
    Double: number;
    Float: number;
    Int32: number;
    UInt32: number;
    SInt32: number;
    Fixed32: number;
    SFixed32: number;
    Int64: number;
    UInt64: number;
    SInt64: number;
    Fixed64: number;
    SFixed64: number;
    Bool: boolean;
    Enum: Enum;
    Bytes: Uint8Array;
    String: string;
    EmptyBytes: Uint8Array;
    EmptyString: string;
    EmptyInt64: number;
    EmptyInt32: number;
    EmptyBool: boolean;
}

function createBaseElementaries(): Elementaries {
    return {
        Double: 0,
        Float: 0,
        Int32: 0,
        UInt32: 0,
        SInt32: 0,
        Fixed32: 0,
        SFixed32: 0,
        Int64: 0,
        UInt64: 0,
        SInt64: 0,
        Fixed64: 0,
        SFixed64: 0,
        Bool: false,
        Enum: 0,
        Bytes: new Uint8Array(),
        String: '',
        EmptyBytes: new Uint8Array(),
        EmptyString: '',
        EmptyInt64: 0,
        EmptyInt32: 0,
        EmptyBool: false,
    };
}

export const Elementaries = {
    encode(
        message: Elementaries,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.Double !== 0) {
            writer.uint32(9).double(message.Double);
        }
        if (message.Float !== 0) {
            writer.uint32(21).float(message.Float);
        }
        if (message.Int32 !== 0) {
            writer.uint32(24).int32(message.Int32);
        }
        if (message.UInt32 !== 0) {
            writer.uint32(32).uint32(message.UInt32);
        }
        if (message.SInt32 !== 0) {
            writer.uint32(40).sint32(message.SInt32);
        }
        if (message.Fixed32 !== 0) {
            writer.uint32(53).fixed32(message.Fixed32);
        }
        if (message.SFixed32 !== 0) {
            writer.uint32(61).sfixed32(message.SFixed32);
        }
        if (message.Int64 !== 0) {
            writer.uint32(64).int64(message.Int64);
        }
        if (message.UInt64 !== 0) {
            writer.uint32(72).uint64(message.UInt64);
        }
        if (message.SInt64 !== 0) {
            writer.uint32(80).sint64(message.SInt64);
        }
        if (message.Fixed64 !== 0) {
            writer.uint32(89).fixed64(message.Fixed64);
        }
        if (message.SFixed64 !== 0) {
            writer.uint32(97).sfixed64(message.SFixed64);
        }
        if (message.Bool === true) {
            writer.uint32(104).bool(message.Bool);
        }
        if (message.Enum !== 0) {
            writer.uint32(112).int32(message.Enum);
        }
        if (message.Bytes.length !== 0) {
            writer.uint32(122).bytes(message.Bytes);
        }
        if (message.String !== '') {
            writer.uint32(130).string(message.String);
        }
        if (message.EmptyBytes.length !== 0) {
            writer.uint32(138).bytes(message.EmptyBytes);
        }
        if (message.EmptyString !== '') {
            writer.uint32(146).string(message.EmptyString);
        }
        if (message.EmptyInt64 !== 0) {
            writer.uint32(152).int64(message.EmptyInt64);
        }
        if (message.EmptyInt32 !== 0) {
            writer.uint32(160).int64(message.EmptyInt32);
        }
        if (message.EmptyBool === true) {
            writer.uint32(168).bool(message.EmptyBool);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): Elementaries {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseElementaries();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.Double = reader.double();
                    break;
                case 2:
                    message.Float = reader.float();
                    break;
                case 3:
                    message.Int32 = reader.int32();
                    break;
                case 4:
                    message.UInt32 = reader.uint32();
                    break;
                case 5:
                    message.SInt32 = reader.sint32();
                    break;
                case 6:
                    message.Fixed32 = reader.fixed32();
                    break;
                case 7:
                    message.SFixed32 = reader.sfixed32();
                    break;
                case 8:
                    message.Int64 = longToNumber(reader.int64() as Long);
                    break;
                case 9:
                    message.UInt64 = longToNumber(reader.uint64() as Long);
                    break;
                case 10:
                    message.SInt64 = longToNumber(reader.sint64() as Long);
                    break;
                case 11:
                    message.Fixed64 = longToNumber(reader.fixed64() as Long);
                    break;
                case 12:
                    message.SFixed64 = longToNumber(reader.sfixed64() as Long);
                    break;
                case 13:
                    message.Bool = reader.bool();
                    break;
                case 14:
                    message.Enum = reader.int32() as any;
                    break;
                case 15:
                    message.Bytes = reader.bytes();
                    break;
                case 16:
                    message.String = reader.string();
                    break;
                case 17:
                    message.EmptyBytes = reader.bytes();
                    break;
                case 18:
                    message.EmptyString = reader.string();
                    break;
                case 19:
                    message.EmptyInt64 = longToNumber(reader.int64() as Long);
                    break;
                case 20:
                    message.EmptyInt32 = longToNumber(reader.int64() as Long);
                    break;
                case 21:
                    message.EmptyBool = reader.bool();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Elementaries {
        return {
            Double: isSet(object.Double) ? Number(object.Double) : 0,
            Float: isSet(object.Float) ? Number(object.Float) : 0,
            Int32: isSet(object.Int32) ? Number(object.Int32) : 0,
            UInt32: isSet(object.UInt32) ? Number(object.UInt32) : 0,
            SInt32: isSet(object.SInt32) ? Number(object.SInt32) : 0,
            Fixed32: isSet(object.Fixed32) ? Number(object.Fixed32) : 0,
            SFixed32: isSet(object.SFixed32) ? Number(object.SFixed32) : 0,
            Int64: isSet(object.Int64) ? Number(object.Int64) : 0,
            UInt64: isSet(object.UInt64) ? Number(object.UInt64) : 0,
            SInt64: isSet(object.SInt64) ? Number(object.SInt64) : 0,
            Fixed64: isSet(object.Fixed64) ? Number(object.Fixed64) : 0,
            SFixed64: isSet(object.SFixed64) ? Number(object.SFixed64) : 0,
            Bool: isSet(object.Bool) ? Boolean(object.Bool) : false,
            Enum: isSet(object.Enum) ? enumFromJSON(object.Enum) : 0,
            Bytes: isSet(object.Bytes)
                ? bytesFromBase64(object.Bytes)
                : new Uint8Array(),
            String: isSet(object.String) ? String(object.String) : '',
            EmptyBytes: isSet(object.EmptyBytes)
                ? bytesFromBase64(object.EmptyBytes)
                : new Uint8Array(),
            EmptyString: isSet(object.EmptyString)
                ? String(object.EmptyString)
                : '',
            EmptyInt64: isSet(object.EmptyInt64)
                ? Number(object.EmptyInt64)
                : 0,
            EmptyInt32: isSet(object.EmptyInt32)
                ? Number(object.EmptyInt32)
                : 0,
            EmptyBool: isSet(object.EmptyBool)
                ? Boolean(object.EmptyBool)
                : false,
        };
    },

    toJSON(message: Elementaries): unknown {
        const obj: any = {};
        message.Double !== undefined && (obj.Double = message.Double);
        message.Float !== undefined && (obj.Float = message.Float);
        message.Int32 !== undefined && (obj.Int32 = Math.round(message.Int32));
        message.UInt32 !== undefined &&
            (obj.UInt32 = Math.round(message.UInt32));
        message.SInt32 !== undefined &&
            (obj.SInt32 = Math.round(message.SInt32));
        message.Fixed32 !== undefined &&
            (obj.Fixed32 = Math.round(message.Fixed32));
        message.SFixed32 !== undefined &&
            (obj.SFixed32 = Math.round(message.SFixed32));
        message.Int64 !== undefined && (obj.Int64 = Math.round(message.Int64));
        message.UInt64 !== undefined &&
            (obj.UInt64 = Math.round(message.UInt64));
        message.SInt64 !== undefined &&
            (obj.SInt64 = Math.round(message.SInt64));
        message.Fixed64 !== undefined &&
            (obj.Fixed64 = Math.round(message.Fixed64));
        message.SFixed64 !== undefined &&
            (obj.SFixed64 = Math.round(message.SFixed64));
        message.Bool !== undefined && (obj.Bool = message.Bool);
        message.Enum !== undefined && (obj.Enum = enumToJSON(message.Enum));
        message.Bytes !== undefined &&
            (obj.Bytes = base64FromBytes(
                message.Bytes !== undefined ? message.Bytes : new Uint8Array(),
            ));
        message.String !== undefined && (obj.String = message.String);
        message.EmptyBytes !== undefined &&
            (obj.EmptyBytes = base64FromBytes(
                message.EmptyBytes !== undefined
                    ? message.EmptyBytes
                    : new Uint8Array(),
            ));
        message.EmptyString !== undefined &&
            (obj.EmptyString = message.EmptyString);
        message.EmptyInt64 !== undefined &&
            (obj.EmptyInt64 = Math.round(message.EmptyInt64));
        message.EmptyInt32 !== undefined &&
            (obj.EmptyInt32 = Math.round(message.EmptyInt32));
        message.EmptyBool !== undefined && (obj.EmptyBool = message.EmptyBool);
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Elementaries>, I>>(
        object: I,
    ): Elementaries {
        const message = createBaseElementaries();
        message.Double = object.Double ?? 0;
        message.Float = object.Float ?? 0;
        message.Int32 = object.Int32 ?? 0;
        message.UInt32 = object.UInt32 ?? 0;
        message.SInt32 = object.SInt32 ?? 0;
        message.Fixed32 = object.Fixed32 ?? 0;
        message.SFixed32 = object.SFixed32 ?? 0;
        message.Int64 = object.Int64 ?? 0;
        message.UInt64 = object.UInt64 ?? 0;
        message.SInt64 = object.SInt64 ?? 0;
        message.Fixed64 = object.Fixed64 ?? 0;
        message.SFixed64 = object.SFixed64 ?? 0;
        message.Bool = object.Bool ?? false;
        message.Enum = object.Enum ?? 0;
        message.Bytes = object.Bytes ?? new Uint8Array();
        message.String = object.String ?? '';
        message.EmptyBytes = object.EmptyBytes ?? new Uint8Array();
        message.EmptyString = object.EmptyString ?? '';
        message.EmptyInt64 = object.EmptyInt64 ?? 0;
        message.EmptyInt32 = object.EmptyInt32 ?? 0;
        message.EmptyBool = object.EmptyBool ?? false;
        return message;
    },
};

declare var self: any | undefined;
declare var window: any | undefined;
declare var global: any | undefined;
var globalThis: any = (() => {
    if (typeof globalThis !== 'undefined') return globalThis;
    if (typeof self !== 'undefined') return self;
    if (typeof window !== 'undefined') return window;
    if (typeof global !== 'undefined') return global;
    throw 'Unable to locate global object';
})();

const atob: (b64: string) => string =
    globalThis.atob ||
    ((b64) => globalThis.Buffer.from(b64, 'base64').toString('binary'));
function bytesFromBase64(b64: string): Uint8Array {
    const bin = atob(b64);
    const arr = new Uint8Array(bin.length);
    for (let i = 0; i < bin.length; ++i) {
        arr[i] = bin.charCodeAt(i);
    }
    return arr;
}

const btoa: (bin: string) => string =
    globalThis.btoa ||
    ((bin) => globalThis.Buffer.from(bin, 'binary').toString('base64'));
function base64FromBytes(arr: Uint8Array): string {
    const bin: string[] = [];
    for (const byte of arr) {
        bin.push(String.fromCharCode(byte));
    }
    return btoa(bin.join(''));
}

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

function longToNumber(long: Long): number {
    if (long.gt(Number.MAX_SAFE_INTEGER)) {
        throw new globalThis.Error(
            'Value is larger than Number.MAX_SAFE_INTEGER',
        );
    }
    return long.toNumber();
}

if (_m0.util.Long !== Long) {
    _m0.util.Long = Long as any;
    _m0.configure();
}

function isSet(value: any): boolean {
    return value !== null && value !== undefined;
}
