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
export function __protobuf_alloc(length: i32): u64;
export function __protobuf_getLength(view: usize): u32;
export function __protobuf_getAddr(view: usize): usize;
export class Branch1 {
  static wrap(ptr: usize): Branch1;
  valueOf(): usize;
  static decodeArrayBuffer(buf: usize): usize;
  static decode(view: usize): usize;
  String: usize;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export class Branch2 {
  static wrap(ptr: usize): Branch2;
  valueOf(): usize;
  static decodeArrayBuffer(buf: usize): usize;
  static decode(view: usize): usize;
  UInt32: u32;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export class OneOf {
  static wrap(ptr: usize): OneOf;
  valueOf(): usize;
  static decodeArrayBuffer(buf: usize): usize;
  static decode(view: usize): usize;
  __oneOf_Messages: usize;
  __oneOf_SecondMessage: usize;
  Branch1: usize;
  Branch2: usize;
  NonOneOf1: usize;
  Branch3: usize;
  Branch4: i32;
  NonOneOf2: usize;
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
