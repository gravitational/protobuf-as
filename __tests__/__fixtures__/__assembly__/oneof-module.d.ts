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
export class Branch1 {
  static wrap(ptr: usize): Branch1;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  String: usize;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export class Branch2 {
  static wrap(ptr: usize): Branch2;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  UInt32: u32;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export class OneOf {
  static wrap(ptr: usize): OneOf;
  valueOf(): usize;
  static MESSAGES_BRANCH_1_INDEX: u8;
  static MESSAGES_BRANCH_2_INDEX: u8;
  static SECOND_MESSAGE_BRANCH_3_INDEX: u8;
  static SECOND_MESSAGE_BRANCH_4_INDEX: u8;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  Branch1: usize;
  Branch2: usize;
  NonOneOf1: usize;
  Branch3: usize;
  Branch4: i32;
  NonOneOf2: usize;
  messageType: usize;
  messageType_index: u8;
  __oneOf_SecondMessage: usize;
  __oneOf_SecondMessage_index: u8;
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
