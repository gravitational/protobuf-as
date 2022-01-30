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
/**
 * Allocates and returns the DataView for a protobuf binary message.
 * @param length Message size
 * @returns (DataView addr << 32) | Buffer addr
 */
export function __protobuf_alloc(length: i32): u64 {
    const view = new DataView(new ArrayBuffer(length));
    return (
        (u64(changetype<usize>(view)) << 32) |
        (changetype<usize>(view.buffer) + view.byteOffset)
    );
}

/**
 * Returns the length of the DataView.
 * @param data DataView instance
 * @returns Length
 */
export function __protobuf_getLength(view: DataView): u32 {
    return view.byteLength;
}

/**
 * Returns address of the DataView, accessible via WASM memory.
 *
 * @param data DataView instance
 * @returns Memory address
 */
export function __protobuf_getAddr(view: DataView): usize {
    return changetype<usize>(view.buffer) + view.byteOffset;
}

export class Value {
    public Int32s: Array<i32> = new Array<i32>();

    // Decodes Value from an ArrayBuffer
    static decodeArrayBuffer(buf: ArrayBuffer): Value {
        return Value.decode(new DataView(buf));
    }

    // Decodes Value from a DataView
    static decode(view: DataView): Value {
        const decoder = new __proto.Decoder(view);
        const obj = new Value();

        while (!decoder.eof()) {
            const tag = decoder.tag();
            const number = tag >>> 3;

            switch (number) {
                case 1: {
                    const endPos = decoder.pos + decoder.uint32();
                    while (decoder.pos <= endPos) {
                        obj.Int32s.push(decoder.int32());
                    }

                    break;
                }

                default:
                    decoder.skipType(tag & 7);
                    break;
            }
        }
        return obj;
    } // decode Value

    public size(): u32 {
        let size: u32 = 0;

        if (this.Int32s.length > 0) {
            const packedSize = __size_int32_repeated_packed(this.Int32s);
            if (packedSize > 0) {
                size += 1 + __proto.Sizer.varint64(packedSize) + packedSize;
            }
        }

        return size;
    }

    // Encodes Value to the DataView
    encode(): DataView {
        const source = this.encodeU8Array();
        const view = new DataView(new ArrayBuffer(source.length));
        for (let i: i32 = 0; i < source.length; i++) {
            view.setUint8(i, source.at(i));
        }
        return view;
    }

    // Encodes Value to the Array<u8>
    encodeU8Array(
        encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
        const buf = encoder.buf;

        if (this.Int32s.length > 0) {
            encoder.uint32(0xa);
            encoder.uint32(__size_int32_repeated_packed(this.Int32s));

            for (let n: i32 = 0; n < this.Int32s.length; n++) {
                encoder.int32(this.Int32s[n]);
            }
        }

        return buf;
    } // encode Value
} // Value

export class Maps {
    public StringStringMap: Map<string, string> = new Map<string, string>();
    public StringInt32Map: Map<string, i32> = new Map<string, i32>();
    public Int32StringMap: Map<i32, string> = new Map<i32, string>();
    public StringValueMap: Map<string, Value> = new Map<string, Value>();

    // Decodes Maps from an ArrayBuffer
    static decodeArrayBuffer(buf: ArrayBuffer): Maps {
        return Maps.decode(new DataView(buf));
    }

    // Decodes Maps from a DataView
    static decode(view: DataView): Maps {
        const decoder = new __proto.Decoder(view);
        const obj = new Maps();

        while (!decoder.eof()) {
            const tag = decoder.tag();
            const number = tag >>> 3;

            switch (number) {
                case 1: {
                    const length = decoder.uint32();
                    __decodeMap_string_string(
                        decoder,
                        length,
                        obj.StringStringMap
                    );
                    decoder.skip(length);

                    break;
                }
                case 2: {
                    const length = decoder.uint32();
                    __decodeMap_string_i32(decoder, length, obj.StringInt32Map);
                    decoder.skip(length);

                    break;
                }
                case 3: {
                    const length = decoder.uint32();
                    __decodeMap_i32_string(decoder, length, obj.Int32StringMap);
                    decoder.skip(length);

                    break;
                }
                case 4: {
                    const length = decoder.uint32();
                    __decodeMap_string_Value(
                        decoder,
                        length,
                        obj.StringValueMap
                    );
                    decoder.skip(length);

                    break;
                }

                default:
                    decoder.skipType(tag & 7);
                    break;
            }
        }
        return obj;
    } // decode Maps

    public size(): u32 {
        let size: u32 = 0;

        if (this.StringStringMap.size > 0) {
            const keys = this.StringStringMap.keys();

            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.StringStringMap.get(key);
                const itemSize = __sizeMapEntry_string_string(key, value);
                if (itemSize > 0) {
                    size += 1 + __proto.Sizer.varint64(itemSize) + itemSize;
                }
            }
        }

        if (this.StringInt32Map.size > 0) {
            const keys = this.StringInt32Map.keys();

            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.StringInt32Map.get(key);
                const itemSize = __sizeMapEntry_string_i32(key, value);
                if (itemSize > 0) {
                    size += 1 + __proto.Sizer.varint64(itemSize) + itemSize;
                }
            }
        }

        if (this.Int32StringMap.size > 0) {
            const keys = this.Int32StringMap.keys();

            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.Int32StringMap.get(key);
                const itemSize = __sizeMapEntry_i32_string(key, value);
                if (itemSize > 0) {
                    size += 1 + __proto.Sizer.varint64(itemSize) + itemSize;
                }
            }
        }

        if (this.StringValueMap.size > 0) {
            const keys = this.StringValueMap.keys();

            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.StringValueMap.get(key);
                const itemSize = __sizeMapEntry_string_Value(key, value);
                if (itemSize > 0) {
                    size += 1 + __proto.Sizer.varint64(itemSize) + itemSize;
                }
            }
        }

        return size;
    }

    // Encodes Maps to the DataView
    encode(): DataView {
        const source = this.encodeU8Array();
        const view = new DataView(new ArrayBuffer(source.length));
        for (let i: i32 = 0; i < source.length; i++) {
            view.setUint8(i, source.at(i));
        }
        return view;
    }

    // Encodes Maps to the Array<u8>
    encodeU8Array(
        encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
        const buf = encoder.buf;

        if (this.StringStringMap.size > 0) {
            const keys = this.StringStringMap.keys();
            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.StringStringMap.get(key);
                const size = __sizeMapEntry_string_string(key, value);
                if (size > 0) {
                    encoder.uint32(0xa);
                    encoder.uint32(size);
                    if (key.length > 0) {
                        encoder.uint32(0xa);
                        encoder.uint32(key.length);
                        encoder.string(key);
                    }
                    if (value.length > 0) {
                        encoder.uint32(0x12);
                        encoder.uint32(value.length);
                        encoder.string(value);
                    }
                }
            }
        }

        if (this.StringInt32Map.size > 0) {
            const keys = this.StringInt32Map.keys();
            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.StringInt32Map.get(key);
                const size = __sizeMapEntry_string_i32(key, value);
                if (size > 0) {
                    encoder.uint32(0x12);
                    encoder.uint32(size);
                    if (key.length > 0) {
                        encoder.uint32(0xa);
                        encoder.uint32(key.length);
                        encoder.string(key);
                    }
                    if (value != 0) {
                        encoder.uint32(0x10);
                        encoder.int32(value);
                    }
                }
            }
        }

        if (this.Int32StringMap.size > 0) {
            const keys = this.Int32StringMap.keys();
            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.Int32StringMap.get(key);
                const size = __sizeMapEntry_i32_string(key, value);
                if (size > 0) {
                    encoder.uint32(0x1a);
                    encoder.uint32(size);
                    if (key != 0) {
                        encoder.uint32(0x8);
                        encoder.int32(key);
                    }
                    if (value.length > 0) {
                        encoder.uint32(0x12);
                        encoder.uint32(value.length);
                        encoder.string(value);
                    }
                }
            }
        }

        if (this.StringValueMap.size > 0) {
            const keys = this.StringValueMap.keys();
            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.StringValueMap.get(key);
                const size = __sizeMapEntry_string_Value(key, value);
                if (size > 0) {
                    encoder.uint32(0x22);
                    encoder.uint32(size);
                    if (key.length > 0) {
                        encoder.uint32(0xa);
                        encoder.uint32(key.length);
                        encoder.string(key);
                    }

                    const messageSize = value.size();

                    if (messageSize > 0) {
                        encoder.uint32(0x12);
                        encoder.uint32(messageSize);
                        value.encodeU8Array(encoder);
                    }
                }
            }
        }

        return buf;
    } // encode Maps
} // Maps

// __size_int32_repeated_packed

function __size_int32_repeated_packed(value: Array<i32>): u32 {
    let size: u32 = 0;

    for (let n: i32 = 0; n < value.length; n++) {
        size += __proto.Sizer.int32(value[n]);
    }

    return size;
}

// __decodeMap_string_string

function __decodeMap_string_string(
    parentDecoder: __proto.Decoder,
    length: i32,
    map: Map<string, string>
): void {
    const decoder = new __proto.Decoder(
        new DataView(
            parentDecoder.view.buffer,
            parentDecoder.pos + parentDecoder.view.byteOffset,
            length
        )
    );

    let key: string = "";
    let value: string = "";

    while (!decoder.eof()) {
        const tag = decoder.tag();
        const number = tag >>> 3;

        switch (number) {
            case 1: {
                key = decoder.string();
                break;
            }

            case 2: {
                value = decoder.string();
                break;
            }

            default:
                decoder.skipType(tag & 7);
                break;
        }
    }
    map.set(key as string, value as string);
}

// __decodeMap_string_i32

function __decodeMap_string_i32(
    parentDecoder: __proto.Decoder,
    length: i32,
    map: Map<string, i32>
): void {
    const decoder = new __proto.Decoder(
        new DataView(
            parentDecoder.view.buffer,
            parentDecoder.pos + parentDecoder.view.byteOffset,
            length
        )
    );

    let key: string = "";
    let value: i32;

    while (!decoder.eof()) {
        const tag = decoder.tag();
        const number = tag >>> 3;

        switch (number) {
            case 1: {
                key = decoder.string();
                break;
            }

            case 2: {
                value = decoder.int32();
                break;
            }

            default:
                decoder.skipType(tag & 7);
                break;
        }
    }
    map.set(key as string, value as i32);
}

// __decodeMap_i32_string

function __decodeMap_i32_string(
    parentDecoder: __proto.Decoder,
    length: i32,
    map: Map<i32, string>
): void {
    const decoder = new __proto.Decoder(
        new DataView(
            parentDecoder.view.buffer,
            parentDecoder.pos + parentDecoder.view.byteOffset,
            length
        )
    );

    let key: i32;
    let value: string = "";

    while (!decoder.eof()) {
        const tag = decoder.tag();
        const number = tag >>> 3;

        switch (number) {
            case 1: {
                key = decoder.int32();
                break;
            }

            case 2: {
                value = decoder.string();
                break;
            }

            default:
                decoder.skipType(tag & 7);
                break;
        }
    }
    map.set(key as i32, value as string);
}

// __decodeMap_string_Value

function __decodeMap_string_Value(
    parentDecoder: __proto.Decoder,
    length: i32,
    map: Map<string, Value>
): void {
    const decoder = new __proto.Decoder(
        new DataView(
            parentDecoder.view.buffer,
            parentDecoder.pos + parentDecoder.view.byteOffset,
            length
        )
    );

    let key: string = "";
    let value: Value = new Value();

    while (!decoder.eof()) {
        const tag = decoder.tag();
        const number = tag >>> 3;

        switch (number) {
            case 1: {
                key = decoder.string();
                break;
            }

            case 2: {
                const length = decoder.uint32();
                value = Value.decode(
                    new DataView(
                        decoder.view.buffer,
                        decoder.pos + decoder.view.byteOffset,
                        length
                    )
                );
                decoder.skip(length);

                break;
            }

            default:
                decoder.skipType(tag & 7);
                break;
        }
    }
    map.set(key as string, value as Value);
}

// __sizeMapEntry_string_string

function __sizeMapEntry_string_string(key: string, value: string): u32 {
    return (
        (key.length > 0
            ? 1 + __proto.Sizer.varint64(key.length) + key.length
            : 0) +
        (value.length > 0
            ? 1 + __proto.Sizer.varint64(value.length) + value.length
            : 0)
    );
}

// __sizeMapEntry_string_i32

function __sizeMapEntry_string_i32(key: string, value: i32): u32 {
    return (
        (key.length > 0
            ? 1 + __proto.Sizer.varint64(key.length) + key.length
            : 0) + (value == 0 ? 0 : 1 + __proto.Sizer.int32(value))
    );
}

// __sizeMapEntry_i32_string

function __sizeMapEntry_i32_string(key: i32, value: string): u32 {
    return (
        (key == 0 ? 0 : 1 + __proto.Sizer.int32(key)) +
        (value.length > 0
            ? 1 + __proto.Sizer.varint64(value.length) + value.length
            : 0)
    );
}

// __sizeMapEntry_string_Value

function __sizeMapEntry_string_Value(key: string, value: Value): u32 {
    const keySize =
        key.length > 0
            ? 1 + __proto.Sizer.varint64(key.length) + key.length
            : 0;
    const valueSize = value.size();

    if (valueSize == 0) {
        return keySize;
    }

    return keySize + 1 + __proto.Sizer.varint64(valueSize) + valueSize;
}
