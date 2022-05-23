import { test } from 'uvu';
import * as assert from 'uvu/assert';
import { Maps } from '../__fixtures__/ts_proto/maps/main.js';
import { encode, decode, size } from '../__fixtures__/build/maps.js';

const subject: Maps = {
    StringStringMap: { key1: 'value1', key2: 'value2', key3: '', key4: 'value4', '': 'value5' },
    StringInt32Map: { key1: 1, key2: 2 },
    Int32StringMap: { 1: 'value1', 2: 'value2', 3: '', 4: 'value4' },
    StringValueMap: {
        value1: { Int32s: [1, 2, 3] },
        value2: { Int32s: [1, 2, 3] },
    },
};

const data = Maps.encode(subject).finish()
const buf = data.buffer.slice(data.byteOffset, data.byteOffset+data.byteLength)
const decoded = decode(buf)    
const encoded = encode(decoded)

test('decode()', () => {
    assert.equal(size(decoded), data.length);
})

test('encode()', () => {
    assert.equal(encoded.byteLength, data.byteLength)
    assert.equal(encoded.byteLength, size(decoded))
    assert.equal(encoded.byteLength, buf.byteLength)
    assert.equal(encoded, buf)
})

test.run()
