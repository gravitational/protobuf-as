import { Writer } from "./index.js";
import { readFileSync } from 'fs';
import { staticFiles, embedNamespace } from './internal.js';

/**
 * Before and after code blocks
 */
export class BlocksSingleFile {
    constructor(private p:Writer) {}

    beforeAll() {
        this.p(`namespace ${embedNamespace} {`);
        staticFiles.forEach(f => this.p(readFileSync(f).toString()), this)
        this.p(`};`);
    }

    afterAll(globals: Map<string, string>) {
        globals.forEach((value, key) => {
            this.p(`
                // ${key}
                ${value}
            `)
        });
    }
}
