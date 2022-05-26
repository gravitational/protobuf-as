export * as named from './named_descriptor.js';
export * as decorated from './decorated_descriptor.js';
export * from './named_descriptor_index.js';
export * from './named_descriptor_index_reducer.js';
export * from './decorated_descriptor_index.js';

// Represents abstract descriptor collection interface
export interface AbstractDescriptorCollection<T> {
    values(): ReadonlyArray<T>;
    get(key: string): T | undefined;
}
