import { test } from 'uvu';
import * as assert from 'uvu/assert';
import { parseOptions } from '../src/options.js';

test('parseOptions() returns targetFileName', () => {
    const options = parseOptions('');
    assert.equal(options.targetFileName, 'assembly.ts');
});

test('parseOptions() returns false nullable', () => {
    const options = parseOptions("nullable=false")
    assert.equal(options.nullable, false)
});

test('parseOptions() returns true nullable', () => {
    const options = parseOptions("nullable=TRuE")
    assert.equal(options.nullable, true)
});

test('parseOptions() returns targetFileName and exclude', () => {
    const options = parseOptions(
        'exclude=types.Options:targetFileName=new_assembly.ts',
    );
    assert.equal(options.exclude, ['types.Options']);
    assert.equal(options.targetFileName, 'new_assembly.ts');
});

test('parseOptions() returns typeAliases', () => {
    const options = parseOptions(
        'exclude=types.Options:typeAliases=Event+events.OneOf',
    );
    assert.equal(options.exclude, ['types.Options']);        
    assert.equal(options.typeAliases, new Map<string, string>([["Event", "events.OneOf"]]));
});

test('parseOptions() returns configuration from a file', () => {
    const options = parseOptions("config=tests/__fixtures__/config.json")
    assert.equal(options.exclude, ["Foo", "Bar"])
    assert.equal(options.nullable, true)
    assert.equal(options.deps, "embed")
    assert.equal(options.typeAliases, new Map<string, string>([["Foo", "Bar"]]))
});

test.run()