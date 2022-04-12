import { readFileSync } from 'fs';
import { instantiateSync } from '@assemblyscript/loader/umd';
import {
    Elementaries,
    Enum,
} from '../__fixtures__/__ts_proto__/elementaries/main';
import type * as t from '../__fixtures__/__assembly__/elementaries-module';
import { TextEncoder, TextDecoder } from 'util';

const imports = {
    /* imports go here */
};
const wasmFile = readFileSync(
    __dirname + '/../__fixtures__/__assembly__/elementaries.wasm',
);
const mod = instantiateSync<typeof t>(wasmFile, imports);
const {
    __pin,
    __unpin,
    __newArrayBuffer,
    __getArray,
    __getArrayBuffer,
    __getString,
} = mod.exports;

const ElementariesWrapper = mod.exports.elementaries.Elementaries;

const obj: Elementaries = {
    Double: 4242.5,
    Float: 42.5,
    Int32: -38192,
    UInt32: 4424,
    SInt32: -54242,
    Fixed32: 642,
    SFixed32: -642,
    Int64: -7424242,
    UInt64: 9007199254740991,
    SInt64: -942424242,
    Fixed64: 10424242,
    SFixed64: -10424242,
    Bool: true,
    Enum: Enum.One,
    Bytes: new TextEncoder().encode('Test'),
    String: 'Test',
    EmptyString: '',
    EmptyBytes: new Uint8Array(),
    EmptyInt64: 0,
    EmptyInt32: 0,
    EmptyBool: false,
};
const data = Elementaries.encode(obj).finish();
const buf = __newArrayBuffer(data);
const decoded = ElementariesWrapper.decode(buf);
const elementaries = ElementariesWrapper.wrap(decoded);
const encoded = __getArray(elementaries.encodeU8Array())
const encodedArrayBuffer = __getArrayBuffer(elementaries.encode())

describe('Elementaries', () => {
    it('decode()', () => {
        __pin(decoded);
        expect(elementaries.Double).toEqual(4242.5);
        expect(elementaries.Float).toEqual(42.5);
        expect(elementaries.Int32).toEqual(-38192);
        expect(elementaries.UInt32).toEqual(4424);
        expect(elementaries.SInt32).toEqual(-54242);
        expect(elementaries.Fixed32).toEqual(642);
        expect(elementaries.SFixed32).toEqual(-642);
        expect(elementaries.Int64.toString()).toEqual('-7424242');
        expect(elementaries.UInt64.toString()).toEqual('9007199254740991');
        expect(elementaries.SInt64.toString()).toEqual('-942424242');
        expect(elementaries.Fixed64.toString()).toEqual('10424242');
        expect(elementaries.SFixed64.toString()).toEqual('-10424242');
        expect(elementaries.Bool).toBeTruthy();
        expect(elementaries.Enum).toEqual(Enum.One);
        expect(
            new TextDecoder().decode(
                new Uint8Array(__getArray(elementaries.Bytes)),
            ),
        ).toEqual('Test');
        expect(__getString(elementaries.String)).toEqual('Test');
        __unpin(decoded);

        expect(elementaries.size()).toEqual(data.length);
    });

    it('encode()', () => {
        expect(encoded.length).toEqual(data.byteLength)
        expect(encoded.length).toEqual(elementaries.size())

        for (let n = 0; n < encoded.length; n++) {
            expect(encoded[n]).toEqual(data[n])
        }

        expect(encodedArrayBuffer.byteLength).toEqual(data.byteLength);

        const view = new DataView(encodedArrayBuffer)
        for (let n = 0; n < encoded.length; n++) {
            expect(encoded[n]).toEqual(view.getUint8(n))
        }
    });
});
