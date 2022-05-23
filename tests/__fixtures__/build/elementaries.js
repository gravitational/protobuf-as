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
      // tests/__fixtures__/assembly/elementaries/encode(tests/__fixtures__/as_proto/elementaries/elementaries/Elementaries) => ~lib/arraybuffer/ArrayBuffer
      obj = __lowerRecord3(obj) || __notnull();
      return __liftBuffer(exports.encode(obj) >>> 0);
    },
    decode(buffer) {
      // tests/__fixtures__/assembly/elementaries/decode(~lib/arraybuffer/ArrayBuffer) => tests/__fixtures__/as_proto/elementaries/elementaries/Elementaries
      buffer = __lowerBuffer(buffer) || __notnull();
      return __liftRecord3(exports.decode(buffer) >>> 0);
    },
    size(obj) {
      // tests/__fixtures__/assembly/elementaries/size(tests/__fixtures__/as_proto/elementaries/elementaries/Elementaries) => u32
      obj = __lowerRecord3(obj) || __notnull();
      return exports.size(obj) >>> 0;
    },
  }, exports);
  function __lowerRecord3(value) {
    // tests/__fixtures__/as_proto/elementaries/elementaries/Elementaries
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(113, 3));
    new Float64Array(memory.buffer)[pointer + 0 >>> 3] = value.Double;
    new Float32Array(memory.buffer)[pointer + 8 >>> 2] = value.Float;
    new Int32Array(memory.buffer)[pointer + 12 >>> 2] = value.Int32;
    new Uint32Array(memory.buffer)[pointer + 16 >>> 2] = value.UInt32;
    new Int32Array(memory.buffer)[pointer + 20 >>> 2] = value.SInt32;
    new Uint32Array(memory.buffer)[pointer + 24 >>> 2] = value.Fixed32;
    new Int32Array(memory.buffer)[pointer + 28 >>> 2] = value.SFixed32;
    new BigInt64Array(memory.buffer)[pointer + 32 >>> 3] = value.Int64 || 0n;
    new BigUint64Array(memory.buffer)[pointer + 40 >>> 3] = value.UInt64 || 0n;
    new BigInt64Array(memory.buffer)[pointer + 48 >>> 3] = value.SInt64 || 0n;
    new BigUint64Array(memory.buffer)[pointer + 56 >>> 3] = value.Fixed64 || 0n;
    new BigInt64Array(memory.buffer)[pointer + 64 >>> 3] = value.SFixed64 || 0n;
    new Uint8Array(memory.buffer)[pointer + 72 >>> 0] = value.Bool ? 1 : 0;
    new Uint32Array(memory.buffer)[pointer + 76 >>> 2] = value.Enum;
    new Uint32Array(memory.buffer)[pointer + 80 >>> 2] = __lowerArray((pointer, value) => { new Uint8Array(memory.buffer)[pointer >>> 0] = value; }, 4, 0, value.Bytes) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 84 >>> 2] = __lowerString(value.String) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 88 >>> 2] = __lowerArray((pointer, value) => { new Uint8Array(memory.buffer)[pointer >>> 0] = value; }, 4, 0, value.EmptyBytes) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 92 >>> 2] = __lowerString(value.EmptyString) || __notnull();
    new BigInt64Array(memory.buffer)[pointer + 96 >>> 3] = value.EmptyInt64 || 0n;
    new BigInt64Array(memory.buffer)[pointer + 104 >>> 3] = value.EmptyInt32 || 0n;
    new Uint8Array(memory.buffer)[pointer + 112 >>> 0] = value.EmptyBool ? 1 : 0;
    exports.__unpin(pointer);
    return pointer;
  }
  function __liftRecord3(pointer) {
    // tests/__fixtures__/as_proto/elementaries/elementaries/Elementaries
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      Double: new Float64Array(memory.buffer)[pointer + 0 >>> 3],
      Float: new Float32Array(memory.buffer)[pointer + 8 >>> 2],
      Int32: new Int32Array(memory.buffer)[pointer + 12 >>> 2],
      UInt32: new Uint32Array(memory.buffer)[pointer + 16 >>> 2],
      SInt32: new Int32Array(memory.buffer)[pointer + 20 >>> 2],
      Fixed32: new Uint32Array(memory.buffer)[pointer + 24 >>> 2],
      SFixed32: new Int32Array(memory.buffer)[pointer + 28 >>> 2],
      Int64: new BigInt64Array(memory.buffer)[pointer + 32 >>> 3],
      UInt64: new BigUint64Array(memory.buffer)[pointer + 40 >>> 3],
      SInt64: new BigInt64Array(memory.buffer)[pointer + 48 >>> 3],
      Fixed64: new BigUint64Array(memory.buffer)[pointer + 56 >>> 3],
      SFixed64: new BigInt64Array(memory.buffer)[pointer + 64 >>> 3],
      Bool: new Uint8Array(memory.buffer)[pointer + 72 >>> 0] != 0,
      Enum: new Uint32Array(memory.buffer)[pointer + 76 >>> 2],
      Bytes: __liftArray(pointer => new Uint8Array(memory.buffer)[pointer >>> 0], 0, new Uint32Array(memory.buffer)[pointer + 80 >>> 2]),
      String: __liftString(new Uint32Array(memory.buffer)[pointer + 84 >>> 2]),
      EmptyBytes: __liftArray(pointer => new Uint8Array(memory.buffer)[pointer >>> 0], 0, new Uint32Array(memory.buffer)[pointer + 88 >>> 2]),
      EmptyString: __liftString(new Uint32Array(memory.buffer)[pointer + 92 >>> 2]),
      EmptyInt64: new BigInt64Array(memory.buffer)[pointer + 96 >>> 3],
      EmptyInt32: new BigInt64Array(memory.buffer)[pointer + 104 >>> 3],
      EmptyBool: new Uint8Array(memory.buffer)[pointer + 112 >>> 0] != 0,
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
))(new URL("elementaries.wasm", import.meta.url));
