/* eslint-disable */
import Long from 'long';
import _m0 from 'protobufjs/minimal';

export const protobufPackage = '';

/** Represents the structure with nested messages */

export interface Person {
    Name: string;
    Surname: string;
    Age: number;
    Weight: number;
    Id: Id | undefined;
}

export interface Id {
    Number: string;
    Serial: string;
}

const basePerson: object = { Name: '', Surname: '', Age: 0, Weight: 0 };

export const Person = {
    encode(
        message: Person,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.Name !== '') {
            writer.uint32(10).string(message.Name);
        }
        if (message.Surname !== '') {
            writer.uint32(18).string(message.Surname);
        }
        if (message.Age !== 0) {
            writer.uint32(24).int32(message.Age);
        }
        if (message.Weight !== 0) {
            writer.uint32(37).float(message.Weight);
        }
        if (message.Id !== undefined) {
            Id.encode(message.Id, writer.uint32(42).fork()).ldelim();
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): Person {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = { ...basePerson } as Person;
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.Name = reader.string();
                    break;
                case 2:
                    message.Surname = reader.string();
                    break;
                case 3:
                    message.Age = reader.int32();
                    break;
                case 4:
                    message.Weight = reader.float();
                    break;
                case 5:
                    message.Id = Id.decode(reader, reader.uint32());
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Person {
        const message = { ...basePerson } as Person;
        message.Name =
            object.Name !== undefined && object.Name !== null
                ? String(object.Name)
                : '';
        message.Surname =
            object.Surname !== undefined && object.Surname !== null
                ? String(object.Surname)
                : '';
        message.Age =
            object.Age !== undefined && object.Age !== null
                ? Number(object.Age)
                : 0;
        message.Weight =
            object.Weight !== undefined && object.Weight !== null
                ? Number(object.Weight)
                : 0;
        message.Id =
            object.Id !== undefined && object.Id !== null
                ? Id.fromJSON(object.Id)
                : undefined;
        return message;
    },

    toJSON(message: Person): unknown {
        const obj: any = {};
        message.Name !== undefined && (obj.Name = message.Name);
        message.Surname !== undefined && (obj.Surname = message.Surname);
        message.Age !== undefined && (obj.Age = message.Age);
        message.Weight !== undefined && (obj.Weight = message.Weight);
        message.Id !== undefined &&
            (obj.Id = message.Id ? Id.toJSON(message.Id) : undefined);
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Person>, I>>(object: I): Person {
        const message = { ...basePerson } as Person;
        message.Name = object.Name ?? '';
        message.Surname = object.Surname ?? '';
        message.Age = object.Age ?? 0;
        message.Weight = object.Weight ?? 0;
        message.Id =
            object.Id !== undefined && object.Id !== null
                ? Id.fromPartial(object.Id)
                : undefined;
        return message;
    },
};

const baseId: object = { Number: '', Serial: '' };

export const Id = {
    encode(message: Id, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
        if (message.Number !== '') {
            writer.uint32(10).string(message.Number);
        }
        if (message.Serial !== '') {
            writer.uint32(18).string(message.Serial);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): Id {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = { ...baseId } as Id;
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.Number = reader.string();
                    break;
                case 2:
                    message.Serial = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Id {
        const message = { ...baseId } as Id;
        message.Number =
            object.Number !== undefined && object.Number !== null
                ? String(object.Number)
                : '';
        message.Serial =
            object.Serial !== undefined && object.Serial !== null
                ? String(object.Serial)
                : '';
        return message;
    },

    toJSON(message: Id): unknown {
        const obj: any = {};
        message.Number !== undefined && (obj.Number = message.Number);
        message.Serial !== undefined && (obj.Serial = message.Serial);
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Id>, I>>(object: I): Id {
        const message = { ...baseId } as Id;
        message.Number = object.Number ?? '';
        message.Serial = object.Serial ?? '';
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
