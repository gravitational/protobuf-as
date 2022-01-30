import { WeightMap } from '../../src/structs';

describe('WeightMap', () => {
    it('increase(), decrease()', () => {
        const map = new WeightMap<string>();

        map.increase('test', 5);
        expect(map.get('test')).toEqual(5);

        map.decrease('test', 3);
        expect(map.get('test')).toEqual(2);

        map.decrease('test', 2);
        expect(map.get('test')).toEqual(0);
    });
});
