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
export class Sizer {
  static wrap(ptr: usize): Sizer;
  valueOf(): usize;
  static varint64(value: u64): u32;
  static int32(value: i32): u32;
  static int64(value: i64): u32;
  static uint32(value: u32): u32;
  static uint64(value: u64): u32;
  static sint32(value: i32): u32;
  static sint64(value: i64): u32;
  static string(value: usize): u32;
  static bytes(value: usize): u32;
  constructor();
}
export const memory: WebAssembly.Memory;
export const __setArgumentsLength: ((n: i32) => void) | undefined;
