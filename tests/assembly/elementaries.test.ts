import { test } from 'uvu';
import * as assert from 'uvu/assert';
import { Elementaries, Enum } from '../__fixtures__/ts_proto/elementaries/main.js';
import { encode, decode, size } from '../__fixtures__/build/elementaries.js';
import { TextEncoder, TextDecoder } from 'util';

const subject: Elementaries = {
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

const data = Elementaries.encode(subject).finish()
const buf = data.buffer.slice(data.byteOffset, data.byteOffset+data.byteLength)
const decoded = decode(buf)    
const encoded = encode(decoded)

test('encode()', () => {
    assert.equal(size(decoded), data.length);
        
    assert.equal(decoded.Double, 4242.5);
    assert.equal(decoded.Float, 42.5);
    assert.equal(decoded.Int32, -38192);
    assert.equal(decoded.UInt32, 4424);
    assert.equal(decoded.SInt32, -54242);
    assert.equal(decoded.Fixed32, 642);
    assert.equal(decoded.SFixed32, -642);
    assert.equal(decoded.Int64.toString(), '-7424242');
    assert.equal(decoded.UInt64.toString(), '9007199254740991');
    assert.equal(decoded.SInt64.toString(), '-942424242');
    assert.equal(decoded.Fixed64.toString(), '10424242');
    assert.equal(decoded.SFixed64.toString(), '-10424242');
    assert.equal(decoded.Bool, true)
    assert.equal(decoded.Enum, Enum.One);
    assert.equal(new TextDecoder().decode(new Uint8Array(decoded.Bytes)), 'Test')
    assert.equal(decoded.String, 'Test');
})

test('encode()', () => {
    assert.equal(encoded.byteLength, data.byteLength)
    assert.equal(encoded.byteLength, size(decoded))
    assert.equal(encoded.byteLength, buf.byteLength)
    assert.equal(encoded, buf)
});

test.run()