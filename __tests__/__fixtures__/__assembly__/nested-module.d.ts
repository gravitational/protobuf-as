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
export class Person {
  static wrap(ptr: usize): Person;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  Name: usize;
  Surname: usize;
  Age: i32;
  Weight: f32;
  Id: usize;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export class Id {
  static wrap(ptr: usize): Id;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  Number: usize;
  Serial: usize;
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
