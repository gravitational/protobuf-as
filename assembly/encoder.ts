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
    varint64(value: u64):void {
        let v:u64 = value;

        while (v > 127) {
            this.buf.push(u8(v & 127 | 128))
            v = v >> 7; 
        }

        this.buf.push(u8(v))
    }

    @inline
    int32(value: i32): void { this.varint64(value); }
    
    @inline
    int64(value: i64): void { this.varint64(value); }
    
    @inline
    uint32(value: u32): void { this.varint64(value); }
    
    @inline
    uint64(value: u64): void { this.varint64(value); }

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
        this.buf.push(u8((value >> 24)));
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
        this.buf.push(u8((value >> 56)));
    }
    
    @inline
    sfixed64(value: i64): void {
        this.fixed64(u64(value));
    }

    @inline
    float(value: f32): void {
        this.fixed32(u32(i32.reinterpret_f32(value)))
    }

    @inline
    double(value: f64): void {
        this.fixed64(u64(i64.reinterpret_f64(value)))
    }

    @inline
    bool(value: boolean): void {
        this.buf.push(value ? 1 : 0)
    }

    string(value: string): void {
        const utf8string = new DataView(String.UTF8.encode(value))

        for (let i = 0; i < utf8string.byteLength; i++) {
            this.buf.push(utf8string.getUint8(i))
        }
    }

    @inline
    bytes(value: Array<u8>): void {        
        for (let i = 0; i < value.length; i++) {
            this.buf.push(value[i])
        }
    }
};
