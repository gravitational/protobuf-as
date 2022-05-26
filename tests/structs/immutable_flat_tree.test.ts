import { test } from 'uvu';
import * as assert from 'uvu/assert';

import { ImmutableFlatTree } from '../../src/structs/index.js';

const fixture: [string, string][] = [
    ['root', 'root'],
    ['root.1', 'root.1'],
    ['root.1.1', 'root.1.1'],
    ['root.1.2', 'root.1.2'],
    ['root.2', 'root.2'],
    ['root.2.1', 'root.2.1'],
    ['root.2.2', 'root.2.2'],
    ['other_root', 'other_root'],
    ['other_root.1', 'other_root.1'],
];

const tree = new ImmutableFlatTree<string>(fixture);

test('ImmutableFlatTree.descendants(parent,)', () => {
    assert.equal(tree.descendants('root.1.1').size, 0);
    assert.equal(tree.descendants('root.1').size, 2);
    assert.equal(tree.descendants('other_root').size, 1);
});

test('ImmutableFlatTree.descendants(,depth)', () => {
    assert.equal(tree.descendants('root', 1).size, 2);
    assert.equal(tree.descendants('root', 1).entries, [
        ['root.1', 'root.1', 2],
        ['root.2', 'root.2', 2],
    ]);
    assert.equal(tree.descendants('root.2').size, 2);
    assert.equal(tree.descendants('root.2', 1).entries, [
        ['root.2.1', 'root.2.1', 3],
        ['root.2.2', 'root.2.2', 3],
    ]);
});

test('ImmutableFlatTree.descendants()', () => {
    assert.equal(tree.descendants().size, fixture.length);
});

test.run()