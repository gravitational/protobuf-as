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
export namespace elementaries {
  export enum Enum {
    Zero,
    One,
    Two,
  }
  export class Elementaries {
    static wrap(ptr: usize): Elementaries;
    valueOf(): usize;
    static decodeArrayBuffer(buf: usize): usize;
    static decode(view: usize): usize;
    Double: f64;
    Float: f32;
    Int32: i32;
    UInt32: u32;
    SInt32: i32;
    Fixed32: u32;
    SFixed32: i32;
    Int64: i64;
    UInt64: u64;
    SInt64: i64;
    Fixed64: u64;
    SFixed64: u64;
    Bool: bool;
    Enum: u32;
    Bytes: usize;
    String: usize;
    EmptyBytes: usize;
    EmptyString: usize;
    EmptyInt64: i64;
    EmptyInt32: i64;
    EmptyBool: bool;
    size(): u32;
    encode(): usize;
    encodeU8Array(encoder?: usize): usize;
    constructor();
  }
}
export const memory: WebAssembly.Memory;
export function __new(size: usize, id: u32): usize;
export function __pin(ptr: usize): usize;
export function __unpin(ptr: usize): void;
export function __collect(): void;
export const __rtti_base: usize;
export const __setArgumentsLength: ((n: i32) => void) | undefined;
