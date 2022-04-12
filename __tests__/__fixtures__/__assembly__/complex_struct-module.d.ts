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
export namespace external {
  export class Properties {
    static wrap(ptr: usize): Properties;
    valueOf(): usize;
    static decode(buf: usize): usize;
    static decodeDataView(view: usize): usize;
    Properties: usize;
    size(): u32;
    encode(): usize;
    encodeU8Array(encoder?: usize): usize;
    constructor();
  }
  export namespace external {
    export class Properties {
      static wrap(ptr: usize): Properties;
      valueOf(): usize;
      static decode(buf: usize): usize;
      static decodeDataView(view: usize): usize;
      Properties: usize;
      size(): u32;
      encode(): usize;
      encodeU8Array(encoder?: usize): usize;
      constructor();
    }
  }
}
export namespace google {
  export namespace protobuf {
    export class Timestamp {
      static wrap(ptr: usize): Timestamp;
      valueOf(): usize;
      static decode(buf: usize): usize;
      static decodeDataView(view: usize): usize;
      seconds: i64;
      nanos: i32;
      size(): u32;
      encode(): usize;
      encodeU8Array(encoder?: usize): usize;
      constructor();
    }
  }
}
export enum Status {
  Draft,
  Active,
  Deleted,
}
export class Labels {
  static wrap(ptr: usize): Labels;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  Labels: usize;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export class Message {
  static wrap(ptr: usize): Message;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  String: usize;
  Labels: usize;
  Status1: u32;
  Status2: u32;
  Network: u32;
  Strings: usize;
  MapString: usize;
  MapMessages: usize;
  CircularInstance: usize;
  CircularAInstance: usize;
  Properties1: usize;
  Properties2: usize;
  Services: usize;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export enum Message_Service {
  None,
  Facebook,
  Google,
}
export class Message_Message {
  static wrap(ptr: usize): Message_Message;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  String: usize;
  Messages: usize;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export class Message_Message_Message {
  static wrap(ptr: usize): Message_Message_Message;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  Strings: usize;
  Timestamp: usize;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export class Message_Circular {
  static wrap(ptr: usize): Message_Circular;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  String: usize;
  Circular: usize;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export class Message_CircularA {
  static wrap(ptr: usize): Message_CircularA;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  String: usize;
  CircularB: usize;
  size(): u32;
  encode(): usize;
  encodeU8Array(encoder?: usize): usize;
  constructor();
}
export class Message_CircularB {
  static wrap(ptr: usize): Message_CircularB;
  valueOf(): usize;
  static decode(buf: usize): usize;
  static decodeDataView(view: usize): usize;
  String: usize;
  CircularA: usize;
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
