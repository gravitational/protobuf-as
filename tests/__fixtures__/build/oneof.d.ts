/**
 * tests/__fixtures__/assembly/oneof/encode
 * @param obj `tests/__fixtures__/as_proto/oneof/oneof/OneOf`
 * @returns `~lib/arraybuffer/ArrayBuffer`
 */
export declare function encode(obj: __Record3<undefined>): ArrayBuffer;
/**
 * tests/__fixtures__/assembly/oneof/decode
 * @param buffer `~lib/arraybuffer/ArrayBuffer`
 * @returns `tests/__fixtures__/as_proto/oneof/oneof/OneOf`
 */
export declare function decode(buffer: ArrayBuffer): __Record3<never>;
/**
 * tests/__fixtures__/assembly/oneof/size
 * @param obj `tests/__fixtures__/as_proto/oneof/oneof/OneOf`
 * @returns `u32`
 */
export declare function size(obj: __Record3<undefined>): number;
/** tests/__fixtures__/as_proto/oneof/oneof/Branch1 */
declare interface __Record4<TOmittable> {
  /** @type `~lib/string/String` */
  String: string;
}
/** tests/__fixtures__/as_proto/oneof/oneof/Branch2 */
declare interface __Record5<TOmittable> {
  /** @type `u32` */
  UInt32: number | TOmittable;
}
/** tests/__fixtures__/as_proto/oneof/oneof/OneOf */
declare interface __Record3<TOmittable> {
  /** @type `tests/__fixtures__/as_proto/oneof/oneof/Branch1 | null` */
  Branch1: __Record4<undefined> | null | TOmittable;
  /** @type `tests/__fixtures__/as_proto/oneof/oneof/Branch2 | null` */
  Branch2: __Record5<undefined> | null | TOmittable;
  /** @type `~lib/string/String` */
  NonOneOf1: string;
  /** @type `~lib/string/String` */
  Branch3: string;
  /** @type `i32` */
  Branch4: number | TOmittable;
  /** @type `~lib/string/String` */
  NonOneOf2: string;
  /** @type `~lib/string/String` */
  messageType: string;
  /** @type `u8` */
  messageType_index: number | TOmittable;
  /** @type `~lib/string/String` */
  __SecondMessage: string;
  /** @type `u8` */
  __SecondMessage_index: number | TOmittable;
}
