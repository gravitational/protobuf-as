import { ImmutableFlatTree } from '../../src/structs';

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

describe('ImmutableFlatTree', () => {
    it('descendants(parent,)', () => {
        expect(tree.descendants('root.1.1').size).toEqual(0);
        expect(tree.descendants('root.1').size).toEqual(2);
        expect(tree.descendants('other_root').size).toEqual(1);
    });

    it('descendants(,depth)', () => {
        expect(tree.descendants('root', 1).size).toEqual(2);
        expect(tree.descendants('root', 1).entries).toEqual([
            ['root.1', 'root.1', 2],
            ['root.2', 'root.2', 2],
        ]);
        expect(tree.descendants('root.2').size).toEqual(2);
        expect(tree.descendants('root.2', 1).entries).toEqual([
            ['root.2.1', 'root.2.1', 3],
            ['root.2.2', 'root.2.2', 3],
        ]);
    });

    it('descendants()', () => {
        expect(tree.descendants().size).toEqual(fixture.length);
    });
});
