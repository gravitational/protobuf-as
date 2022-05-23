/**
 * tests/__fixtures__/assembly/elementaries/encode
 * @param obj `tests/__fixtures__/as_proto/elementaries/elementaries/Elementaries`
 * @returns `~lib/arraybuffer/ArrayBuffer`
 */
export declare function encode(obj: __Record3<undefined>): ArrayBuffer;
/**
 * tests/__fixtures__/assembly/elementaries/decode
 * @param buffer `~lib/arraybuffer/ArrayBuffer`
 * @returns `tests/__fixtures__/as_proto/elementaries/elementaries/Elementaries`
 */
export declare function decode(buffer: ArrayBuffer): __Record3<never>;
/**
 * tests/__fixtures__/assembly/elementaries/size
 * @param obj `tests/__fixtures__/as_proto/elementaries/elementaries/Elementaries`
 * @returns `u32`
 */
export declare function size(obj: __Record3<undefined>): number;
/** tests/__fixtures__/as_proto/elementaries/elementaries/Elementaries */
declare interface __Record3<TOmittable> {
  /** @type `f64` */
  Double: number | TOmittable;
  /** @type `f32` */
  Float: number | TOmittable;
  /** @type `i32` */
  Int32: number | TOmittable;
  /** @type `u32` */
  UInt32: number | TOmittable;
  /** @type `i32` */
  SInt32: number | TOmittable;
  /** @type `u32` */
  Fixed32: number | TOmittable;
  /** @type `i32` */
  SFixed32: number | TOmittable;
  /** @type `i64` */
  Int64: bigint | TOmittable;
  /** @type `u64` */
  UInt64: bigint | TOmittable;
  /** @type `i64` */
  SInt64: bigint | TOmittable;
  /** @type `u64` */
  Fixed64: bigint | TOmittable;
  /** @type `i64` */
  SFixed64: bigint | TOmittable;
  /** @type `bool` */
  Bool: boolean | TOmittable;
  /** @type `u32` */
  Enum: number | TOmittable;
  /** @type `~lib/array/Array<u8>` */
  Bytes: Array<number>;
  /** @type `~lib/string/String` */
  String: string;
  /** @type `~lib/array/Array<u8>` */
  EmptyBytes: Array<number>;
  /** @type `~lib/string/String` */
  EmptyString: string;
  /** @type `i64` */
  EmptyInt64: bigint | TOmittable;
  /** @type `i64` */
  EmptyInt32: bigint | TOmittable;
  /** @type `bool` */
  EmptyBool: boolean | TOmittable;
}
