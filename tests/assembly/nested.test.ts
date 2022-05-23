import { test } from 'uvu';
import * as assert from 'uvu/assert';

import { Person } from '../__fixtures__/ts_proto/nested/main.js';
import { encode, decode, size } from '../__fixtures__/build/nested.js';

const subject: Person = {
    Name: 'John',
    Surname: 'Doe',
    Age: 0,
    Weight: 0,
    Id: {
        Serial: '4004',
        Number: '123456',
    },
};

const data = Person.encode(subject).finish()
const buf = data.buffer.slice(data.byteOffset, data.byteOffset+data.byteLength)
const decoded = decode(buf)    
const encoded = encode(decoded)

test('decode()', () => {
    assert.equal(decoded.Name, 'John')
    assert.equal(decoded.Surname, 'Doe')
    assert.equal(decoded.Id?.Serial, '4004')
    assert.equal(decoded.Id?.Number, '123456')

    assert.equal(size(decoded), data.length);
})

test('encode()', () => {
    assert.equal(encoded.byteLength, data.byteLength)
    assert.equal(encoded.byteLength, size(decoded))
    assert.equal(encoded.byteLength, buf.byteLength)
    assert.equal(encoded, buf)
})

test.run()
