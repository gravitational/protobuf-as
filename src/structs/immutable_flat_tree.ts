// Key type is always a string
type K = string;

// Internal item storage type
type Item<K, V> = [K, V, number];

// Type of a new item passed to the constructor. Level must be passed internally only.
type NewItem<K, V> = [K, V, number?];

/**
 * Immutable flat tree is the tree where position in hierarchy is defined by a delimited string key.
 */
export class ImmutableFlatTree<V> {
    private items: Item<K, V>[]; // Internally we store key, value and level
    private delimiter: K;

    /**
     * Creates the instance of ImmutableFlatTree from an array of [key, value] tuples
     * @param items Array of [key, value] tuples
     */
    constructor(items: readonly NewItem<K, V>[], delimiter: K = ".") {
        this.delimiter = delimiter;
        this.items = new Array<Item<K, V>>()

        const keys = new Set<K>();

        // Fill in the new items calculating level if necessary, skipping duplicates
        items.forEach(([key, value, level]) => {
            if (!keys.has(key)) {
                this.items.push([key, value, level ? level : this.levelOf(key)])
                keys.add(key)
            }
        })
    }

    private levelOf(value: string): number {
        return value.split(this.delimiter).length
    }

    /**
     * Returns the elements of a tree that meet the condition specified in a callback function.
     * @param predicate A function that accepts up to three arguments. The filter method calls the predicate function one time for each element in the array.
     * @param thisArg An object to which the this keyword can refer in the predicate function. If thisArg is omitted, undefined is used as the this value.
     */
    filter(predicate: (value: Item<K, V>, index?: number, array?: readonly Item<K, V>[]) => Item<K, V>): ImmutableFlatTree<V> {
        return new ImmutableFlatTree(this.items.filter(predicate), this.delimiter)
    };

    /**
     * Returns item descendants
     * @param parent Parent key (or empty for root)
     * @param depth Depth (1 means children)
     * @returns Map of descendants
     */
    descendants(parentKey?: string, depth?: number): ImmutableFlatTree<V> {
        let limit = depth

        if ((parentKey == null) && (depth == null)) {
            return this;
        }

        if (parentKey) {
            const parent = this.get(parentKey)
            if (!parent) {
                // Parent not found: return the empty tree
                return new ImmutableFlatTree<V>([]);
            }

            const [, , parentDepth] = parent
            if ((parentDepth) && (depth)) {
                limit = parentDepth + depth
            }
        }

        return this.filter(item => {
            let match: boolean
            const [key, , level] = item

            if (parentKey) {
                match = key.startsWith(parentKey+this.delimiter) && key != parentKey
            }

            if (limit) {
                match = match && (level <= limit)
            }

            return match ? item : null
        });
    }

    /**
     * Iterates over tree elements
     * @param callbackfn Callback
     * @param thisArg Value of this
     */
    forEach(callbackfn: (value: Item<K, V>, index: number, array: Item<K, V>[]) => void): void {
        this.items.forEach(callbackfn);
    }

    /**
     * Gets tree item by key
     * @param key Item key
     * @returns Tree item
     */
    get(key: K): Item<K, V> {
        return this.items.find((value: Item<K, V>) => value[0] == key ? value : null)
    }

    /**
     * Returns tree length
     */
    get size(): number {
        return this.items.length;
    }

    /**
     * Returns entries as array
     */
    get entries(): ReadonlyArray<Item<K, V>> {
        return this.items
    }
}
