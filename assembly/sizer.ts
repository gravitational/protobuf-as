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
