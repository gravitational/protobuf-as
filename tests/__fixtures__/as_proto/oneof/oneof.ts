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
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 14)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 21)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      // u32 remainder or u64 byte
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 28)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      // u64
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 35)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value =
        (value | ((u64(u8(this.u8at(this.pos))) & 127) << 42)) /* 42!!! */ >>>
        0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 49)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 28)) >>> 0;
      if (u8(this.u8at(this.pos++)) < 128) return value;
      // u64 remainder
      value = (value | ((u64(u8(this.u8at(this.pos))) & 127) << 35)) >>> 0;
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
      const value = String.UTF8.decode(this.view.buffer.slice(p, p + length));
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
export class Branch1 {
  public String: string = "";

  // Decodes Branch1 from an ArrayBuffer
  static decode(buf: ArrayBuffer): Branch1 {
    return Branch1.decodeDataView(new DataView(buf));
  }

  // Decodes Branch1 from a DataView
  static decodeDataView(view: DataView): Branch1 {
    const decoder = new __proto.Decoder(view);
    const obj = new Branch1();

    while (!decoder.eof()) {
      const tag = decoder.tag();
      const number = tag >>> 3;

      switch (number) {
        case 1: {
          obj.String = decoder.string();
          break;
        }

        default:
          decoder.skipType(tag & 7);
          break;
      }
    }
    return obj;
  } // decode Branch1

  public size(): u32 {
    let size: u32 = 0;

    size +=
      this.String.length > 0
        ? 1 + __proto.Sizer.varint64(this.String.length) + this.String.length
        : 0;

    return size;
  }

  // Encodes Branch1 to the ArrayBuffer
  encode(): ArrayBuffer {
    return changetype<ArrayBuffer>(
      StaticArray.fromArray<u8>(this.encodeU8Array())
    );
  }

  // Encodes Branch1 to the Array<u8>
  encodeU8Array(
    encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
  ): Array<u8> {
    const buf = encoder.buf;

    if (this.String.length > 0) {
      encoder.uint32(0xa);
      encoder.uint32(this.String.length);
      encoder.string(this.String);
    }

    return buf;
  } // encode Branch1
} // Branch1

export class Branch2 {
  public UInt32: u32;

  // Decodes Branch2 from an ArrayBuffer
  static decode(buf: ArrayBuffer): Branch2 {
    return Branch2.decodeDataView(new DataView(buf));
  }

  // Decodes Branch2 from a DataView
  static decodeDataView(view: DataView): Branch2 {
    const decoder = new __proto.Decoder(view);
    const obj = new Branch2();

    while (!decoder.eof()) {
      const tag = decoder.tag();
      const number = tag >>> 3;

      switch (number) {
        case 1: {
          obj.UInt32 = decoder.uint32();
          break;
        }

        default:
          decoder.skipType(tag & 7);
          break;
      }
    }
    return obj;
  } // decode Branch2

  public size(): u32 {
    let size: u32 = 0;

    size += this.UInt32 == 0 ? 0 : 1 + __proto.Sizer.uint32(this.UInt32);

    return size;
  }

  // Encodes Branch2 to the ArrayBuffer
  encode(): ArrayBuffer {
    return changetype<ArrayBuffer>(
      StaticArray.fromArray<u8>(this.encodeU8Array())
    );
  }

  // Encodes Branch2 to the Array<u8>
  encodeU8Array(
    encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
  ): Array<u8> {
    const buf = encoder.buf;

    if (this.UInt32 != 0) {
      encoder.uint32(0x8);
      encoder.uint32(this.UInt32);
    }

    return buf;
  } // encode Branch2
} // Branch2

export class OneOf {
  public Branch1: Branch1 | null;
  public Branch2: Branch2 | null;
  public NonOneOf1: string = "";
  public Branch3: string = "";
  public Branch4: i32;
  public NonOneOf2: string = "";

  public messageType: string = "";
  public messageType_index: u8 = 0;

  public __SecondMessage: string = "";
  public __SecondMessage_index: u8 = 0;

  static readonly MESSAGES_BRANCH1_INDEX: u8 = 1;
  static readonly MESSAGES_BRANCH2_INDEX: u8 = 2;
  static readonly SECOND_MESSAGE_BRANCH3_INDEX: u8 = 4;
  static readonly SECOND_MESSAGE_BRANCH4_INDEX: u8 = 5;

  // Decodes OneOf from an ArrayBuffer
  static decode(buf: ArrayBuffer): OneOf {
    return OneOf.decodeDataView(new DataView(buf));
  }

  // Decodes OneOf from a DataView
  static decodeDataView(view: DataView): OneOf {
    const decoder = new __proto.Decoder(view);
    const obj = new OneOf();

    while (!decoder.eof()) {
      const tag = decoder.tag();
      const number = tag >>> 3;

      switch (number) {
        case 1: {
          const length = decoder.uint32();
          obj.Branch1 = Branch1.decodeDataView(
            new DataView(
              decoder.view.buffer,
              decoder.pos + decoder.view.byteOffset,
              length
            )
          );
          decoder.skip(length);

          obj.messageType = "Branch1";
          obj.messageType_index = 1;
          break;
        }
        case 2: {
          const length = decoder.uint32();
          obj.Branch2 = Branch2.decodeDataView(
            new DataView(
              decoder.view.buffer,
              decoder.pos + decoder.view.byteOffset,
              length
            )
          );
          decoder.skip(length);

          obj.messageType = "Branch2";
          obj.messageType_index = 2;
          break;
        }
        case 3: {
          obj.NonOneOf1 = decoder.string();
          break;
        }
        case 4: {
          obj.Branch3 = decoder.string();
          obj.__SecondMessage = "Branch3";
          obj.__SecondMessage_index = 4;
          break;
        }
        case 5: {
          obj.Branch4 = decoder.int32();
          obj.__SecondMessage = "Branch4";
          obj.__SecondMessage_index = 5;
          break;
        }
        case 6: {
          obj.NonOneOf2 = decoder.string();
          break;
        }

        default:
          decoder.skipType(tag & 7);
          break;
      }
    }
    return obj;
  } // decode OneOf

  public size(): u32 {
    let size: u32 = 0;

    if (this.Branch1 != null) {
      const f: Branch1 = this.Branch1 as Branch1;
      const messageSize = f.size();

      if (messageSize > 0) {
        size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
      }
    }

    if (this.Branch2 != null) {
      const f: Branch2 = this.Branch2 as Branch2;
      const messageSize = f.size();

      if (messageSize > 0) {
        size += 1 + __proto.Sizer.varint64(messageSize) + messageSize;
      }
    }

    size +=
      this.NonOneOf1.length > 0
        ? 1 +
          __proto.Sizer.varint64(this.NonOneOf1.length) +
          this.NonOneOf1.length
        : 0;
    size +=
      this.Branch3.length > 0
        ? 1 + __proto.Sizer.varint64(this.Branch3.length) + this.Branch3.length
        : 0;
    size += this.Branch4 == 0 ? 0 : 1 + __proto.Sizer.int32(this.Branch4);
    size +=
      this.NonOneOf2.length > 0
        ? 1 +
          __proto.Sizer.varint64(this.NonOneOf2.length) +
          this.NonOneOf2.length
        : 0;

    return size;
  }

  // Encodes OneOf to the ArrayBuffer
  encode(): ArrayBuffer {
    return changetype<ArrayBuffer>(
      StaticArray.fromArray<u8>(this.encodeU8Array())
    );
  }

  // Encodes OneOf to the Array<u8>
  encodeU8Array(
    encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
  ): Array<u8> {
    const buf = encoder.buf;

    if (this.Branch1 != null) {
      const f = this.Branch1 as Branch1;

      const messageSize = f.size();

      if (messageSize > 0) {
        encoder.uint32(0xa);
        encoder.uint32(messageSize);
        f.encodeU8Array(encoder);
      }
    }

    if (this.Branch2 != null) {
      const f = this.Branch2 as Branch2;

      const messageSize = f.size();

      if (messageSize > 0) {
        encoder.uint32(0x12);
        encoder.uint32(messageSize);
        f.encodeU8Array(encoder);
      }
    }

    if (this.NonOneOf1.length > 0) {
      encoder.uint32(0x1a);
      encoder.uint32(this.NonOneOf1.length);
      encoder.string(this.NonOneOf1);
    }
    if (this.Branch3.length > 0) {
      encoder.uint32(0x22);
      encoder.uint32(this.Branch3.length);
      encoder.string(this.Branch3);
    }
    if (this.Branch4 != 0) {
      encoder.uint32(0x28);
      encoder.int32(this.Branch4);
    }
    if (this.NonOneOf2.length > 0) {
      encoder.uint32(0x32);
      encoder.uint32(this.NonOneOf2.length);
      encoder.string(this.NonOneOf2);
    }

    return buf;
  } // encode OneOf
} // OneOf
