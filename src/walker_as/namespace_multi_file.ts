import { decorated } from "../proto/index.js";
import { Writer } from "./index.js";
import { Options } from '../options.js';
import { namespaceToFileName, getRelPath } from './internal.js';

/**
 * Namespace code blocks
 */
export class NamespaceMultiFile {
    constructor(private p:Writer, private options:Options) {}

    // Generates statement which re-exports embedded namespace to the top level
    parentRef(ns: decorated.Namespace) {
        this.p(`import * as ${ns.name} from './${namespaceToFileName(ns)}'`)        
        this.p(`export { ${ns.name} }`)
    }

    extRef(ns: decorated.Namespace, ext: string) {
        const parts = ext.split(".")
        const top = parts[0]
        this.p(`import * as ${top} from '${getRelPath(ns)}/${top}'`)
    }

    start(ns:decorated.Namespace) {
        this.p(`
            import * as __proto from '${getRelPath(ns)}/__proto'
        `);
    }

    finish(ns:decorated.Namespace, globals: Map<string, string>) {
        globals.forEach((value, key) => {
            this.p(`
                // ${key}
                ${value}
            `)
        });

        if (this.options.typeAliases) {
            this.p('// Type aliases')
            this.options.typeAliases.forEach((value, key) => {
                this.p(`export type ${key} = ${value}`)
            })
        }
    }
}