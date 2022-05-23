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
      // tests/__fixtures__/assembly/oneof/encode(tests/__fixtures__/as_proto/oneof/oneof/OneOf) => ~lib/arraybuffer/ArrayBuffer
      obj = __lowerRecord3(obj) || __notnull();
      return __liftBuffer(exports.encode(obj) >>> 0);
    },
    decode(buffer) {
      // tests/__fixtures__/assembly/oneof/decode(~lib/arraybuffer/ArrayBuffer) => tests/__fixtures__/as_proto/oneof/oneof/OneOf
      buffer = __lowerBuffer(buffer) || __notnull();
      return __liftRecord3(exports.decode(buffer) >>> 0);
    },
    size(obj) {
      // tests/__fixtures__/assembly/oneof/size(tests/__fixtures__/as_proto/oneof/oneof/OneOf) => u32
      obj = __lowerRecord3(obj) || __notnull();
      return exports.size(obj) >>> 0;
    },
  }, exports);
  function __lowerRecord4(value) {
    // tests/__fixtures__/as_proto/oneof/oneof/Branch1
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(4, 4));
    new Uint32Array(memory.buffer)[pointer + 0 >>> 2] = __lowerString(value.String) || __notnull();
    exports.__unpin(pointer);
    return pointer;
  }
  function __lowerRecord5(value) {
    // tests/__fixtures__/as_proto/oneof/oneof/Branch2
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(4, 5));
    new Uint32Array(memory.buffer)[pointer + 0 >>> 2] = value.UInt32;
    exports.__unpin(pointer);
    return pointer;
  }
  function __lowerRecord3(value) {
    // tests/__fixtures__/as_proto/oneof/oneof/OneOf
    // Hint: Opt-out from lowering as a record by providing an empty constructor
    if (value == null) return 0;
    const pointer = exports.__pin(exports.__new(37, 3));
    new Uint32Array(memory.buffer)[pointer + 0 >>> 2] = __lowerRecord4(value.Branch1);
    new Uint32Array(memory.buffer)[pointer + 4 >>> 2] = __lowerRecord5(value.Branch2);
    new Uint32Array(memory.buffer)[pointer + 8 >>> 2] = __lowerString(value.NonOneOf1) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 12 >>> 2] = __lowerString(value.Branch3) || __notnull();
    new Int32Array(memory.buffer)[pointer + 16 >>> 2] = value.Branch4;
    new Uint32Array(memory.buffer)[pointer + 20 >>> 2] = __lowerString(value.NonOneOf2) || __notnull();
    new Uint32Array(memory.buffer)[pointer + 24 >>> 2] = __lowerString(value.messageType) || __notnull();
    new Uint8Array(memory.buffer)[pointer + 28 >>> 0] = value.messageType_index;
    new Uint32Array(memory.buffer)[pointer + 32 >>> 2] = __lowerString(value.__oneOf_SecondMessage) || __notnull();
    new Uint8Array(memory.buffer)[pointer + 36 >>> 0] = value.__oneOf_SecondMessage_index;
    exports.__unpin(pointer);
    return pointer;
  }
  function __liftRecord4(pointer) {
    // tests/__fixtures__/as_proto/oneof/oneof/Branch1
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      String: __liftString(new Uint32Array(memory.buffer)[pointer + 0 >>> 2]),
    };
  }
  function __liftRecord5(pointer) {
    // tests/__fixtures__/as_proto/oneof/oneof/Branch2
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      UInt32: new Uint32Array(memory.buffer)[pointer + 0 >>> 2],
    };
  }
  function __liftRecord3(pointer) {
    // tests/__fixtures__/as_proto/oneof/oneof/OneOf
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      Branch1: __liftRecord4(new Uint32Array(memory.buffer)[pointer + 0 >>> 2]),
      Branch2: __liftRecord5(new Uint32Array(memory.buffer)[pointer + 4 >>> 2]),
      NonOneOf1: __liftString(new Uint32Array(memory.buffer)[pointer + 8 >>> 2]),
      Branch3: __liftString(new Uint32Array(memory.buffer)[pointer + 12 >>> 2]),
      Branch4: new Int32Array(memory.buffer)[pointer + 16 >>> 2],
      NonOneOf2: __liftString(new Uint32Array(memory.buffer)[pointer + 20 >>> 2]),
      messageType: __liftString(new Uint32Array(memory.buffer)[pointer + 24 >>> 2]),
      messageType_index: new Uint8Array(memory.buffer)[pointer + 28 >>> 0],
      __oneOf_SecondMessage: __liftString(new Uint32Array(memory.buffer)[pointer + 32 >>> 2]),
      __oneOf_SecondMessage_index: new Uint8Array(memory.buffer)[pointer + 36 >>> 0],
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
))(new URL("oneof.wasm", import.meta.url));
