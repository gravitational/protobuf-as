import { readFileSync } from 'fs';
import { instantiateSync } from '@assemblyscript/loader/umd';
import { OneOf, Branch2 } from "../__fixtures__/__ts_proto__/oneof/main"
import type * as t from "../__fixtures__/__assembly__/oneof-module"

const imports = { /* imports go here */ };
const wasmFile = readFileSync(__dirname + "/../__fixtures__/__assembly__/oneof.wasm");
const mod = instantiateSync<typeof t>(wasmFile, imports)
const { __newArrayBuffer, __pin, __unpin, __getArray } = mod.exports;

const OneOfWrapper = mod.exports.OneOf;
const Branch2Wrapper = mod.exports.Branch2;

const branch2:Branch2 = { UInt32: 99 }
const obj:OneOf = { Messages: {$case: "Branch2", Branch2: branch2 } }

const data = OneOf.encode(obj).finish()

const buf = __newArrayBuffer(data)
const decoded = OneOfWrapper.decodeArrayBuffer(buf)

const oneof = OneOfWrapper.wrap(decoded)
const b2 = Branch2Wrapper.wrap(oneof.Branch2)
const encoded = __getArray(oneof.encodeU8Array())

describe("OneOf", () => {
    it("decode()", () => {

        __pin(decoded)
        expect(b2.UInt32).toEqual(99)
        __unpin(decoded)

        expect(oneof.size()).toEqual(data.length)
    })

    it("encode()", () => {
        expect(encoded.length).toEqual(data.byteLength)
        expect(encoded.length).toEqual(oneof.size())

        for (let n = 0; n < encoded.length; n++) {
            expect(encoded[n]).toEqual(data[n])
        }
    })    
})