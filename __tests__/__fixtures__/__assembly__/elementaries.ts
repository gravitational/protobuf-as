namespace __proto {
    /**
     * Decoder implements protobuf message decode interface.
     *
     * Useful references:
     *
     * Protocol Buffer encoding: https://developers.google.com/protocol-buffers/docs/encoding
     * LEB128 encoding AKA varint 128 encoding: https://en.wikipedia.org/wiki/LEB128
     * ZigZag encoding/decoding (s32/s64): https://gist.github.com/mfuerstenau/ba870a29e16536fdbaba
     */
    export class Decoder {
        public view: DataView;
        public pos: i32;

        constructor(view: DataView) {
            this.view = view;
            this.pos = 0;
        }

        /**
         * Returns true if current reader has reached the buffer end
         * @returns True if current reader has reached the buffer end
         */
        @inline
        eof(): bool {
            return this.pos >= this.view.byteLength;
        }

        /**
         * Returns current buffer length in bytes
         * @returns Length in bytes
         */
        @inline
        get byteLength(): i32 {
            return this.view.byteLength;
        }

        /**
         * An alias method to fetch tag from the reader. Supposed to return tuple of [field number, wire_type].
         * TODO: Replace with return tuple when tuples become implemented in AS.
         * @returns Message tag value
         */
        @inline
        tag(): u32 {
            return this.uint32();
        }

        /**
         * Returns byte at offset, alias for getUint8
         * @param byteOffset Offset
         * @returns u8
         */
        @inline
        private u8at(byteOffset: i32): u8 {
            return this.view.getUint8(byteOffset);
        }

        /**
         * Reads and returns varint number (128 + 10 bits max) from a current position.
         * @returns Returns varint
         */
        varint(): u64 {
            let value: u64;

            // u32
            value = (u64(u8(this.u8at(this.pos))) & 127) >>> 0;
            if (u8(this.u8at(this.pos++)) < 128) return value;
            value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 7)) >>> 0;
            if (u8(this.u8at(this.pos++)) < 128) return value;
            value =
                (value | ((u64(u8(this.u8at(this.pos))) & 127) << 14)) >>> 0;
            if (u8(this.u8at(this.pos++)) < 128) return value;
            value =
                (value | ((u64(u8(this.u8at(this.pos))) & 127) << 21)) >>> 0;
            if (u8(this.u8at(this.pos++)) < 128) return value;
            // u32 remainder or u64 byte
            value =
                (value | ((u64(u8(this.u8at(this.pos))) & 127) << 28)) >>> 0;
            if (u8(this.u8at(this.pos++)) < 128) return value;
            // u64
            value =
                (value | ((u64(u8(this.u8at(this.pos))) & 127) << 35)) >>> 0;
            if (u8(this.u8at(this.pos++)) < 128) return value;
            value =
                (value |
                    ((u64(u8(this.u8at(this.pos))) & 127) <<
                        42)) /* 42!!! */ >>>
                0;
            if (u8(this.u8at(this.pos++)) < 128) return value;
            value =
                (value | ((u64(u8(this.u8at(this.pos))) & 127) << 49)) >>> 0;
            if (u8(this.u8at(this.pos++)) < 128) return value;
            value =
                (value | ((u64(u8(this.u8at(this.pos))) & 127) << 28)) >>> 0;
            if (u8(this.u8at(this.pos++)) < 128) return value;
            // u64 remainder
            value =
                (value | ((u64(u8(this.u8at(this.pos))) & 127) << 35)) >>> 0;
            if (u8(this.u8at(this.pos++)) < 128) return value;

            if (this.pos > this.byteLength) {
                this.throwOutOfRange();
            }

            return value;
        }

        @inline
        int32(): i32 {
            return i32(this.varint());
        }

        @inline
        int64(): i64 {
            return i32(this.varint());
        }

        @inline
        uint32(): u32 {
            return u32(this.varint());
        }

        @inline
        uint64(): u64 {
            return u64(this.varint());
        }

        @inline
        sint32(): i32 {
            const n: u64 = this.varint();
            return i32((n >>> 1) ^ -(n & 1));
        }

        @inline
        sint64(): i64 {
            const n: u64 = this.varint();
            return i64((n >>> 1) ^ -(n & 1));
        }

        fixed32(): u32 {
            this.pos += 4;
            if (this.pos > this.byteLength) {
                this.throwOutOfRange();
            }

            // u32(u8) ensures that u8(-1) becomes u32(4294967295) instead of u8(255)
            return (
                u32(u8(this.u8at(this.pos - 4))) |
                (u32(u8(this.u8at(this.pos - 3))) << 8) |
                (u32(u8(this.u8at(this.pos - 2))) << 16) |
                (u32(u8(this.u8at(this.pos - 1))) << 24)
            );
        }

        @inline
        sfixed32(): i32 {
            return i32(this.fixed32());
        }

        fixed64(): u64 {
            this.pos += 8;
            if (this.pos > this.byteLength) {
                this.throwOutOfRange();
            }

            return (
                u64(u8(this.u8at(this.pos - 8))) |
                (u64(u8(this.u8at(this.pos - 7))) << 8) |
                (u64(u8(this.u8at(this.pos - 6))) << 16) |
                (u64(u8(this.u8at(this.pos - 5))) << 24) |
                (u64(u8(this.u8at(this.pos - 4))) << 32) |
                (u64(u8(this.u8at(this.pos - 3))) << 40) |
                (u64(u8(this.u8at(this.pos - 2))) << 48) |
                (u64(u8(this.u8at(this.pos - 1))) << 56)
            );
        }

        @inline
        sfixed64(): i64 {
            return i64(this.fixed64());
        }

        @inline
        float(): f32 {
            return f32.reinterpret_i32(this.fixed32());
        }

        @inline
        double(): f64 {
            return f64.reinterpret_i64(this.fixed64());
        }

        @inline
        bool(): boolean {
            return this.uint32() > 0;
        }

        /**
         * Reads and returns UTF8 string.
         * @returns String
         */
        string(): string {
            const length = this.uint32();
            if (this.pos + length > this.byteLength) {
                this.throwOutOfRange();
            }

            const p = this.pos + this.view.byteOffset;
            const value = String.UTF8.decode(
                this.view.buffer.slice(p, p + length)
            );
            this.pos += length;
            return value;
        }

        /**
         * Reads and returns bytes array.
         * @returns Array<u8> of bytes
         */
        bytes(): Array<u8> {
            const len = this.uint32();
            if (this.pos + len > this.byteLength) {
                this.throwOutOfRange();
            }

            const a = new Array<u8>(len);
            for (let i: u32 = 0; i < len; i++) {
                a[i] = u8(this.u8at(this.pos++));
            }

            return a;
        }

        /**
         * Skips a message field if it can'be recognized by an object's decode() method
         * @param wireType Current wire type
         */
        skipType(wireType: u32): void {
            switch (wireType) {
                // int32, int64, uint32, uint64, sint32, sint64, bool, enum: varint, variable length
                case 0:
                    this.varint(); // Just read a varint
                    break;
                // fixed64, sfixed64, double: 8 bytes always
                case 1:
                    this.skip(8);
                    break;
                // length-delimited; length is determined by varint32; skip length bytes;
                case 2:
                    this.skip(this.uint32());
                    break;
                // tart group: skip till the end of the group, then skip group end marker
                case 3:
                    while ((wireType = this.uint32() & 7) !== 4) {
                        this.skipType(wireType);
                    }
                    break;
                // fixed32, sfixed32, float: 4 bytes always
                case 5:
                    this.skip(4);
                    break;

                // Something went beyond our capability to understand
                default:
                    throw new Error(
                        `Invalid wire type ${wireType} at offset ${this.pos}`
                    );
            }
        }

        /**
         * Fast-forwards cursor by length with boundary check
         * @param length Byte length
         */
        skip(length: u32): void {
            if (this.pos + length > this.byteLength) {
                this.throwOutOfRange();
            }
            this.pos += length;
        }

        /**
         * OutOfRange check. Throws an exception if current position exceeds current buffer range
         */
        @inline
        private throwOutOfRange(): void {
            throw new Error(`Decoder position ${this.pos} is out of range!`);
        }
    }

    /**
     * Encoder implements protobuf message encode interface. This is the simplest not very effective version, which uses
     * Array<u8>.
     *
     * Useful references:
     *
     * Protocol Buffer encoding: https://developers.google.com/protocol-buffers/docs/encoding
     * LEB128 encoding AKA varint 128 encoding: https://en.wikipedia.org/wiki/LEB128
     * ZigZag encoding/decoding (s32/s64): https://gist.github.com/mfuerstenau/ba870a29e16536fdbaba
     */
    export class Encoder {
        public buf: Array<u8>;

        constructor(buf: Array<u8>) {
            this.buf = buf;
        }

        /**
         * Encodes varint at a current position
         * @returns Returns varint
         */
        varint64(value: u64): void {
            let v: u64 = value;

            while (v > 127) {
                this.buf.push(u8((v & 127) | 128));
                v = v >> 7;
            }

            this.buf.push(u8(v));
        }

        @inline
        int32(value: i32): void {
            this.varint64(value);
        }

        @inline
        int64(value: i64): void {
            this.varint64(value);
        }

        @inline
        uint32(value: u32): void {
            this.varint64(value);
        }

        @inline
        uint64(value: u64): void {
            this.varint64(value);
        }

        @inline
        sint32(value: i32): void {
            this.varint64((value << 1) ^ (value >> 31));
        }

        @inline
        sint64(value: i64): void {
            this.varint64((value << 1) ^ (value >> 63));
        }

        @inline
        fixed32(value: u32): void {
            this.buf.push(u8(value & 255));
            this.buf.push(u8((value >> 8) & 255));
            this.buf.push(u8((value >> 16) & 255));
            this.buf.push(u8(value >> 24));
        }

        @inline
        sfixed32(value: i32): void {
            this.fixed32(u32(value));
        }

        @inline
        fixed64(value: u64): void {
            this.buf.push(u8(value & 255));
            this.buf.push(u8((value >> 8) & 255));
            this.buf.push(u8((value >> 16) & 255));
            this.buf.push(u8((value >> 24) & 255));
            this.buf.push(u8((value >> 32) & 255));
            this.buf.push(u8((value >> 40) & 255));
            this.buf.push(u8((value >> 48) & 255));
            this.buf.push(u8(value >> 56));
        }

        @inline
        sfixed64(value: i64): void {
            this.fixed64(u64(value));
        }

        @inline
        float(value: f32): void {
            this.fixed32(u32(i32.reinterpret_f32(value)));
        }

        @inline
        double(value: f64): void {
            this.fixed64(u64(i64.reinterpret_f64(value)));
        }

        @inline
        bool(value: boolean): void {
            this.buf.push(value ? 1 : 0);
        }

        string(value: string): void {
            const utf8string = new DataView(String.UTF8.encode(value));

            for (let i = 0; i < utf8string.byteLength; i++) {
                this.buf.push(utf8string.getUint8(i));
            }
        }

        @inline
        bytes(value: Array<u8>): void {
            for (let i = 0; i < value.length; i++) {
                this.buf.push(value[i]);
            }
        }
    }

    /**
     * Returns byte size required to encode a value of a certain type
     */
    export class Sizer {
        static varint64(value: u64): u32 {
            return value < 128
                ? 1 // 2^7
                : value < 16384
                ? 2 // 2^14
                : value < 2097152
                ? 3 // 2^21
                : value < 268435456
                ? 4 // 2^28
                : value < 34359738368
                ? 5 // 2^35
                : value < 4398046511104
                ? 6 // 2^42
                : value < 562949953421312
                ? 7 // 2^49
                : value < 72057594037927936
                ? 8 // 2^56
                : value < 9223372036854775808
                ? 9 // 2^63
                : 10;
        }

        @inline
        static int32(value: i32): u32 {
            return Sizer.varint64(u64(value));
        }

        @inline
        static int64(value: i64): u32 {
            return Sizer.varint64(u64(value));
        }

        @inline
        static uint32(value: u32): u32 {
            return Sizer.varint64(value);
        }

        @inline
        static uint64(value: u64): u32 {
            return Sizer.varint64(value);
        }

        @inline
        static sint32(value: i32): u32 {
            return Sizer.varint64((value << 1) ^ (value >> 31));
        }

        @inline
        static sint64(value: i64): u32 {
            return Sizer.varint64((value << 1) ^ (value >> 63));
        }

        @inline
        static string(value: string): u32 {
            return value.length;
        }

        @inline
        static bytes(value: Array<u8>): u32 {
            return value.length;
        }
    }
}
export namespace elementaries {
    export enum Enum {
        Zero = 0,
        One = 1,
        Two = 2,
    } // Enum
    export class Elementaries {
        public Double: f64;
        public Float: f32;
        public Int32: i32;
        public UInt32: u32;
        public SInt32: i32;
        public Fixed32: u32;
        public SFixed32: i32;
        public Int64: i64;
        public UInt64: u64;
        public SInt64: i64;
        public Fixed64: u64;
        public SFixed64: u64;
        public Bool: bool;
        public Enum: u32;
        public Bytes: Array<u8> = new Array<u8>();
        public String: string = "";
        public EmptyBytes: Array<u8> = new Array<u8>();
        public EmptyString: string = "";
        public EmptyInt64: i64;
        public EmptyInt32: i64;
        public EmptyBool: bool;

        // Decodes Elementaries from an ArrayBuffer
        static decode(buf: ArrayBuffer): Elementaries {
            return Elementaries.decodeDataView(new DataView(buf));
        }

        // Decodes Elementaries from a DataView
        static decodeDataView(view: DataView): Elementaries {
            const decoder = new __proto.Decoder(view);
            const obj = new Elementaries();

            while (!decoder.eof()) {
                const tag = decoder.tag();
                const number = tag >>> 3;

                switch (number) {
                    case 1: {
                        obj.Double = decoder.double();
                        break;
                    }
                    case 2: {
                        obj.Float = decoder.float();
                        break;
                    }
                    case 3: {
                        obj.Int32 = decoder.int32();
                        break;
                    }
                    case 4: {
                        obj.UInt32 = decoder.uint32();
                        break;
                    }
                    case 5: {
                        obj.SInt32 = decoder.sint32();
                        break;
                    }
                    case 6: {
                        obj.Fixed32 = decoder.fixed32();
                        break;
                    }
                    case 7: {
                        obj.SFixed32 = decoder.sfixed32();
                        break;
                    }
                    case 8: {
                        obj.Int64 = decoder.int64();
                        break;
                    }
                    case 9: {
                        obj.UInt64 = decoder.uint64();
                        break;
                    }
                    case 10: {
                        obj.SInt64 = decoder.sint64();
                        break;
                    }
                    case 11: {
                        obj.Fixed64 = decoder.fixed64();
                        break;
                    }
                    case 12: {
                        obj.SFixed64 = decoder.fixed64();
                        break;
                    }
                    case 13: {
                        obj.Bool = decoder.bool();
                        break;
                    }
                    case 14: {
                        obj.Enum = decoder.uint32();
                        break;
                    }
                    case 15: {
                        obj.Bytes = decoder.bytes();
                        break;
                    }
                    case 16: {
                        obj.String = decoder.string();
                        break;
                    }
                    case 17: {
                        obj.EmptyBytes = decoder.bytes();
                        break;
                    }
                    case 18: {
                        obj.EmptyString = decoder.string();
                        break;
                    }
                    case 19: {
                        obj.EmptyInt64 = decoder.int64();
                        break;
                    }
                    case 20: {
                        obj.EmptyInt32 = decoder.int64();
                        break;
                    }
                    case 21: {
                        obj.EmptyBool = decoder.bool();
                        break;
                    }

                    default:
                        decoder.skipType(tag & 7);
                        break;
                }
            }
            return obj;
        } // decode Elementaries

        public size(): u32 {
            let size: u32 = 0;

            size += this.Double == 0 ? 0 : 1 + 8;
            size += this.Float == 0 ? 0 : 1 + 4;
            size += this.Int32 == 0 ? 0 : 1 + __proto.Sizer.int32(this.Int32);
            size +=
                this.UInt32 == 0 ? 0 : 1 + __proto.Sizer.uint32(this.UInt32);
            size +=
                this.SInt32 == 0 ? 0 : 1 + __proto.Sizer.sint32(this.SInt32);
            size += this.Fixed32 == 0 ? 0 : 1 + 4;
            size += this.SFixed32 == 0 ? 0 : 1 + 4;
            size += this.Int64 == 0 ? 0 : 1 + __proto.Sizer.int64(this.Int64);
            size +=
                this.UInt64 == 0 ? 0 : 1 + __proto.Sizer.uint64(this.UInt64);
            size +=
                this.SInt64 == 0 ? 0 : 1 + __proto.Sizer.sint64(this.SInt64);
            size += this.Fixed64 == 0 ? 0 : 1 + 8;
            size += this.SFixed64 == 0 ? 0 : 1 + 8;
            size += this.Bool == 0 ? 0 : 1 + 1;
            size += this.Enum == 0 ? 0 : 1 + __proto.Sizer.uint32(this.Enum);
            size +=
                this.Bytes.length > 0
                    ? 1 +
                      __proto.Sizer.varint64(this.Bytes.length) +
                      this.Bytes.length
                    : 0;
            size +=
                this.String.length > 0
                    ? 2 +
                      __proto.Sizer.varint64(this.String.length) +
                      this.String.length
                    : 0;
            size +=
                this.EmptyBytes.length > 0
                    ? 2 +
                      __proto.Sizer.varint64(this.EmptyBytes.length) +
                      this.EmptyBytes.length
                    : 0;
            size +=
                this.EmptyString.length > 0
                    ? 2 +
                      __proto.Sizer.varint64(this.EmptyString.length) +
                      this.EmptyString.length
                    : 0;
            size +=
                this.EmptyInt64 == 0
                    ? 0
                    : 2 + __proto.Sizer.int64(this.EmptyInt64);
            size +=
                this.EmptyInt32 == 0
                    ? 0
                    : 2 + __proto.Sizer.int64(this.EmptyInt32);
            size += this.EmptyBool == 0 ? 0 : 2 + 1;

            return size;
        }

        // Encodes Elementaries to the ArrayBuffer
        encode(): ArrayBuffer {
            return changetype<ArrayBuffer>(
                StaticArray.fromArray<u8>(this.encodeU8Array())
            );
        }

        // Encodes Elementaries to the Array<u8>
        encodeU8Array(
            encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
        ): Array<u8> {
            const buf = encoder.buf;

            if (this.Double != 0) {
                encoder.uint32(0x9);
                encoder.double(this.Double);
            }
            if (this.Float != 0) {
                encoder.uint32(0x15);
                encoder.float(this.Float);
            }
            if (this.Int32 != 0) {
                encoder.uint32(0x18);
                encoder.int32(this.Int32);
            }
            if (this.UInt32 != 0) {
                encoder.uint32(0x20);
                encoder.uint32(this.UInt32);
            }
            if (this.SInt32 != 0) {
                encoder.uint32(0x28);
                encoder.sint32(this.SInt32);
            }
            if (this.Fixed32 != 0) {
                encoder.uint32(0x35);
                encoder.fixed32(this.Fixed32);
            }
            if (this.SFixed32 != 0) {
                encoder.uint32(0x3d);
                encoder.sfixed32(this.SFixed32);
            }
            if (this.Int64 != 0) {
                encoder.uint32(0x40);
                encoder.int64(this.Int64);
            }
            if (this.UInt64 != 0) {
                encoder.uint32(0x48);
                encoder.uint64(this.UInt64);
            }
            if (this.SInt64 != 0) {
                encoder.uint32(0x50);
                encoder.sint64(this.SInt64);
            }
            if (this.Fixed64 != 0) {
                encoder.uint32(0x59);
                encoder.fixed64(this.Fixed64);
            }
            if (this.SFixed64 != 0) {
                encoder.uint32(0x61);
                encoder.fixed64(this.SFixed64);
            }
            if (this.Bool != 0) {
                encoder.uint32(0x68);
                encoder.bool(this.Bool);
            }
            if (this.Enum != 0) {
                encoder.uint32(0x70);
                encoder.uint32(this.Enum);
            }
            if (this.Bytes.length > 0) {
                encoder.uint32(0x7a);
                encoder.uint32(this.Bytes.length);
                encoder.bytes(this.Bytes);
            }
            if (this.String.length > 0) {
                encoder.uint32(0x82);
                encoder.uint32(this.String.length);
                encoder.string(this.String);
            }
            if (this.EmptyBytes.length > 0) {
                encoder.uint32(0x8a);
                encoder.uint32(this.EmptyBytes.length);
                encoder.bytes(this.EmptyBytes);
            }
            if (this.EmptyString.length > 0) {
                encoder.uint32(0x92);
                encoder.uint32(this.EmptyString.length);
                encoder.string(this.EmptyString);
            }
            if (this.EmptyInt64 != 0) {
                encoder.uint32(0x98);
                encoder.int64(this.EmptyInt64);
            }
            if (this.EmptyInt32 != 0) {
                encoder.uint32(0xa0);
                encoder.int64(this.EmptyInt32);
            }
            if (this.EmptyBool != 0) {
                encoder.uint32(0xa8);
                encoder.bool(this.EmptyBool);
            }

            return buf;
        } // encode Elementaries
    } // Elementaries
} // elementaries
