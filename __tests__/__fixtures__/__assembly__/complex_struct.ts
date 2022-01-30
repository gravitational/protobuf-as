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

export namespace external {
    export class Properties {
        public Properties: string = "";

        // Decodes Properties from an ArrayBuffer
        static decodeArrayBuffer(buf: ArrayBuffer): Properties {
            return Properties.decode(new DataView(buf));
        }

        // Decodes Properties from a DataView
        static decode(view: DataView): Properties {
            const decoder = new __proto.Decoder(view);
            const obj = new Properties();

            while (!decoder.eof()) {
                const tag = decoder.tag();
                const number = tag >>> 3;

                switch (number) {
                    case 1: {
                        obj.Properties = decoder.string();
                        break;
                    }

                    default:
                        decoder.skipType(tag & 7);
                        break;
                }
            }
            return obj;
        } // decode Properties

        public size(): u32 {
            let size: u32 = 0;

            size +=
                this.Properties.length > 0
                    ? 1 +
                      __proto.Sizer.varint64(this.Properties.length) +
                      this.Properties.length
                    : 0;

            return size;
        }

        // Encodes Properties to the DataView
        encode(): DataView {
            const source = this.encodeU8Array();
            const view = new DataView(new ArrayBuffer(source.length));
            for (let i: i32 = 0; i < source.length; i++) {
                view.setUint8(i, source.at(i));
            }
            return view;
        }

        // Encodes Properties to the Array<u8>
        encodeU8Array(
            encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
        ): Array<u8> {
            const buf = encoder.buf;

            if (this.Properties.length > 0) {
                encoder.uint32(0xa);
                encoder.uint32(this.Properties.length);
                encoder.string(this.Properties);
            }

            return buf;
        } // encode Properties
    } // Properties

    export namespace external {
        export class Properties {
            public Properties: string = "";

            // Decodes Properties from an ArrayBuffer
            static decodeArrayBuffer(buf: ArrayBuffer): Properties {
                return Properties.decode(new DataView(buf));
            }

            // Decodes Properties from a DataView
            static decode(view: DataView): Properties {
                const decoder = new __proto.Decoder(view);
                const obj = new Properties();

                while (!decoder.eof()) {
                    const tag = decoder.tag();
                    const number = tag >>> 3;

                    switch (number) {
                        case 1: {
                            obj.Properties = decoder.string();
                            break;
                        }

                        default:
                            decoder.skipType(tag & 7);
                            break;
                    }
                }
                return obj;
            } // decode Properties

            public size(): u32 {
                let size: u32 = 0;

                size +=
                    this.Properties.length > 0
                        ? 1 +
                          __proto.Sizer.varint64(this.Properties.length) +
                          this.Properties.length
                        : 0;

                return size;
            }

            // Encodes Properties to the DataView
            encode(): DataView {
                const source = this.encodeU8Array();
                const view = new DataView(new ArrayBuffer(source.length));
                for (let i: i32 = 0; i < source.length; i++) {
                    view.setUint8(i, source.at(i));
                }
                return view;
            }

            // Encodes Properties to the Array<u8>
            encodeU8Array(
                encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
            ): Array<u8> {
                const buf = encoder.buf;

                if (this.Properties.length > 0) {
                    encoder.uint32(0xa);
                    encoder.uint32(this.Properties.length);
                    encoder.string(this.Properties);
                }

                return buf;
            } // encode Properties
        } // Properties
    } // external
} // external
export namespace google {
    export namespace protobuf {
        /**
         * A Timestamp represents a point in time independent of any time zone or local
         *  calendar, encoded as a count of seconds and fractions of seconds at
         *  nanosecond resolution. The count is relative to an epoch at UTC midnight on
         *  January 1, 1970, in the proleptic Gregorian calendar which extends the
         *  Gregorian calendar backwards to year one.
         *
         *  All minutes are 60 seconds long. Leap seconds are "smeared" so that no leap
         *  second table is needed for interpretation, using a [24-hour linear
         *  smear](https://developers.google.com/time/smear).
         *
         *  The range is from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By
         *  restricting to that range, we ensure that we can convert to and from [RFC
         *  3339](https://www.ietf.org/rfc/rfc3339.txt) date strings.
         *
         *  # Examples
         *
         *  Example 1: Compute Timestamp from POSIX `time()`.
         *
         *      Timestamp timestamp;
         *      timestamp.set_seconds(time(NULL));
         *      timestamp.set_nanos(0);
         *
         *  Example 2: Compute Timestamp from POSIX `gettimeofday()`.
         *
         *      struct timeval tv;
         *      gettimeofday(&tv, NULL);
         *
         *      Timestamp timestamp;
         *      timestamp.set_seconds(tv.tv_sec);
         *      timestamp.set_nanos(tv.tv_usec * 1000);
         *
         *  Example 3: Compute Timestamp from Win32 `GetSystemTimeAsFileTime()`.
         *
         *      FILETIME ft;
         *      GetSystemTimeAsFileTime(&ft);
         *      UINT64 ticks = (((UINT64)ft.dwHighDateTime) << 32) | ft.dwLowDateTime;
         *
         *      // A Windows tick is 100 nanoseconds. Windows epoch 1601-01-01T00:00:00Z
         *      // is 11644473600 seconds before Unix epoch 1970-01-01T00:00:00Z.
         *      Timestamp timestamp;
         *      timestamp.set_seconds((INT64) ((ticks / 10000000) - 11644473600LL));
         *      timestamp.set_nanos((INT32) ((ticks % 10000000) * 100));
         *
         *  Example 4: Compute Timestamp from Java `System.currentTimeMillis()`.
         *
         *      long millis = System.currentTimeMillis();
         *
         *      Timestamp timestamp = Timestamp.newBuilder().setSeconds(millis / 1000)
         *          .setNanos((int) ((millis % 1000) * 1000000)).build();
         *
         *
         *  Example 5: Compute Timestamp from Java `Instant.now()`.
         *
         *      Instant now = Instant.now();
         *
         *      Timestamp timestamp =
         *          Timestamp.newBuilder().setSeconds(now.getEpochSecond())
         *              .setNanos(now.getNano()).build();
         *
         *
         *  Example 6: Compute Timestamp from current time in Python.
         *
         *      timestamp = Timestamp()
         *      timestamp.GetCurrentTime()
         *
         *  # JSON Mapping
         *
         *  In JSON format, the Timestamp type is encoded as a string in the
         *  [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format. That is, the
         *  format is "{year}-{month}-{day}T{hour}:{min}:{sec}[.{frac_sec}]Z"
         *  where {year} is always expressed using four digits while {month}, {day},
         *  {hour}, {min}, and {sec} are zero-padded to two digits each. The fractional
         *  seconds, which can go up to 9 digits (i.e. up to 1 nanosecond resolution),
         *  are optional. The "Z" suffix indicates the timezone ("UTC"); the timezone
         *  is required. A proto3 JSON serializer should always use UTC (as indicated by
         *  "Z") when printing the Timestamp type and a proto3 JSON parser should be
         *  able to accept both UTC and other timezones (as indicated by an offset).
         *
         *  For example, "2017-01-15T01:30:15.01Z" encodes 15.01 seconds past
         *  01:30 UTC on January 15, 2017.
         *
         *  In JavaScript, one can convert a Date object to this format using the
         *  standard
         *  [toISOString()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toISOString)
         *  method. In Python, a standard `datetime.datetime` object can be converted
         *  to this format using
         *  [`strftime`](https://docs.python.org/2/library/time.html#time.strftime) with
         *  the time format spec '%Y-%m-%dT%H:%M:%S.%fZ'. Likewise, in Java, one can use
         *  the Joda Time's [`ISODateTimeFormat.dateTime()`](
         *  http://www.joda.org/joda-time/apidocs/org/joda/time/format/ISODateTimeFormat.html#dateTime%2D%2D
         *  ) to obtain a formatter capable of generating timestamps in this format.
         */
        export class Timestamp {
            /**
             * Represents seconds of UTC time since Unix epoch
             *  1970-01-01T00:00:00Z. Must be from 0001-01-01T00:00:00Z to
             *  9999-12-31T23:59:59Z inclusive.
             */
            public seconds: i64;
            /**
             * Non-negative fractions of a second at nanosecond resolution. Negative
             *  second values with fractions must still have non-negative nanos values
             *  that count forward in time. Must be from 0 to 999,999,999
             *  inclusive.
             */
            public nanos: i32;

            // Decodes Timestamp from an ArrayBuffer
            static decodeArrayBuffer(buf: ArrayBuffer): Timestamp {
                return Timestamp.decode(new DataView(buf));
            }

            // Decodes Timestamp from a DataView
            static decode(view: DataView): Timestamp {
                const decoder = new __proto.Decoder(view);
                const obj = new Timestamp();

                while (!decoder.eof()) {
                    const tag = decoder.tag();
                    const number = tag >>> 3;

                    switch (number) {
                        case 1: {
                            obj.seconds = decoder.int64();
                            break;
                        }
                        case 2: {
                            obj.nanos = decoder.int32();
                            break;
                        }

                        default:
                            decoder.skipType(tag & 7);
                            break;
                    }
                }
                return obj;
            } // decode Timestamp

            public size(): u32 {
                let size: u32 = 0;

                size +=
                    this.seconds == 0
                        ? 0
                        : 1 + __proto.Sizer.int64(this.seconds);
                size +=
                    this.nanos == 0 ? 0 : 1 + __proto.Sizer.int32(this.nanos);

                return size;
            }

            // Encodes Timestamp to the DataView
            encode(): DataView {
                const source = this.encodeU8Array();
                const view = new DataView(new ArrayBuffer(source.length));
                for (let i: i32 = 0; i < source.length; i++) {
                    view.setUint8(i, source.at(i));
                }
                return view;
            }

            // Encodes Timestamp to the Array<u8>
            encodeU8Array(
                encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
            ): Array<u8> {
                const buf = encoder.buf;

                if (this.seconds != 0) {
                    encoder.uint32(0x8);
                    encoder.int64(this.seconds);
                }
                if (this.nanos != 0) {
                    encoder.uint32(0x10);
                    encoder.int32(this.nanos);
                }

                return buf;
            } // encode Timestamp
        } // Timestamp
    } // protobuf
} // google
// Status represents object status
export enum Status {
    Draft = 0,
    Active = 1,
    Deleted = 2,
} // Status
// Labels represents object labels
export class Labels {
    // Labels represents array of labels
    public Labels: Array<string> = new Array<string>();

    // Decodes Labels from an ArrayBuffer
    static decodeArrayBuffer(buf: ArrayBuffer): Labels {
        return Labels.decode(new DataView(buf));
    }

    // Decodes Labels from a DataView
    static decode(view: DataView): Labels {
        const decoder = new __proto.Decoder(view);
        const obj = new Labels();

        while (!decoder.eof()) {
            const tag = decoder.tag();
            const number = tag >>> 3;

            switch (number) {
                case 1: {
                    obj.Labels.push(decoder.string());
                    break;
                }

                default:
                    decoder.skipType(tag & 7);
                    break;
            }
        }
        return obj;
    } // decode Labels

    public size(): u32 {
        let size: u32 = 0;

        size += __size_string_repeated(this.Labels);

        return size;
    }

    // Encodes Labels to the DataView
    encode(): DataView {
        const source = this.encodeU8Array();
        const view = new DataView(new ArrayBuffer(source.length));
        for (let i: i32 = 0; i < source.length; i++) {
            view.setUint8(i, source.at(i));
        }
        return view;
    }

    // Encodes Labels to the Array<u8>
    encodeU8Array(
        encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
        const buf = encoder.buf;

        if (this.Labels.length > 0) {
            for (let n: i32 = 0; n < this.Labels.length; n++) {
                encoder.uint32(0xa);
                encoder.uint32(this.Labels[n].length);
                encoder.string(this.Labels[n]);
            }
        }

        return buf;
    } // encode Labels
} // Labels

// Message is the base message structure
export class Message {
    public String: string = "";
    public Labels: Labels = new Labels();
    public Status1: u32;
    public Status2: u32;
    public Network: u32;
    public Strings: Array<string> = new Array<string>();
    public MapString: Map<string, string> = new Map<string, string>();
    public MapMessages: Map<string, Message_Message> = new Map<
        string,
        Message_Message
    >();
    public CircularInstance: Message_Circular = new Message_Circular();
    public CircularAInstance: Message_CircularA = new Message_CircularA();
    public Properties1: external.Properties = new external.Properties();
    public Properties2: external.external.Properties =
        new external.external.Properties();
    public Services: Array<u32> = new Array<u32>();

    // Decodes Message from an ArrayBuffer
    static decodeArrayBuffer(buf: ArrayBuffer): Message {
        return Message.decode(new DataView(buf));
    }

    // Decodes Message from a DataView
    static decode(view: DataView): Message {
        const decoder = new __proto.Decoder(view);
        const obj = new Message();

        while (!decoder.eof()) {
            const tag = decoder.tag();
            const number = tag >>> 3;

            switch (number) {
                case 1: {
                    obj.String = decoder.string();
                    break;
                }
                case 2: {
                    const length = decoder.uint32();
                    obj.Labels = Labels.decode(
                        new DataView(
                            decoder.view.buffer,
                            decoder.pos + decoder.view.byteOffset,
                            length
                        )
                    );
                    decoder.skip(length);

                    break;
                }
                case 3: {
                    obj.Status1 = decoder.uint32();
                    break;
                }
                case 4: {
                    obj.Status2 = decoder.uint32();
                    break;
                }
                case 5: {
                    obj.Network = decoder.uint32();
                    break;
                }
                case 6: {
                    obj.Strings.push(decoder.string());
                    break;
                }
                case 7: {
                    const length = decoder.uint32();
                    __decodeMap_string_string(decoder, length, obj.MapString);
                    decoder.skip(length);

                    break;
                }
                case 8: {
                    const length = decoder.uint32();
                    __decodeMap_string_Message_Message(
                        decoder,
                        length,
                        obj.MapMessages
                    );
                    decoder.skip(length);

                    break;
                }
                case 9: {
                    const length = decoder.uint32();
                    obj.CircularInstance = Message_Circular.decode(
                        new DataView(
                            decoder.view.buffer,
                            decoder.pos + decoder.view.byteOffset,
                            length
                        )
                    );
                    decoder.skip(length);

                    break;
                }
                case 10: {
                    const length = decoder.uint32();
                    obj.CircularAInstance = Message_CircularA.decode(
                        new DataView(
                            decoder.view.buffer,
                            decoder.pos + decoder.view.byteOffset,
                            length
                        )
                    );
                    decoder.skip(length);

                    break;
                }
                case 11: {
                    const length = decoder.uint32();
                    obj.Properties1 = external.Properties.decode(
                        new DataView(
                            decoder.view.buffer,
                            decoder.pos + decoder.view.byteOffset,
                            length
                        )
                    );
                    decoder.skip(length);

                    break;
                }
                case 12: {
                    const length = decoder.uint32();
                    obj.Properties2 = external.external.Properties.decode(
                        new DataView(
                            decoder.view.buffer,
                            decoder.pos + decoder.view.byteOffset,
                            length
                        )
                    );
                    decoder.skip(length);

                    break;
                }
                case 13: {
                    const endPos = decoder.pos + decoder.uint32();
                    while (decoder.pos <= endPos) {
                        obj.Services.push(decoder.uint32());
                    }

                    break;
                }

                default:
                    decoder.skipType(tag & 7);
                    break;
            }
        }
        return obj;
    } // decode Message

    public size(): u32 {
        let size: u32 = 0;

        size +=
            this.String.length > 0
                ? 1 +
                  __proto.Sizer.varint64(this.String.length) +
                  this.String.length
                : 0;

        if (this.Labels != null) {
            const f: Labels = this.Labels as Labels;
            const messageSize = f.size();

            if (messageSize > 0) {
                size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
            }
        }

        size += this.Status1 == 0 ? 0 : 1 + __proto.Sizer.uint32(this.Status1);
        size += this.Status2 == 0 ? 0 : 1 + __proto.Sizer.uint32(this.Status2);
        size += this.Network == 0 ? 0 : 1 + __proto.Sizer.uint32(this.Network);

        size += __size_string_repeated(this.Strings);

        if (this.MapString.size > 0) {
            const keys = this.MapString.keys();

            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.MapString.get(key);
                const itemSize = __sizeMapEntry_string_string(key, value);
                if (itemSize > 0) {
                    size += 1 + __proto.Sizer.varint64(itemSize) + itemSize;
                }
            }
        }

        if (this.MapMessages.size > 0) {
            const keys = this.MapMessages.keys();

            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.MapMessages.get(key);
                const itemSize = __sizeMapEntry_string_Message_Message(
                    key,
                    value
                );
                if (itemSize > 0) {
                    size += 1 + __proto.Sizer.varint64(itemSize) + itemSize;
                }
            }
        }

        if (this.CircularInstance != null) {
            const f: Message_Circular = this
                .CircularInstance as Message_Circular;
            const messageSize = f.size();

            if (messageSize > 0) {
                size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
            }
        }

        if (this.CircularAInstance != null) {
            const f: Message_CircularA = this
                .CircularAInstance as Message_CircularA;
            const messageSize = f.size();

            if (messageSize > 0) {
                size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
            }
        }

        if (this.Properties1 != null) {
            const f: external.Properties = this
                .Properties1 as external.Properties;
            const messageSize = f.size();

            if (messageSize > 0) {
                size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
            }
        }

        if (this.Properties2 != null) {
            const f: external.external.Properties = this
                .Properties2 as external.external.Properties;
            const messageSize = f.size();

            if (messageSize > 0) {
                size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
            }
        }

        if (this.Services.length > 0) {
            const packedSize = __size_uint32_repeated_packed(this.Services);
            if (packedSize > 0) {
                size += 1 + __proto.Sizer.varint64(packedSize) + packedSize;
            }
        }

        return size;
    }

    // Encodes Message to the DataView
    encode(): DataView {
        const source = this.encodeU8Array();
        const view = new DataView(new ArrayBuffer(source.length));
        for (let i: i32 = 0; i < source.length; i++) {
            view.setUint8(i, source.at(i));
        }
        return view;
    }

    // Encodes Message to the Array<u8>
    encodeU8Array(
        encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
        const buf = encoder.buf;

        if (this.String.length > 0) {
            encoder.uint32(0xa);
            encoder.uint32(this.String.length);
            encoder.string(this.String);
        }

        if (this.Labels != null) {
            const f = this.Labels as Labels;

            const messageSize = f.size();

            if (messageSize > 0) {
                encoder.uint32(0x12);
                encoder.uint32(messageSize);
                f.encodeU8Array(encoder);
            }
        }

        if (this.Status1 != 0) {
            encoder.uint32(0x18);
            encoder.uint32(this.Status1);
        }
        if (this.Status2 != 0) {
            encoder.uint32(0x20);
            encoder.uint32(this.Status2);
        }
        if (this.Network != 0) {
            encoder.uint32(0x28);
            encoder.uint32(this.Network);
        }

        if (this.Strings.length > 0) {
            for (let n: i32 = 0; n < this.Strings.length; n++) {
                encoder.uint32(0x32);
                encoder.uint32(this.Strings[n].length);
                encoder.string(this.Strings[n]);
            }
        }

        if (this.MapString.size > 0) {
            const keys = this.MapString.keys();
            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.MapString.get(key);
                const size = __sizeMapEntry_string_string(key, value);
                if (size > 0) {
                    encoder.uint32(0x3a);
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

        if (this.MapMessages.size > 0) {
            const keys = this.MapMessages.keys();
            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.MapMessages.get(key);
                const size = __sizeMapEntry_string_Message_Message(key, value);
                if (size > 0) {
                    encoder.uint32(0x42);
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

        if (this.CircularInstance != null) {
            const f = this.CircularInstance as Message_Circular;

            const messageSize = f.size();

            if (messageSize > 0) {
                encoder.uint32(0x4a);
                encoder.uint32(messageSize);
                f.encodeU8Array(encoder);
            }
        }

        if (this.CircularAInstance != null) {
            const f = this.CircularAInstance as Message_CircularA;

            const messageSize = f.size();

            if (messageSize > 0) {
                encoder.uint32(0x52);
                encoder.uint32(messageSize);
                f.encodeU8Array(encoder);
            }
        }

        if (this.Properties1 != null) {
            const f = this.Properties1 as external.Properties;

            const messageSize = f.size();

            if (messageSize > 0) {
                encoder.uint32(0x5a);
                encoder.uint32(messageSize);
                f.encodeU8Array(encoder);
            }
        }

        if (this.Properties2 != null) {
            const f = this.Properties2 as external.external.Properties;

            const messageSize = f.size();

            if (messageSize > 0) {
                encoder.uint32(0x62);
                encoder.uint32(messageSize);
                f.encodeU8Array(encoder);
            }
        }

        if (this.Services.length > 0) {
            encoder.uint32(0x6a);
            encoder.uint32(__size_uint32_repeated_packed(this.Services));

            for (let n: i32 = 0; n < this.Services.length; n++) {
                encoder.uint32(this.Services[n]);
            }
        }

        return buf;
    } // encode Message
} // Message

// Enum is nested enum
export enum Message_Service {
    // None
    None = 0,
    // Facebook profile
    Facebook = 1,
    // Google profile
    Google = 2,
} // Message_Service
// Message.Message is the nested Message structure
export class Message_Message {
    public String: string = "";
    public Messages: Map<string, Message_Message> = new Map<
        string,
        Message_Message
    >();

    // Decodes Message_Message from an ArrayBuffer
    static decodeArrayBuffer(buf: ArrayBuffer): Message_Message {
        return Message_Message.decode(new DataView(buf));
    }

    // Decodes Message_Message from a DataView
    static decode(view: DataView): Message_Message {
        const decoder = new __proto.Decoder(view);
        const obj = new Message_Message();

        while (!decoder.eof()) {
            const tag = decoder.tag();
            const number = tag >>> 3;

            switch (number) {
                case 1: {
                    obj.String = decoder.string();
                    break;
                }
                case 2: {
                    const length = decoder.uint32();
                    __decodeMap_string_Message_Message(
                        decoder,
                        length,
                        obj.Messages
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
    } // decode Message_Message

    public size(): u32 {
        let size: u32 = 0;

        size +=
            this.String.length > 0
                ? 1 +
                  __proto.Sizer.varint64(this.String.length) +
                  this.String.length
                : 0;

        if (this.Messages.size > 0) {
            const keys = this.Messages.keys();

            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.Messages.get(key);
                const itemSize = __sizeMapEntry_string_Message_Message(
                    key,
                    value
                );
                if (itemSize > 0) {
                    size += 1 + __proto.Sizer.varint64(itemSize) + itemSize;
                }
            }
        }

        return size;
    }

    // Encodes Message_Message to the DataView
    encode(): DataView {
        const source = this.encodeU8Array();
        const view = new DataView(new ArrayBuffer(source.length));
        for (let i: i32 = 0; i < source.length; i++) {
            view.setUint8(i, source.at(i));
        }
        return view;
    }

    // Encodes Message_Message to the Array<u8>
    encodeU8Array(
        encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
        const buf = encoder.buf;

        if (this.String.length > 0) {
            encoder.uint32(0xa);
            encoder.uint32(this.String.length);
            encoder.string(this.String);
        }

        if (this.Messages.size > 0) {
            const keys = this.Messages.keys();
            for (let i = 0; i < keys.length; i++) {
                const key = keys[i];
                const value = this.Messages.get(key);
                const size = __sizeMapEntry_string_Message_Message(key, value);
                if (size > 0) {
                    encoder.uint32(0x12);
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
    } // encode Message_Message
} // Message_Message

// Message.Message.Message is the Message structure nested into nested structure
export class Message_Message_Message {
    // Example strings
    public Strings: Array<string> = new Array<string>();
    // Protobuf timestamp
    public Timestamp: google.protobuf.Timestamp =
        new google.protobuf.Timestamp();

    // Decodes Message_Message_Message from an ArrayBuffer
    static decodeArrayBuffer(buf: ArrayBuffer): Message_Message_Message {
        return Message_Message_Message.decode(new DataView(buf));
    }

    // Decodes Message_Message_Message from a DataView
    static decode(view: DataView): Message_Message_Message {
        const decoder = new __proto.Decoder(view);
        const obj = new Message_Message_Message();

        while (!decoder.eof()) {
            const tag = decoder.tag();
            const number = tag >>> 3;

            switch (number) {
                case 1: {
                    obj.Strings.push(decoder.string());
                    break;
                }
                case 2: {
                    const length = decoder.uint32();
                    obj.Timestamp = google.protobuf.Timestamp.decode(
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
        return obj;
    } // decode Message_Message_Message

    public size(): u32 {
        let size: u32 = 0;

        size += __size_string_repeated(this.Strings);

        if (this.Timestamp != null) {
            const f: google.protobuf.Timestamp = this
                .Timestamp as google.protobuf.Timestamp;
            const messageSize = f.size();

            if (messageSize > 0) {
                size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
            }
        }

        return size;
    }

    // Encodes Message_Message_Message to the DataView
    encode(): DataView {
        const source = this.encodeU8Array();
        const view = new DataView(new ArrayBuffer(source.length));
        for (let i: i32 = 0; i < source.length; i++) {
            view.setUint8(i, source.at(i));
        }
        return view;
    }

    // Encodes Message_Message_Message to the Array<u8>
    encodeU8Array(
        encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
        const buf = encoder.buf;

        if (this.Strings.length > 0) {
            for (let n: i32 = 0; n < this.Strings.length; n++) {
                encoder.uint32(0xa);
                encoder.uint32(this.Strings[n].length);
                encoder.string(this.Strings[n]);
            }
        }

        if (this.Timestamp != null) {
            const f = this.Timestamp as google.protobuf.Timestamp;

            const messageSize = f.size();

            if (messageSize > 0) {
                encoder.uint32(0x12);
                encoder.uint32(messageSize);
                f.encodeU8Array(encoder);
            }
        }

        return buf;
    } // encode Message_Message_Message
} // Message_Message_Message

export class Message_Circular {
    public String: string = "";
    public Circular: Message_Circular = new Message_Circular();

    // Decodes Message_Circular from an ArrayBuffer
    static decodeArrayBuffer(buf: ArrayBuffer): Message_Circular {
        return Message_Circular.decode(new DataView(buf));
    }

    // Decodes Message_Circular from a DataView
    static decode(view: DataView): Message_Circular {
        const decoder = new __proto.Decoder(view);
        const obj = new Message_Circular();

        while (!decoder.eof()) {
            const tag = decoder.tag();
            const number = tag >>> 3;

            switch (number) {
                case 1: {
                    obj.String = decoder.string();
                    break;
                }
                case 2: {
                    const length = decoder.uint32();
                    obj.Circular = Message_Circular.decode(
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
        return obj;
    } // decode Message_Circular

    public size(): u32 {
        let size: u32 = 0;

        size +=
            this.String.length > 0
                ? 1 +
                  __proto.Sizer.varint64(this.String.length) +
                  this.String.length
                : 0;

        if (this.Circular != null) {
            const f: Message_Circular = this.Circular as Message_Circular;
            const messageSize = f.size();

            if (messageSize > 0) {
                size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
            }
        }

        return size;
    }

    // Encodes Message_Circular to the DataView
    encode(): DataView {
        const source = this.encodeU8Array();
        const view = new DataView(new ArrayBuffer(source.length));
        for (let i: i32 = 0; i < source.length; i++) {
            view.setUint8(i, source.at(i));
        }
        return view;
    }

    // Encodes Message_Circular to the Array<u8>
    encodeU8Array(
        encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
        const buf = encoder.buf;

        if (this.String.length > 0) {
            encoder.uint32(0xa);
            encoder.uint32(this.String.length);
            encoder.string(this.String);
        }

        if (this.Circular != null) {
            const f = this.Circular as Message_Circular;

            const messageSize = f.size();

            if (messageSize > 0) {
                encoder.uint32(0x12);
                encoder.uint32(messageSize);
                f.encodeU8Array(encoder);
            }
        }

        return buf;
    } // encode Message_Circular
} // Message_Circular

export class Message_CircularA {
    public String: string = "";
    public CircularB: Message_CircularB = new Message_CircularB();

    // Decodes Message_CircularA from an ArrayBuffer
    static decodeArrayBuffer(buf: ArrayBuffer): Message_CircularA {
        return Message_CircularA.decode(new DataView(buf));
    }

    // Decodes Message_CircularA from a DataView
    static decode(view: DataView): Message_CircularA {
        const decoder = new __proto.Decoder(view);
        const obj = new Message_CircularA();

        while (!decoder.eof()) {
            const tag = decoder.tag();
            const number = tag >>> 3;

            switch (number) {
                case 1: {
                    obj.String = decoder.string();
                    break;
                }
                case 2: {
                    const length = decoder.uint32();
                    obj.CircularB = Message_CircularB.decode(
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
        return obj;
    } // decode Message_CircularA

    public size(): u32 {
        let size: u32 = 0;

        size +=
            this.String.length > 0
                ? 1 +
                  __proto.Sizer.varint64(this.String.length) +
                  this.String.length
                : 0;

        if (this.CircularB != null) {
            const f: Message_CircularB = this.CircularB as Message_CircularB;
            const messageSize = f.size();

            if (messageSize > 0) {
                size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
            }
        }

        return size;
    }

    // Encodes Message_CircularA to the DataView
    encode(): DataView {
        const source = this.encodeU8Array();
        const view = new DataView(new ArrayBuffer(source.length));
        for (let i: i32 = 0; i < source.length; i++) {
            view.setUint8(i, source.at(i));
        }
        return view;
    }

    // Encodes Message_CircularA to the Array<u8>
    encodeU8Array(
        encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
        const buf = encoder.buf;

        if (this.String.length > 0) {
            encoder.uint32(0xa);
            encoder.uint32(this.String.length);
            encoder.string(this.String);
        }

        if (this.CircularB != null) {
            const f = this.CircularB as Message_CircularB;

            const messageSize = f.size();

            if (messageSize > 0) {
                encoder.uint32(0x12);
                encoder.uint32(messageSize);
                f.encodeU8Array(encoder);
            }
        }

        return buf;
    } // encode Message_CircularA
} // Message_CircularA

export class Message_CircularB {
    public String: string = "";
    public CircularA: Message_CircularA = new Message_CircularA();

    // Decodes Message_CircularB from an ArrayBuffer
    static decodeArrayBuffer(buf: ArrayBuffer): Message_CircularB {
        return Message_CircularB.decode(new DataView(buf));
    }

    // Decodes Message_CircularB from a DataView
    static decode(view: DataView): Message_CircularB {
        const decoder = new __proto.Decoder(view);
        const obj = new Message_CircularB();

        while (!decoder.eof()) {
            const tag = decoder.tag();
            const number = tag >>> 3;

            switch (number) {
                case 1: {
                    obj.String = decoder.string();
                    break;
                }
                case 2: {
                    const length = decoder.uint32();
                    obj.CircularA = Message_CircularA.decode(
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
        return obj;
    } // decode Message_CircularB

    public size(): u32 {
        let size: u32 = 0;

        size +=
            this.String.length > 0
                ? 1 +
                  __proto.Sizer.varint64(this.String.length) +
                  this.String.length
                : 0;

        if (this.CircularA != null) {
            const f: Message_CircularA = this.CircularA as Message_CircularA;
            const messageSize = f.size();

            if (messageSize > 0) {
                size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
            }
        }

        return size;
    }

    // Encodes Message_CircularB to the DataView
    encode(): DataView {
        const source = this.encodeU8Array();
        const view = new DataView(new ArrayBuffer(source.length));
        for (let i: i32 = 0; i < source.length; i++) {
            view.setUint8(i, source.at(i));
        }
        return view;
    }

    // Encodes Message_CircularB to the Array<u8>
    encodeU8Array(
        encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
    ): Array<u8> {
        const buf = encoder.buf;

        if (this.String.length > 0) {
            encoder.uint32(0xa);
            encoder.uint32(this.String.length);
            encoder.string(this.String);
        }

        if (this.CircularA != null) {
            const f = this.CircularA as Message_CircularA;

            const messageSize = f.size();

            if (messageSize > 0) {
                encoder.uint32(0x12);
                encoder.uint32(messageSize);
                f.encodeU8Array(encoder);
            }
        }

        return buf;
    } // encode Message_CircularB
} // Message_CircularB

// __size_string_repeated

function __size_string_repeated(value: Array<string>): u32 {
    let size: u32 = 0;

    for (let n: i32 = 0; n < value.length; n++) {
        size += 1 + __proto.Sizer.varint64(value[n].length) + value[n].length;
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

// __decodeMap_string_Message_Message

function __decodeMap_string_Message_Message(
    parentDecoder: __proto.Decoder,
    length: i32,
    map: Map<string, Message_Message>
): void {
    const decoder = new __proto.Decoder(
        new DataView(
            parentDecoder.view.buffer,
            parentDecoder.pos + parentDecoder.view.byteOffset,
            length
        )
    );

    let key: string = "";
    let value: Message_Message = new Message_Message();

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
                value = Message_Message.decode(
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
    map.set(key as string, value as Message_Message);
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

// __sizeMapEntry_string_Message_Message

function __sizeMapEntry_string_Message_Message(
    key: string,
    value: Message_Message
): u32 {
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

// __size_uint32_repeated_packed

function __size_uint32_repeated_packed(value: Array<u32>): u32 {
    let size: u32 = 0;

    for (let n: i32 = 0; n < value.length; n++) {
        size += __proto.Sizer.uint32(value[n]);
    }

    return size;
}
