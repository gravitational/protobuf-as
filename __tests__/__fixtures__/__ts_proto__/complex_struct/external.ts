/* eslint-disable */
import Long from 'long';
import _m0 from 'protobufjs/minimal';

export const protobufPackage = 'external';

export interface Properties {
    Properties: string;
}

export interface Labels {
    Labels: string;
}

const baseProperties: object = { Properties: '' };

export const Properties = {
    encode(
        message: Properties,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.Properties !== '') {
            writer.uint32(10).string(message.Properties);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): Properties {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = { ...baseProperties } as Properties;
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.Properties = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Properties {
        const message = { ...baseProperties } as Properties;
        message.Properties =
            object.Properties !== undefined && object.Properties !== null
                ? String(object.Properties)
                : '';
        return message;
    },

    toJSON(message: Properties): unknown {
        const obj: any = {};
        message.Properties !== undefined &&
            (obj.Properties = message.Properties);
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Properties>, I>>(
        object: I,
    ): Properties {
        const message = { ...baseProperties } as Properties;
        message.Properties = object.Properties ?? '';
        return message;
    },
};

const baseLabels: object = { Labels: '' };

export const Labels = {
    encode(
        message: Labels,
        writer: _m0.Writer = _m0.Writer.create(),
    ): _m0.Writer {
        if (message.Labels !== '') {
            writer.uint32(10).string(message.Labels);
        }
        return writer;
    },

    decode(input: _m0.Reader | Uint8Array, length?: number): Labels {
        const reader =
            input instanceof _m0.Reader ? input : new _m0.Reader(input);
        let end = length === undefined ? reader.len : reader.pos + length;
        const message = { ...baseLabels } as Labels;
        while (reader.pos < end) {
            const tag = reader.uint32();
            switch (tag >>> 3) {
                case 1:
                    message.Labels = reader.string();
                    break;
                default:
                    reader.skipType(tag & 7);
                    break;
            }
        }
        return message;
    },

    fromJSON(object: any): Labels {
        const message = { ...baseLabels } as Labels;
        message.Labels =
            object.Labels !== undefined && object.Labels !== null
                ? String(object.Labels)
                : '';
        return message;
    },

    toJSON(message: Labels): unknown {
        const obj: any = {};
        message.Labels !== undefined && (obj.Labels = message.Labels);
        return obj;
    },

    fromPartial<I extends Exact<DeepPartial<Labels>, I>>(object: I): Labels {
        const message = { ...baseLabels } as Labels;
        message.Labels = object.Labels ?? '';
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
