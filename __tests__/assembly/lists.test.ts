import { readFileSync } from 'fs';
import { instantiateSync } from '@assemblyscript/loader/umd';
import { Lists, Enum, Message } from '../__fixtures__/__ts_proto__/lists/main';
import type * as t from '../__fixtures__/__assembly__/lists-module';
import { TextEncoder, TextDecoder } from 'util';

const imports = {
    /* imports go here */
};
const wasmFile = readFileSync(
    __dirname + '/../__fixtures__/__assembly__/lists.wasm',
);
const mod = instantiateSync<typeof t>(wasmFile, imports);
const {
    __newArrayBuffer,
    __pin,
    __unpin,
    __getUint32Array,
    __getArray,
    __getString,
} = mod.exports;

const ListsWrapper = mod.exports.Lists;
const MessageWrapper = mod.exports.Message;

const msg1: Message = { String: 'Message1' };
const msg2: Message = { String: 'Message2' };
const bytes1 = new TextEncoder().encode('Bytes1');
const bytes2 = new TextEncoder().encode('Bytes2');

// It is important to test an empty string within packed array
const obj: Lists = {
    Enums: [Enum.One, Enum.Two],
    Strings: ['String1', 'String2', 'String3', '', 'String4'],
    Bytes: [bytes1, new Uint8Array(0), bytes2],
    Messages: [msg1, msg2],
    Ints: [1024, 2048, 0, 4096],
};

const data = Lists.encode(obj).finish();
const buf = __newArrayBuffer(data);
const decoded = ListsWrapper.decode(buf);
const lists = ListsWrapper.wrap(decoded);
const encoded = __getArray(lists.encodeU8Array())

describe('Lists', () => {
    it('decode()', () => {
        __pin(decoded);
        expect(__getUint32Array(lists.Enums)[1]).toEqual(Enum.Two);
        expect(__getString(__getUint32Array(lists.Strings)[1])).toEqual(
            'String2',
        );
        expect(__getString(__getUint32Array(lists.Strings)[4])).toEqual(
            'String4',
        );

        expect(
            new TextDecoder().decode(
                new Uint8Array(__getArray(__getUint32Array(lists.Bytes)[2])),
            ),
        ).toEqual('Bytes2');

        const message = MessageWrapper.wrap(
            __getUint32Array(lists.Messages)[1],
        );
        expect(__getString(message.String)).toEqual('Message2');

        expect(__getUint32Array(lists.Ints)[1]).toEqual(2048);
        expect(__getUint32Array(lists.Ints)[3]).toEqual(4096);

        __unpin(decoded);

        expect(lists.size()).toEqual(data.length);
    });

    it('encode()', () => {
        expect(encoded.length).toEqual(data.byteLength)
        expect(encoded.length).toEqual(lists.size())
        
        for (let n = 0; n < encoded.length; n++) {
            expect(encoded[n]).toEqual(data[n])
        }
    });
});
