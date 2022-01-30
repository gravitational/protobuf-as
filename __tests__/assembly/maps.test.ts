import { readFileSync } from 'fs';
import { instantiateSync } from '@assemblyscript/loader/umd';
import { Maps } from '../__fixtures__/__ts_proto__/maps/main';
import type * as t from '../__fixtures__/__assembly__/maps-module';
import { benchmark } from "kelonio";

const imports = {
    /* imports go here */
};
const wasmFile = readFileSync(
    __dirname + '/../__fixtures__/__assembly__/maps.wasm',
);
const mod = instantiateSync<typeof t>(wasmFile, imports);
const { __newArrayBuffer, __getArray } = mod.exports;

const MapsWrapper = mod.exports.Maps;

// It is important to test and empty key and empty value
const obj: Maps = {
    StringStringMap: { key1: 'value1', key2: 'value2', key3: '', key4: 'value4', '': 'value5' },
    StringInt32Map: { key1: 1, key2: 2 },
    Int32StringMap: { 1: 'value1', 2: 'value2', 3: '', 4: 'value4' },
    StringValueMap: {
        value1: { Int32s: [1, 2, 3] },
        value2: { Int32s: [1, 2, 3] },
    },
};
const data = Maps.encode(obj).finish();

const buf = __newArrayBuffer(data);
const decoded = MapsWrapper.decodeArrayBuffer(buf);
const maps = MapsWrapper.wrap(decoded);

const encoded = __getArray(maps.encodeU8Array())

describe('maps', () => {
    it('decode()', () => {
        expect(maps.size()).toEqual(data.length);
    });

    it('encode()', () => {
        expect(encoded.length).toEqual(data.byteLength)
        expect(encoded.length).toEqual(maps.size())

        for (let n = 0; n < encoded.length; n++) {
            expect(encoded[n]).toEqual(data[n])
        }
    });

    it('encode() performance', async () => {
        expect(encoded.length).toEqual(maps.size())

        await benchmark.record(
            ["maps.encode()"],
            () => maps.encode(),
            { iterations: 100_000 }
        );
    }, 30_000);
});
