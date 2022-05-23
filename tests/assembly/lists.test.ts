import { test } from 'uvu';
import * as assert from 'uvu/assert';
import { Lists, Message, Enum } from '../__fixtures__/ts_proto/lists/main.js';
import { encode, decode, size } from '../__fixtures__/build/lists.js';
import { TextEncoder, TextDecoder } from 'util';

const subject: Lists = {
    Enums: [Enum.One, Enum.Two],
    Strings: ['String1', 'String2', 'String3', '', 'String4'],
    Bytes: [
        new TextEncoder().encode('Bytes1'),
        new Uint8Array(0),
        new TextEncoder().encode('Bytes2')
    ],
    Messages: [
        <Message>{ String: 'Message1' },
        <Message>{ String: 'Message2' }
    ],
    Ints: [1024, 2048, 0, 4096],
};

const data = Lists.encode(subject).finish()
const buf = data.buffer.slice(data.byteOffset, data.byteOffset+data.byteLength)
const decoded = decode(buf)    
const encoded = encode(decoded)

test('decode()', () => {
    assert.equal(size(decoded), data.length);

    assert.equal(decoded.Enums[1], Enum.Two)
    assert.equal(decoded.Strings[1], 'String2')
    assert.equal(decoded.Strings[4], 'String4')
    assert.equal(new TextDecoder().decode(new Uint8Array(decoded.Bytes[2])), 'Bytes2')
    assert.equal(decoded.Messages[1].String, 'Message2')
    assert.equal(decoded.Ints[1], 2048)
    assert.equal(decoded.Ints[3], 4096)
})

test('encode()', () => {
    assert.equal(encoded.byteLength, data.byteLength)
    assert.equal(encoded.byteLength, size(decoded))
    assert.equal(encoded.byteLength, buf.byteLength)
    assert.equal(encoded, buf)
})

test.run()