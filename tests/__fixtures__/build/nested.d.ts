/**
 * tests/__fixtures__/assembly/nested/encode
 * @param obj `tests/__fixtures__/as_proto/nested/nested/Person`
 * @returns `~lib/arraybuffer/ArrayBuffer`
 */
export declare function encode(obj: __Record3<undefined>): ArrayBuffer;
/**
 * tests/__fixtures__/assembly/nested/decode
 * @param buffer `~lib/arraybuffer/ArrayBuffer`
 * @returns `tests/__fixtures__/as_proto/nested/nested/Person`
 */
export declare function decode(buffer: ArrayBuffer): __Record3<never>;
/**
 * tests/__fixtures__/assembly/nested/size
 * @param obj `tests/__fixtures__/as_proto/nested/nested/Person`
 * @returns `u32`
 */
export declare function size(obj: __Record3<undefined>): number;
/** tests/__fixtures__/as_proto/nested/nested/Id */
declare interface __Record4<TOmittable> {
  /** @type `~lib/string/String` */
  Number: string;
  /** @type `~lib/string/String` */
  Serial: string;
}
/** tests/__fixtures__/as_proto/nested/nested/Person */
declare interface __Record3<TOmittable> {
  /** @type `~lib/string/String` */
  Name: string;
  /** @type `~lib/string/String` */
  Surname: string;
  /** @type `i32` */
  Age: number | TOmittable;
  /** @type `f32` */
  Weight: number | TOmittable;
  /** @type `tests/__fixtures__/as_proto/nested/nested/Id` */
  Id: __Record4<undefined>;
}
