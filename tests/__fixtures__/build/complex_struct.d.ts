/**
 * tests/__fixtures__/assembly/complex_struct/encode
 * @param obj `tests/__fixtures__/as_proto/complex_struct/complex_struct/Message`
 * @returns `~lib/arraybuffer/ArrayBuffer`
 */
export declare function encode(obj: __Record3<undefined>): ArrayBuffer;
/**
 * tests/__fixtures__/assembly/complex_struct/decode
 * @param buffer `~lib/arraybuffer/ArrayBuffer`
 * @returns `tests/__fixtures__/as_proto/complex_struct/complex_struct/Message`
 */
export declare function decode(buffer: ArrayBuffer): __Record3<never>;
/**
 * tests/__fixtures__/assembly/complex_struct/size
 * @param obj `tests/__fixtures__/as_proto/complex_struct/complex_struct/Message`
 * @returns `u32`
 */
export declare function size(obj: __Record3<undefined>): number;
/** tests/__fixtures__/as_proto/complex_struct/complex_struct/Labels */
declare interface __Record4<TOmittable> {
  /** @type `~lib/array/Array<~lib/string/String>` */
  Labels: Array<string>;
}
/** ~lib/map/Map<~lib/string/String,~lib/string/String> */
declare class __Internref6 extends Number {
  private __nominal6: symbol;
}
/** ~lib/map/Map<~lib/string/String,tests/__fixtures__/as_proto/complex_struct/complex_struct/Message_Message> */
declare class __Internref8 extends Number {
  private __nominal8: symbol;
}
/** tests/__fixtures__/as_proto/complex_struct/complex_struct/external.Properties */
declare interface __Record9<TOmittable> {
  /** @type `~lib/string/String` */
  Properties: string;
}
/** tests/__fixtures__/as_proto/complex_struct/complex_struct/external.external.Properties */
declare interface __Record10<TOmittable> {
  /** @type `~lib/string/String` */
  Properties: string;
}
/** tests/__fixtures__/as_proto/complex_struct/complex_struct/Message */
declare interface __Record3<TOmittable> {
  /** @type `~lib/string/String` */
  String: string;
  /** @type `tests/__fixtures__/as_proto/complex_struct/complex_struct/Labels` */
  Labels: __Record4<undefined>;
  /** @type `u32` */
  Status1: number | TOmittable;
  /** @type `u32` */
  Status2: number | TOmittable;
  /** @type `u32` */
  Network: number | TOmittable;
  /** @type `~lib/array/Array<~lib/string/String>` */
  Strings: Array<string>;
  /** @type `~lib/map/Map<~lib/string/String,~lib/string/String>` */
  MapString: __Internref6;
  /** @type `~lib/map/Map<~lib/string/String,tests/__fixtures__/as_proto/complex_struct/complex_struct/Message_Message>` */
  MapMessages: __Internref8;
  /** @type `tests/__fixtures__/as_proto/complex_struct/complex_struct/external.Properties` */
  Properties1: __Record9<undefined>;
  /** @type `tests/__fixtures__/as_proto/complex_struct/complex_struct/external.external.Properties` */
  Properties2: __Record10<undefined>;
  /** @type `~lib/array/Array<u32>` */
  Services: Array<number>;
}
