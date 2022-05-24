import { File } from '../walker/index.js';
import prettier from 'prettier';

// Options for prettier, TODO: move to WalkerAS
const prettierOptions: prettier.Options = {
    parser: 'typescript',
    tabWidth: 2,
};

export function prettify(files: File[]): File[] {
    return files.map((file: File) => <File>{name: file.name, content: prettier.format(file.content, prettierOptions)});
}