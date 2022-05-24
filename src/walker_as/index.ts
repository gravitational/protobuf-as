export * from './walker_as_single_file.js';
export * from './walker_as_multi_file.js';

// Writer implements generic function which prints a code piece
export type Writer = (value: string) => void;

// Global code blocks registry
export interface GlobalsRegistry {
    registerGlobal(key: string, content: string): void;
}
