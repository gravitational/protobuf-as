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
export class Value {
  static wrap(ptr: usize): Value;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  Int32s: usize;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export class Maps {
  static wrap(ptr: usize): Maps;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  StringStringMap: usize;
  StringInt32Map: usize;
  Int32StringMap: usize;
  StringValueMap: usize;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export const memory: WebAssembly.Memory;
export function __new(size: usize, id: u32): usize;
export function __pin(ptr: usize): usize;
export function __unpin(ptr: usize): void;
export function __collect(): void;
export const __rtti_base: usize;
export const __setArgumentsLength: ((n: i32) => void) | undefined;
