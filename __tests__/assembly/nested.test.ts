import { readFileSync } from 'fs';
import { instantiateSync } from '@assemblyscript/loader/umd';
import { Person } from '../__fixtures__/__ts_proto__/nested/main';
import type * as t from '../__fixtures__/__assembly__/nested-module';

const imports = {
    /* imports go here */
};
const wasmFile = readFileSync(
    __dirname + '/../__fixtures__/__assembly__/nested.wasm',
);
const mod = instantiateSync<typeof t>(wasmFile, imports);
const { __newArrayBuffer, __getString, __pin, __unpin, __getArray } = mod.exports;

const PersonWrapper = mod.exports.Person;
const IdWrapper = mod.exports.Id;

const obj: Person = {
    Name: 'John',
    Surname: 'Doe',
    Age: 0,
    Weight: 0,
    Id: {
        Serial: '4004',
        Number: '123456',
    },
};
const data = Person.encode(obj).finish();
const buf = __newArrayBuffer(data);
const decoded = PersonWrapper.decodeArrayBuffer(buf);
const person = PersonWrapper.wrap(decoded);
const id = IdWrapper.wrap(person.Id);
const encoded = __getArray(person.encodeU8Array())

describe('Nested', () => {
    it('decode()', () => {
        __pin(decoded);

        expect(__getString(person.Name)).toEqual('John');
        expect(__getString(person.Surname)).toEqual('Doe');

        expect(__getString(id.Serial)).toEqual('4004');
        expect(__getString(id.Number)).toEqual('123456');

        __unpin(decoded);

        expect(person.size()).toEqual(data.length);
    });

    it(`encode()`, () => {
        expect(encoded.length).toEqual(data.byteLength)
        expect(encoded.length).toEqual(person.size())

        for (let n = 0; n < encoded.length; n++) {
            expect(encoded[n]).toEqual(data[n])
        }
    })
});
