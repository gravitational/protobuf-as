type i8 = number;
type i16 = number;
type i32 = number;
type i64 = bigint;
type isize = number;
type u8 = number;
type u16 = number;
type u32 = number;
type u64 = bigint;
type usize = number;
type f32 = number;
type f64 = number;
type bool = boolean | number;
export class Encoder {
  static wrap(ptr: usize): Encoder;
  valueOf(): usize;
  buf: usize;
  constructor(buf: usize);
  varint64(value: u64): void;
  int32(value: i32): void;
  int64(value: i64): void;
  uint32(value: u32): void;
  uint64(value: u64): void;
  sint32(value: i32): void;
  sint64(value: i64): void;
  fixed32(value: u32): void;
  sfixed32(value: i32): void;
  fixed64(value: u64): void;
  sfixed64(value: i64): void;
  float(value: f32): void;
  double(value: f64): void;
  bool(value: bool): void;
  string(value: usize): void;
  bytes(value: usize): void;
}
export const memory: WebAssembly.Memory;
export const __setArgumentsLength: ((n: i32) => void) | undefined;
