/**
 * tests/__fixtures__/assembly/lists/encode
 * @param obj `tests/__fixtures__/as_proto/lists/lists/Lists`
 * @returns `~lib/arraybuffer/ArrayBuffer`
 */
export declare function encode(obj: __Record3<undefined>): ArrayBuffer;
/**
 * tests/__fixtures__/assembly/lists/decode
 * @param buffer `~lib/arraybuffer/ArrayBuffer`
 * @returns `tests/__fixtures__/as_proto/lists/lists/Lists`
 */
export declare function decode(buffer: ArrayBuffer): __Record3<never>;
/**
 * tests/__fixtures__/assembly/lists/size
 * @param obj `tests/__fixtures__/as_proto/lists/lists/Lists`
 * @returns `u32`
 */
export declare function size(obj: __Record3<undefined>): number;
/** tests/__fixtures__/as_proto/lists/lists/Message */
declare interface __Record8<TOmittable> {
  /** @type `~lib/string/String` */
  String: string;
}
/** tests/__fixtures__/as_proto/lists/lists/Lists */
declare interface __Record3<TOmittable> {
  /** @type `~lib/array/Array<u32>` */
  Enums: Array<number>;
  /** @type `~lib/array/Array<~lib/string/String>` */
  Strings: Array<string>;
  /** @type `~lib/array/Array<~lib/array/Array<u8>>` */
  Bytes: Array<Array<number>>;
  /** @type `~lib/array/Array<tests/__fixtures__/as_proto/lists/lists/Message>` */
  Messages: Array<__Record8<undefined>>;
  /** @type `~lib/array/Array<i32>` */
  Ints: Array<number>;
}
