/* eslint-disable */
import Long from 'long';
import _m0 from 'protobufjs/minimal';

export const protobufPackage = '';

export interface Branch1 {
    String: string;
}

export interface Branch2 {
    UInt32: number;
}

export interface OneOf {
    Messages?:
        | { $case: 'Branch1'; Branch1: Branch1 }
        | { $case: 'Branch2'; Branch2: Branch2 };
    NonOneOf1: string;
    SecondMessage?:
        | { $case: 'Branch3'; Branch3: string }
        | { $case: 'Branch4'; Branch4: number };
    NonOneOf2: string;
}

function createBaseBranch1(): Branch1 {
    return { String: '' };
}

export const Branch1 = {
    encode(
        message: Branch1,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.String !== '') {
            writer.uint32(10).string(message.String);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): Branch1 {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseBranch1();
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

    fromJSON(object: any): Branch1 {
        return {
            String: isSet(object.String) ? String(object.String) : '',
        };
    },

    toJSON(message: Branch1): unknown {
        const obj: any = {};
        message.String !== undefined && (obj.String = message.String);
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Branch1>, I>>(object: I): Branch1 {
        const message = createBaseBranch1();
        message.String = object.String ?? '';
        return message;
    },
};

function createBaseBranch2(): Branch2 {
    return { UInt32: 0 };
}

export const Branch2 = {
    encode(
        message: Branch2,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.UInt32 !== 0) {
            writer.uint32(8).uint32(message.UInt32);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): Branch2 {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseBranch2();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.UInt32 = reader.uint32();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Branch2 {
        return {
            UInt32: isSet(object.UInt32) ? Number(object.UInt32) : 0,
        };
    },

    toJSON(message: Branch2): unknown {
        const obj: any = {};
        message.UInt32 !== undefined &&
            (obj.UInt32 = Math.round(message.UInt32));
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Branch2>, I>>(object: I): Branch2 {
        const message = createBaseBranch2();
        message.UInt32 = object.UInt32 ?? 0;
        return message;
    },
};

function createBaseOneOf(): OneOf {
    return {
        Messages: undefined,
        NonOneOf1: '',
        SecondMessage: undefined,
        NonOneOf2: '',
    };
}

export const OneOf = {
    encode(
        message: OneOf,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.Messages?.$case === 'Branch1') {
            Branch1.encode(
                message.Messages.Branch1,
                writer.uint32(10).fork(),
            ).ldelim();
        }
        if (message.Messages?.$case === 'Branch2') {
            Branch2.encode(
                message.Messages.Branch2,
                writer.uint32(18).fork(),
            ).ldelim();
        }
        if (message.NonOneOf1 !== '') {
            writer.uint32(26).string(message.NonOneOf1);
        }
        if (message.SecondMessage?.$case === 'Branch3') {
            writer.uint32(34).string(message.SecondMessage.Branch3);
        }
        if (message.SecondMessage?.$case === 'Branch4') {
            writer.uint32(40).int32(message.SecondMessage.Branch4);
        }
        if (message.NonOneOf2 !== '') {
            writer.uint32(50).string(message.NonOneOf2);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): OneOf {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = createBaseOneOf();
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.Messages = {
                        $case: 'Branch1',
                        Branch1: Branch1.decode(reader, reader.uint32()),
                    };
                    break;
                case 2:
                    message.Messages = {
                        $case: 'Branch2',
                        Branch2: Branch2.decode(reader, reader.uint32()),
                    };
                    break;
                case 3:
                    message.NonOneOf1 = reader.string();
                    break;
                case 4:
                    message.SecondMessage = {
                        $case: 'Branch3',
                        Branch3: reader.string(),
                    };
                    break;
                case 5:
                    message.SecondMessage = {
                        $case: 'Branch4',
                        Branch4: reader.int32(),
                    };
                    break;
                case 6:
                    message.NonOneOf2 = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): OneOf {
        return {
            Messages: isSet(object.Branch1)
                ? {
                      $case: 'Branch1',
                      Branch1: Branch1.fromJSON(object.Branch1),
                  }
                : isSet(object.Branch2)
                ? {
                      $case: 'Branch2',
                      Branch2: Branch2.fromJSON(object.Branch2),
                  }
                : undefined,
            NonOneOf1: isSet(object.NonOneOf1) ? String(object.NonOneOf1) : '',
            SecondMessage: isSet(object.Branch3)
                ? { $case: 'Branch3', Branch3: String(object.Branch3) }
                : isSet(object.Branch4)
                ? { $case: 'Branch4', Branch4: Number(object.Branch4) }
                : undefined,
            NonOneOf2: isSet(object.NonOneOf2) ? String(object.NonOneOf2) : '',
        };
    },

    toJSON(message: OneOf): unknown {
        const obj: any = {};
        message.Messages?.$case === 'Branch1' &&
            (obj.Branch1 = message.Messages?.Branch1
                ? Branch1.toJSON(message.Messages?.Branch1)
                : undefined);
        message.Messages?.$case === 'Branch2' &&
            (obj.Branch2 = message.Messages?.Branch2
                ? Branch2.toJSON(message.Messages?.Branch2)
                : undefined);
        message.NonOneOf1 !== undefined && (obj.NonOneOf1 = message.NonOneOf1);
        message.SecondMessage?.$case === 'Branch3' &&
            (obj.Branch3 = message.SecondMessage?.Branch3);
        message.SecondMessage?.$case === 'Branch4' &&
            (obj.Branch4 = Math.round(message.SecondMessage?.Branch4));
        message.NonOneOf2 !== undefined && (obj.NonOneOf2 = message.NonOneOf2);
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<OneOf>, I>>(object: I): OneOf {
        const message = createBaseOneOf();
        if (
            object.Messages?.$case === 'Branch1' &&
            object.Messages?.Branch1 !== undefined &&
            object.Messages?.Branch1 !== null
        ) {
            message.Messages = {
                $case: 'Branch1',
                Branch1: Branch1.fromPartial(object.Messages.Branch1),
            };
        }
        if (
            object.Messages?.$case === 'Branch2' &&
            object.Messages?.Branch2 !== undefined &&
            object.Messages?.Branch2 !== null
        ) {
            message.Messages = {
                $case: 'Branch2',
                Branch2: Branch2.fromPartial(object.Messages.Branch2),
            };
        }
        message.NonOneOf1 = object.NonOneOf1 ?? '';
        if (
            object.SecondMessage?.$case === 'Branch3' &&
            object.SecondMessage?.Branch3 !== undefined &&
            object.SecondMessage?.Branch3 !== null
        ) {
            message.SecondMessage = {
                $case: 'Branch3',
                Branch3: object.SecondMessage.Branch3,
            };
        }
        if (
            object.SecondMessage?.$case === 'Branch4' &&
            object.SecondMessage?.Branch4 !== undefined &&
            object.SecondMessage?.Branch4 !== null
        ) {
            message.SecondMessage = {
                $case: 'Branch4',
                Branch4: object.SecondMessage.Branch4,
            };
        }
        message.NonOneOf2 = object.NonOneOf2 ?? '';
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

function isSet(value: any): boolean {
    return value !== null && value !== undefined;
}
