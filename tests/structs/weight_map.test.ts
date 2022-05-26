import { test } from 'uvu';
import * as assert from 'uvu/assert';

import { WeightMap } from '../../src/structs/index.js';

test('WeightMap.increase(), WeightMap.decrease()', () => {
    const map = new WeightMap<string>();

    map.increase('test', 5);
    assert.equal(map.get('test'), 5);

    map.decrease('test', 3);
    assert.equal(map.get('test'), 2);

    map.decrease('test', 2);
    assert.equal(map.get('test'), 0);
});

test('WeightMap.setWeight(), WeightMap.getWeight()', () => {
    const map = new WeightMap<string>();

    map.setWeight('test', 99);
    assert.equal(map.getWeight('test'), 99);
});

test.run()