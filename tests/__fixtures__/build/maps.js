async function instantiate(module, imports = {}) {
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    encode(obj) {
      // tests/__fixtures__/assembly/maps/encode(tests/__fixtures__/as_proto/maps/maps/Maps) => ~lib/arraybuffer/ArrayBuffer
      obj = __lowerRecord3(obj) || __notnull();
      return __liftBuffer(exports.encode(obj) >>> 0);
    },
    decode(buffer) {
      // tests/__fixtures__/assembly/maps/decode(~lib/arraybuffer/ArrayBuffer) => tests/__fixtures__/as_proto/maps/maps/Maps
      buffer = __lowerBuffer(buffer) || __notnull();
      return __liftRecord3(exports.decode(buffer) >>> 0);
    },
    size(obj) {
      // tests/__fixtures__/assembly/maps/size(tests/__fixtures__/as_proto/maps/maps/Maps) => u32
      obj = __lowerRecord3(obj) || __notnull();
      return exports.size(obj) >>> 0;
    },
  }, exports);
  function __lowerRecord3(value) {
    // tests/__fixtures__/as_proto/maps/maps/Maps
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(20, 3));
    new Uint32Array(memory.buffer)[pointer + 0 >>> 2] = __lowerInternref(value.StringStringMap) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 4 >>> 2] = __lowerInternref(value.StringInt32Map) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 8 >>> 2] = __lowerInternref(value.Int32StringMap) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 12 >>> 2] = __lowerInternref(value.StringValueMap) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 16 >>> 2] = __lowerInternref(value.StringExternalMapValue) || __notnull();
    exports.__unpin(pointer);
    return pointer;
  }
  function __liftRecord3(pointer) {
    // tests/__fixtures__/as_proto/maps/maps/Maps
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      StringStringMap: __liftInternref(new Uint32Array(memory.buffer)[pointer + 0 >>> 2]),
      StringInt32Map: __liftInternref(new Uint32Array(memory.buffer)[pointer + 4 >>> 2]),
      Int32StringMap: __liftInternref(new Uint32Array(memory.buffer)[pointer + 8 >>> 2]),
      StringValueMap: __liftInternref(new Uint32Array(memory.buffer)[pointer + 12 >>> 2]),
      StringExternalMapValue: __liftInternref(new Uint32Array(memory.buffer)[pointer + 16 >>> 2]),
    };
  }
  function __liftBuffer(pointer) {
    if (!pointer) return null;
    return memory.buffer.slice(pointer, pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2]);
  }
  function __lowerBuffer(value) {
    if (value == null) return 0;
    const pointer = exports.__new(value.byteLength, 0) >>> 0;
    new Uint8Array(memory.buffer).set(new Uint8Array(value), pointer);
    return pointer;
  }
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  const registry = new FinalizationRegistry(__release);
  class Internref extends Number {}
  function __liftInternref(pointer) {
    if (!pointer) return null;
    const sentinel = new Internref(__retain(pointer));
    registry.register(sentinel, pointer);
    return sentinel;
  }
  function __lowerInternref(value) {
    if (value == null) return 0;
    if (value instanceof Internref) return value.valueOf();
    throw TypeError("internref expected");
  }
  const refcounts = new Map();
  function __retain(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount) refcounts.set(pointer, refcount + 1);
      else refcounts.set(exports.__pin(pointer), 1);
    }
    return pointer;
  }
  function __release(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount === 1) exports.__unpin(pointer), refcounts.delete(pointer);
      else if (refcount) refcounts.set(pointer, refcount - 1);
      else throw Error(`invalid refcount '${refcount}' for reference '${pointer}'`);
    }
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  return adaptedExports;
}
export const {
  encode,
  decode,
  size
} = await (async url => instantiate(
  await (
    globalThis.fetch && globalThis.WebAssembly.compileStreaming
      ? globalThis.WebAssembly.compileStreaming(globalThis.fetch(url))
      : globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url))
  ), {
  }
))(new URL("maps.wasm", import.meta.url));
