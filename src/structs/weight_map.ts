/**
 * Utility data type which represents map of key:T => weight (number)
 */
export class WeightMap<K> extends Map<K, number> {
    /**
     * Increases key weight
     * @param key Key
     * @param by Increase by
     */
    increase(key: K, by?: number) {
        const value = this.getWeight(key)
        this.set(key, value + (by || 1))
    }

    /**
     * Decreases key weight
     * @param key Key
     * @param by Decrease by
     */
    decrease(key: K, by?: number) {
        const value = this.getWeight(key)
        this.set(key, value - (by || 1))
    }

    /**
     * Sets weight of a key
     * @param key Key
     * @param value Weight
     */
    setWeight(key: K, value: number) {
        this.set(key, value)
    }

    /**
     * Gets weight of a key
     * @param key Key
     * @param value Weight
     */
    getWeight(key: K): number {
        return this.get(key) || 0
    }
}
