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
      // tests/__fixtures__/assembly/nested/encode(tests/__fixtures__/as_proto/nested/nested/Person) => ~lib/arraybuffer/ArrayBuffer
      obj = __lowerRecord3(obj) || __notnull();
      return __liftBuffer(exports.encode(obj) >>> 0);
    },
    decode(buffer) {
      // tests/__fixtures__/assembly/nested/decode(~lib/arraybuffer/ArrayBuffer) => tests/__fixtures__/as_proto/nested/nested/Person
      buffer = __lowerBuffer(buffer) || __notnull();
      return __liftRecord3(exports.decode(buffer) >>> 0);
    },
    size(obj) {
      // tests/__fixtures__/assembly/nested/size(tests/__fixtures__/as_proto/nested/nested/Person) => u32
      obj = __lowerRecord3(obj) || __notnull();
      return exports.size(obj) >>> 0;
    },
  }, exports);
  function __lowerRecord4(value) {
    // tests/__fixtures__/as_proto/nested/nested/Id
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(8, 4));
    new Uint32Array(memory.buffer)[pointer + 0 >>> 2] = __lowerString(value.Number) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 4 >>> 2] = __lowerString(value.Serial) || __notnull();
    exports.__unpin(pointer);
    return pointer;
  }
  function __lowerRecord3(value) {
    // tests/__fixtures__/as_proto/nested/nested/Person
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(20, 3));
    new Uint32Array(memory.buffer)[pointer + 0 >>> 2] = __lowerString(value.Name) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 4 >>> 2] = __lowerString(value.Surname) || __notnull();
    new Int32Array(memory.buffer)[pointer + 8 >>> 2] = value.Age;
    new Float32Array(memory.buffer)[pointer + 12 >>> 2] = value.Weight;
    new Uint32Array(memory.buffer)[pointer + 16 >>> 2] = __lowerRecord4(value.Id) || __notnull();
    exports.__unpin(pointer);
    return pointer;
  }
  function __liftRecord4(pointer) {
    // tests/__fixtures__/as_proto/nested/nested/Id
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      Number: __liftString(new Uint32Array(memory.buffer)[pointer + 0 >>> 2]),
      Serial: __liftString(new Uint32Array(memory.buffer)[pointer + 4 >>> 2]),
    };
  }
  function __liftRecord3(pointer) {
    // tests/__fixtures__/as_proto/nested/nested/Person
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      Name: __liftString(new Uint32Array(memory.buffer)[pointer + 0 >>> 2]),
      Surname: __liftString(new Uint32Array(memory.buffer)[pointer + 4 >>> 2]),
      Age: new Int32Array(memory.buffer)[pointer + 8 >>> 2],
      Weight: new Float32Array(memory.buffer)[pointer + 12 >>> 2],
      Id: __liftRecord4(new Uint32Array(memory.buffer)[pointer + 16 >>> 2]),
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
))(new URL("nested.wasm", import.meta.url));
