/**
 * tests/__fixtures__/assembly/maps/encode
 * @param obj `tests/__fixtures__/as_proto/maps/maps/Maps`
 * @returns `~lib/arraybuffer/ArrayBuffer`
 */
export declare function encode(obj: __Record3<undefined>): ArrayBuffer;
/**
 * tests/__fixtures__/assembly/maps/decode
 * @param buffer `~lib/arraybuffer/ArrayBuffer`
 * @returns `tests/__fixtures__/as_proto/maps/maps/Maps`
 */
export declare function decode(buffer: ArrayBuffer): __Record3<never>;
/**
 * tests/__fixtures__/assembly/maps/size
 * @param obj `tests/__fixtures__/as_proto/maps/maps/Maps`
 * @returns `u32`
 */
export declare function size(obj: __Record3<undefined>): number;
/** ~lib/map/Map<~lib/string/String,~lib/string/String> */
declare class __Internref4 extends Number {
  private __nominal4: symbol;
}
/** ~lib/map/Map<~lib/string/String,i32> */
declare class __Internref5 extends Number {
  private __nominal5: symbol;
}
/** ~lib/map/Map<i32,~lib/string/String> */
declare class __Internref6 extends Number {
  private __nominal6: symbol;
}
/** ~lib/map/Map<~lib/string/String,tests/__fixtures__/as_proto/maps/maps/Value> */
declare class __Internref9 extends Number {
  private __nominal9: symbol;
}
/** ~lib/map/Map<~lib/string/String,tests/__fixtures__/as_proto/maps/maps/external.MapValue> */
declare class __Internref11 extends Number {
  private __nominal11: symbol;
}
/** tests/__fixtures__/as_proto/maps/maps/Maps */
declare interface __Record3<TOmittable> {
  /** @type `~lib/map/Map<~lib/string/String,~lib/string/String>` */
  StringStringMap: __Internref4;
  /** @type `~lib/map/Map<~lib/string/String,i32>` */
  StringInt32Map: __Internref5;
  /** @type `~lib/map/Map<i32,~lib/string/String>` */
  Int32StringMap: __Internref6;
  /** @type `~lib/map/Map<~lib/string/String,tests/__fixtures__/as_proto/maps/maps/Value>` */
  StringValueMap: __Internref9;
  /** @type `~lib/map/Map<~lib/string/String,tests/__fixtures__/as_proto/maps/maps/external.MapValue>` */
  StringExternalMapValue: __Internref11;
}
