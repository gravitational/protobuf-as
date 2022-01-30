export * as named from './named_descriptor';
export * as decorated from './decorated_descriptor';
export * from './named_descriptor_index';
export * from './named_descriptor_index_reducer';
export * from './decorated_descriptor_index';

// Represents abstract descriptor collection interface
export interface AbstractDescriptorCollection<T> {
    values(): ReadonlyArray<T>;
    get(key: string): T;
}
