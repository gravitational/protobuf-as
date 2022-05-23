import { test } from 'uvu';
import * as assert from 'uvu/assert';

import { OneOf } from '../__fixtures__/ts_proto/oneof/main.js';
import { encode, decode, size } from '../__fixtures__/build/oneof.js';

const subject: OneOf = {
    Messages: {$case: "Branch2", Branch2: { UInt32: 99 } },
    NonOneOf1: "foo", 
    NonOneOf2: "bar",
    SecondMessage: {$case: "Branch3", Branch3: "foo" }
};

const data = OneOf.encode(subject).finish()
const buf = data.buffer.slice(data.byteOffset, data.byteOffset+data.byteLength)
const decoded = decode(buf)    
const encoded = encode(decoded)

test('decode()', () => {
    assert.equal(decoded.Branch2?.UInt32, 99)
    assert.equal(decoded.NonOneOf1, 'foo')
    assert.equal(decoded.NonOneOf2, 'bar')
    assert.equal(decoded.Branch3, 'foo')
    assert.equal(decoded.messageType, "Branch2")
    assert.equal(decoded.messageType_index, 2)

    assert.equal(size(decoded), data.length);
})

test('encode()', () => {
    assert.equal(encoded.byteLength, data.byteLength)
    assert.equal(encoded.byteLength, size(decoded))
    assert.equal(encoded.byteLength, buf.byteLength)
    assert.equal(encoded, buf)
})

test.run()