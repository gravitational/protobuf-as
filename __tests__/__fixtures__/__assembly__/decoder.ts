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
    private buf: Int8Array;
    private pos: i32;

    /**
     * Length stack is used to avoid Reader object recreation when it needs to be passed to a nested object decoder. 
     * The last stack value is treated as current buffer length. Last stack value limits current reader length.
     */
    private lengthStack: Array<i32>;

    constructor(buf: Int8Array) {
        this.buf = buf;
        this.pos = 0;
        this.lengthStack = new Array<i32>();
        this.pushLength(this.buf.length)
    }

    /**
     * Pushes a new absolute length to the stack. This should be called before reader is passed to a child 
     * object decode() method.
     * @param length Last position
     */
    pushLength(length: i32):void {
        this.lengthStack.push(length)
    }

    /**
     * Pops a last value to the stack. This should be called after child object has finished decoding
     */
    popLength():void {
        this.lengthStack.pop()
    }

    /**
     * Gets the current buffer length. It's always the last length stack element.
     * @return Current buffer length
     */
    get currentLength():i32 {
        return this.lengthStack[this.lengthStack.length - 1]
    }

    /**
     * Returns true if current reader has reached it's end
     * @returns True if current reader has reached it's end
     */
    eof():bool {        
        return this.pos >= this.currentLength
    }

    /**
     * An alias method to fetch tag from the reader. Supposed to return tuple of [field number, wire_type].
     * TODO: Replace with return tuple when tuples become implemented in AS.
     * @returns Message tag value
     */
    tag():u32 {
        return this.uint32();
    }

    /**
     * Reads and returns varint number (128 + 10 bits max) from a current position.
     * @returns Returns varint
     */
    varint():u64 {
        let value:u64;
    
        // u32
        value = (         u64(u8(this.buf[this.pos])) & 127       ) >>> 0; if (u8(this.buf[this.pos++]) < 128) return value;
        value = (value | (u64(u8(this.buf[this.pos])) & 127) <<  7) >>> 0; if (u8(this.buf[this.pos++]) < 128) return value;
        value = (value | (u64(u8(this.buf[this.pos])) & 127) << 14) >>> 0; if (u8(this.buf[this.pos++]) < 128) return value;
        value = (value | (u64(u8(this.buf[this.pos])) & 127) << 21) >>> 0; if (u8(this.buf[this.pos++]) < 128) return value; 
        // u32 remainder or u64 byte
        value = (value | (u64(u8(this.buf[this.pos])) & 127) << 28) >>> 0; if (u8(this.buf[this.pos++]) < 128) return value; 
        // u64        
        value = (value | (u64(u8(this.buf[this.pos])) & 127) << 35) >>> 0; if (u8(this.buf[this.pos++]) < 128) return value; 
        value = (value | (u64(u8(this.buf[this.pos])) & 127) << 42 /* 42!!! */) >>> 0; if (u8(this.buf[this.pos++]) < 128) return value; 
        value = (value | (u64(u8(this.buf[this.pos])) & 127) << 49) >>> 0; if (u8(this.buf[this.pos++]) < 128) return value; 
        value = (value | (u64(u8(this.buf[this.pos])) &  127) << 28) >>> 0; if (u8(this.buf[this.pos++]) < 128) return value; 
        // u64 remainder
        value = (value | (u64(u8(this.buf[this.pos])) &  127) << 35) >>> 0; if (u8(this.buf[this.pos++]) < 128) return value; 

        if (this.pos > this.currentLength) {
            this.throwOutOfRange();
        }

        return value
    }

    int32(): i32 { return i32(this.varint()) }
    int64(): i64 { return i32(this.varint()) }
    uint32(): u32 { return u32(this.varint()) }
    uint64(): u64 { return u64(this.varint()); }

    sint32(): i32 {
        const n:u64 = this.varint();
        return i32((n >>> 1) ^ (-(n & 1)));
    }

    sint64(): i64 {
        const n:u64 = this.varint();
        return i64((n >>> 1) ^ (-(n & 1)));
    }

    fixed32(): u32 {
        this.pos += 4;
        if (this.pos > this.currentLength) {
            this.throwOutOfRange();
        }

        // u32(u8) ensures that u8(-1) becomes u32(4294967295) instead of u8(255)
        return (
            u32(u8(this.buf[this.pos - 4])) | 
            u32(u8(this.buf[this.pos - 3])) << 8 | 
            u32(u8(this.buf[this.pos - 2])) << 16 | 
            u32(u8(this.buf[this.pos - 1])) << 24
        );
    }

    sfixed32(): i32 {
        return i32(this.fixed32());
    }

    fixed64(): u64 {
        this.pos += 8;
        if (this.pos > this.currentLength) {
            this.throwOutOfRange();
        }

        return (
            u64(u8(this.buf[this.pos - 8])) | 
            u64(u8(this.buf[this.pos - 7])) << 8 | 
            u64(u8(this.buf[this.pos - 6])) << 16 | 
            u64(u8(this.buf[this.pos - 5])) << 24 |
            u64(u8(this.buf[this.pos - 4])) << 32 |
            u64(u8(this.buf[this.pos - 3])) << 40 |
            u64(u8(this.buf[this.pos - 2])) << 48 |
            u64(u8(this.buf[this.pos - 1])) << 56
        );
    }

    sfixed64(): i64 {
        return i64(this.fixed64());
    }

    float():f32 {
        return f32.reinterpret_i32(this.fixed32());
    }

    double():f64 {
        return f64.reinterpret_i64(this.fixed64());
    }

    bool(): boolean {
        return this.uint32() > 0;
    }

    /**
     * Reads and returns UTF8 string.
     * @returns String
     */
    string():string {
        const len = this.uint32();
        if (this.pos > this.currentLength + len) {
            this.throwOutOfRange()
        }

        const value = String.UTF8.decodeUnsafe(changetype<usize>(this.buf.dataStart)+this.pos, len, false)
        this.pos += len
        return value    
    }

    /**
     * Reads and returns bytes array.
     * @returns UInt8Array of bytes
     */
    bytes():Uint8Array {
        const len = this.uint32();
        if (this.pos > this.currentLength + len) {
            this.throwOutOfRange()
        }

        const a = new Uint8Array(len);
        for (let i:u32 = 0; i < len; i++) {
            a[i] = u8(this.buf[this.pos++])
        }

        return a;
    }

    /**
     * Skips a message field if it can'be recognized by an object's decode() method
     * @param wireType Current wire type
     */
    skipType(wireType: u32):void {
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
                throw new Error(`Invalid wire type ${wireType} at offset ${this.pos}`);
        }
    }

    /**
     * Fast-forwards cursor by length with boundary check
     * @param length Byte length
     */
    private skip(length:u32):void {
        if (this.pos + length > this.currentLength) {
            this.throwOutOfRange();
        }
        this.pos += length;
    }
    
    /**
     * OutOfRange check. Throws an exception if current position exceeds current buffer range
     */
    private throwOutOfRange():void {
        if (this.pos > this.currentLength) {
            throw new Error(`Reader buffer pos ${this.pos} > length ${this.buf.length}`)
        }
    }
};
