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
      // tests/__fixtures__/assembly/complex_struct/encode(tests/__fixtures__/as_proto/complex_struct/complex_struct/Message) => ~lib/arraybuffer/ArrayBuffer
      obj = __lowerRecord3(obj) || __notnull();
      return __liftBuffer(exports.encode(obj) >>> 0);
    },
    decode(buffer) {
      // tests/__fixtures__/assembly/complex_struct/decode(~lib/arraybuffer/ArrayBuffer) => tests/__fixtures__/as_proto/complex_struct/complex_struct/Message
      buffer = __lowerBuffer(buffer) || __notnull();
      return __liftRecord3(exports.decode(buffer) >>> 0);
    },
    size(obj) {
      // tests/__fixtures__/assembly/complex_struct/size(tests/__fixtures__/as_proto/complex_struct/complex_struct/Message) => u32
      obj = __lowerRecord3(obj) || __notnull();
      return exports.size(obj) >>> 0;
    },
  }, exports);
  function __lowerRecord4(value) {
    // tests/__fixtures__/as_proto/complex_struct/complex_struct/Labels
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(4, 4));
    new Uint32Array(memory.buffer)[pointer + 0 >>> 2] = __lowerArray((pointer, value) => { new Uint32Array(memory.buffer)[pointer >>> 2] = __lowerString(value) || __notnull(); }, 5, 2, value.Labels) || __notnull();
    exports.__unpin(pointer);
    return pointer;
  }
  function __lowerRecord9(value) {
    // tests/__fixtures__/as_proto/complex_struct/complex_struct/external.Properties
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(4, 9));
    new Uint32Array(memory.buffer)[pointer + 0 >>> 2] = __lowerString(value.Properties) || __notnull();
    exports.__unpin(pointer);
    return pointer;
  }
  function __lowerRecord10(value) {
    // tests/__fixtures__/as_proto/complex_struct/complex_struct/external.external.Properties
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(4, 10));
    new Uint32Array(memory.buffer)[pointer + 0 >>> 2] = __lowerString(value.Properties) || __notnull();
    exports.__unpin(pointer);
    return pointer;
  }
  function __lowerRecord3(value) {
    // tests/__fixtures__/as_proto/complex_struct/complex_struct/Message
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(44, 3));
    new Uint32Array(memory.buffer)[pointer + 0 >>> 2] = __lowerString(value.String) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 4 >>> 2] = __lowerRecord4(value.Labels) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 8 >>> 2] = value.Status1;
    new Uint32Array(memory.buffer)[pointer + 12 >>> 2] = value.Status2;
    new Uint32Array(memory.buffer)[pointer + 16 >>> 2] = value.Network;
    new Uint32Array(memory.buffer)[pointer + 20 >>> 2] = __lowerArray((pointer, value) => { new Uint32Array(memory.buffer)[pointer >>> 2] = __lowerString(value) || __notnull(); }, 5, 2, value.Strings) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 24 >>> 2] = __lowerInternref(value.MapString) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 28 >>> 2] = __lowerInternref(value.MapMessages) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 32 >>> 2] = __lowerRecord9(value.Properties1) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 36 >>> 2] = __lowerRecord10(value.Properties2) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 40 >>> 2] = __lowerArray((pointer, value) => { new Uint32Array(memory.buffer)[pointer >>> 2] = value; }, 11, 2, value.Services) || __notnull();
    exports.__unpin(pointer);
    return pointer;
  }
  function __liftRecord4(pointer) {
    // tests/__fixtures__/as_proto/complex_struct/complex_struct/Labels
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      Labels: __liftArray(pointer => __liftString(new Uint32Array(memory.buffer)[pointer >>> 2]), 2, new Uint32Array(memory.buffer)[pointer + 0 >>> 2]),
    };
  }
  function __liftRecord9(pointer) {
    // tests/__fixtures__/as_proto/complex_struct/complex_struct/external.Properties
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      Properties: __liftString(new Uint32Array(memory.buffer)[pointer + 0 >>> 2]),
    };
  }
  function __liftRecord10(pointer) {
    // tests/__fixtures__/as_proto/complex_struct/complex_struct/external.external.Properties
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      Properties: __liftString(new Uint32Array(memory.buffer)[pointer + 0 >>> 2]),
    };
  }
  function __liftRecord3(pointer) {
    // tests/__fixtures__/as_proto/complex_struct/complex_struct/Message
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      String: __liftString(new Uint32Array(memory.buffer)[pointer + 0 >>> 2]),
      Labels: __liftRecord4(new Uint32Array(memory.buffer)[pointer + 4 >>> 2]),
      Status1: new Uint32Array(memory.buffer)[pointer + 8 >>> 2],
      Status2: new Uint32Array(memory.buffer)[pointer + 12 >>> 2],
      Network: new Uint32Array(memory.buffer)[pointer + 16 >>> 2],
      Strings: __liftArray(pointer => __liftString(new Uint32Array(memory.buffer)[pointer >>> 2]), 2, new Uint32Array(memory.buffer)[pointer + 20 >>> 2]),
      MapString: __liftInternref(new Uint32Array(memory.buffer)[pointer + 24 >>> 2]),
      MapMessages: __liftInternref(new Uint32Array(memory.buffer)[pointer + 28 >>> 2]),
      Properties1: __liftRecord9(new Uint32Array(memory.buffer)[pointer + 32 >>> 2]),
      Properties2: __liftRecord10(new Uint32Array(memory.buffer)[pointer + 36 >>> 2]),
      Services: __liftArray(pointer => new Uint32Array(memory.buffer)[pointer >>> 2], 2, new Uint32Array(memory.buffer)[pointer + 40 >>> 2]),
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
  function __lowerString(value) {
    if (value == null) return 0;
    const
      length = value.length,
      pointer = exports.__new(length << 1, 1) >>> 0,
      memoryU16 = new Uint16Array(memory.buffer);
    for (let i = 0; i < length; ++i) memoryU16[(pointer >>> 1) + i] = value.charCodeAt(i);
    return pointer;
  }
  function __liftArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      memoryU32 = new Uint32Array(memory.buffer),
      dataStart = memoryU32[pointer + 4 >>> 2],
      length = memoryU32[pointer + 12 >>> 2],
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(dataStart + (i << align >>> 0));
    return values;
  }
  function __lowerArray(lowerElement, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 0)) >>> 0,
      header = exports.__pin(exports.__new(16, id)) >>> 0,
      memoryU32 = new Uint32Array(memory.buffer);
    memoryU32[header + 0 >>> 2] = buffer;
    memoryU32[header + 4 >>> 2] = buffer;
    memoryU32[header + 8 >>> 2] = length << align;
    memoryU32[header + 12 >>> 2] = length;
    for (let i = 0; i < length; ++i) lowerElement(buffer + (i << align >>> 0), values[i]);
    exports.__unpin(buffer);
    exports.__unpin(header);
    return header;
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
))(new URL("complex_struct.wasm", import.meta.url));
