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

export interface Message {
    String: string;
}

export interface Lists {
    Enums: Enum[];
    Strings: string[];
    Bytes: Uint8Array[];
    Messages: Message[];
    Ints: number[];
}

function createBaseMessage(): Message {
    return { String: '' };
}

export const Message = {
    encode(
        message: Message,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.String !== '') {
            writer.uint32(10).string(message.String);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): Message {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseMessage();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.String = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Message {
        return {
            String: isSet(object.String) ? String(object.String) : '',
        };
    },

    toJSON(message: Message): unknown {
        const obj: any = {};
        message.String !== undefined && (obj.String = message.String);
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Message>, I>>(object: I): Message {
        const message = createBaseMessage();
        message.String = object.String ?? '';
        return message;
    },
};

function createBaseLists(): Lists {
    return { Enums: [], Strings: [], Bytes: [], Messages: [], Ints: [] };
}

export const Lists = {
    encode(
        message: Lists,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        writer.uint32(10).fork();
        for (const v of message.Enums) {
            writer.int32(v);
        }
        writer.ldelim();
        for (const v of message.Strings) {
            writer.uint32(18).string(v!);
        }
        for (const v of message.Bytes) {
            writer.uint32(26).bytes(v!);
        }
        for (const v of message.Messages) {
            Message.encode(v!, writer.uint32(34).fork()).ldelim();
        }
        writer.uint32(42).fork();
        for (const v of message.Ints) {
            writer.int32(v);
        }
        writer.ldelim();
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): Lists {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseLists();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    if ((tag & 7) === 2) {
                        const end2 = reader.uint32() + reader.pos;
                        while (reader.pos < end2) {
                            message.Enums.push(reader.int32() as any);
                        }
                    } else {
                        message.Enums.push(reader.int32() as any);
                    }
                    break;
                case 2:
                    message.Strings.push(reader.string());
                    break;
                case 3:
                    message.Bytes.push(reader.bytes());
                    break;
                case 4:
                    message.Messages.push(
                        Message.decode(reader, reader.uint32()),
                    );
                    break;
                case 5:
                    if ((tag & 7) === 2) {
                        const end2 = reader.uint32() + reader.pos;
                        while (reader.pos < end2) {
                            message.Ints.push(reader.int32());
                        }
                    } else {
                        message.Ints.push(reader.int32());
                    }
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Lists {
        return {
            Enums: Array.isArray(object?.Enums)
                ? object.Enums.map((e: any) => enumFromJSON(e))
                : [],
            Strings: Array.isArray(object?.Strings)
                ? object.Strings.map((e: any) => String(e))
                : [],
            Bytes: Array.isArray(object?.Bytes)
                ? object.Bytes.map((e: any) => bytesFromBase64(e))
                : [],
            Messages: Array.isArray(object?.Messages)
                ? object.Messages.map((e: any) => Message.fromJSON(e))
                : [],
            Ints: Array.isArray(object?.Ints)
                ? object.Ints.map((e: any) => Number(e))
                : [],
        };
    },

    toJSON(message: Lists): unknown {
        const obj: any = {};
        if (message.Enums) {
            obj.Enums = message.Enums.map((e) => enumToJSON(e));
        } else {
            obj.Enums = [];
        }
        if (message.Strings) {
            obj.Strings = message.Strings.map((e) => e);
        } else {
            obj.Strings = [];
        }
        if (message.Bytes) {
            obj.Bytes = message.Bytes.map((e) =>
                base64FromBytes(e !== undefined ? e : new Uint8Array()),
            );
        } else {
            obj.Bytes = [];
        }
        if (message.Messages) {
            obj.Messages = message.Messages.map((e) =>
                e ? Message.toJSON(e) : undefined,
            );
        } else {
            obj.Messages = [];
        }
        if (message.Ints) {
            obj.Ints = message.Ints.map((e) => Math.round(e));
        } else {
            obj.Ints = [];
        }
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Lists>, I>>(object: I): Lists {
        const message = createBaseLists();
        message.Enums = object.Enums?.map((e) => e) || [];
        message.Strings = object.Strings?.map((e) => e) || [];
        message.Bytes = object.Bytes?.map((e) => e) || [];
        message.Messages =
            object.Messages?.map((e) => Message.fromPartial(e)) || [];
        message.Ints = object.Ints?.map((e) => e) || [];
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

if (_m0.util.Long !== Long) {
    _m0.util.Long = Long as any;
    _m0.configure();
}

function isSet(value: any): boolean {
    return value !== null && value !== undefined;
}
