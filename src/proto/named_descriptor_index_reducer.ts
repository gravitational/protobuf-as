import { WeightMap, ImmutableFlatTree } from '../structs';
import * as named from './named_descriptor';

/**
 * Performs tree-shaking of the named descriptor index. 
 * Removes unused descriptors. Removes explicitly requested descriptors. Performs integritiy check.
 */
export class NamedDescriptorIndexReducer implements named.DescriptorCollection {
    private weights: WeightMap<string>;
    private tree: ImmutableFlatTree<named.Descriptor>;

    /**
     * Creates DescriptorIndexReducer containing all required fields based on inclusion/exclusion list.
     *
     * @param index Parent index
     * @param include Set of descriptor names to mark as required
     * @param exclude Set of descriptor names to exclude
     */
    constructor(
        index: named.DescriptorCollection,
        include: ReadonlySet<string>,
        exclude: ReadonlySet<string>,
    ) {
        this.weights = new WeightMap<string>();
        this.tree = new ImmutableFlatTree<named.Descriptor>(
            index.values().map((v) => [v.id, v]),
        );
        this.pin(new Set<string>(include));
        this.unpin(new Set<string>(exclude));        
    }

    private pin(keys: ReadonlySet<string>) {
        keys.forEach((key) => {
            // Increase weight if a type is included
            this.weights.increase(key);
            // Increase weights of all referenced messages, enums and namespaces
            this.walk(key, (key) => this.weights.increase(key));
        });
    }

    private unpin(keys: ReadonlySet<string>) {
        keys.forEach((key) => {
            // Explicitly set weight to 0 if a type is excluded
            this.weights.setWeight(key, 0);

            // Decrease weights of all referenced messages, enums and namespaces
            this.walk(key, (key) => this.weights.decrease(key));
        });
    }

    private walk(
        key: string,
        cb: (key: string) => void,
        stack: Set<string> = new Set<string>(),
    ) {
        // Stack is used to prevent circular loops
        if (stack.has(key)) {
            return;
        }
        stack.add(key);

        // Get the item from a tree
        const item = this.tree.get(key);
        if (!item) {   
            return; // Silently, we'll know if structure is broken on calculating brokenLinks()
        }

        const [, desc] = item;

        // Increase weight of referenced message or enum
        if (desc.kind == 'field' && desc.hasOne) {
            cb(desc.hasOne);
            this.walk(desc.hasOne, cb, stack);
        }

        // Increase weight of a namespace (if any)
        if (
            ['namespace', 'message', 'enum'].includes(desc.kind) &&
            desc.namespace != ''
        ) {
            cb(desc.namespace);
            this.walk(desc.namespace, cb, stack);
        }

        // Get all nested fields of a message, follow each hasOne and increase/decrease weight
        if (desc.kind == 'message' || desc.kind == 'enum') {    
            this.tree.descendants(key).forEach(([key, desc]) => {
                if (desc.kind == 'field') {
                    this.walk(key, cb, stack); // Go through field references
                }

                // Increase weight of a nested object
                if (desc.kind == 'field' || desc.kind == 'enum_value' || desc.kind == 'message') {
                    cb(desc.id);
                }
            });
        }
    }

    /**
     * Finds and returns broken references: references to a types which lead to removed items.
     * @returns Broken references in form of array of tuples [source, target]
     */
    brokenReferences(): ReadonlyArray<[string, string]> {
        const broken = new Array<[string, string]>();

        this.tree.forEach(([key, value]) => {
            if (this.weights.getWeight(key) > 0) {
                if (value.kind == 'field' && value.hasOne) {
                    if (this.weights.getWeight(value.hasOne) < 1) {
                        broken.push([key, value.hasOne]);
                    }
                }
            }
        });

        return broken;
    }

    /**
     * Returns array of leftover descriptors
     * @returns Array of descriptors
     */
    values(): ReadonlyArray<named.Descriptor> {
        const values = new Array<named.Descriptor>();
        this.tree.forEach(([key, value]) => {
            if (this.weights.getWeight(key) > 0) {
                values.push(value);
            }
        });

        return values;
    }

    /**
     * Gets a descriptor from the collection
     * @param key Descriptor key
     * @returns Descriptor
     */
    get(key: string): named.Descriptor | undefined {
        if (this.weights.getWeight(key) > 0 || !this.weights.has(key)) {
            const item = this.tree.get(key);
            if (item) {
                return item[1]
            }
        }
        return undefined;
    }
}
