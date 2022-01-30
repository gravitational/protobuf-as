import { Options } from '../options';
import { Writer } from "./walker_as";
import { readFileSync } from 'fs';

/**
 * Before and after code blocks
 */
export class Blocks {
    static embedNamespace = "__proto";

    constructor(private p:Writer, private options: Options, private staticFiles: string[]) {}

    beforeAll() {
        switch (this.options.deps) {
            case "export":
                this.p(`import { Decoder } from './decoder'`);
                this.p(`import { Encoder } from './encoder'`);
                this.p(`import { Sizer } from './sizer'`);
                break;
            case "embed": {
                const interopFile = this.staticFiles.at(this.staticFiles.length-1)
                this.p(`namespace ${Blocks.embedNamespace} {`);
                this.staticFiles.slice(0,-1).forEach(f => this.p(readFileSync(f).toString()), this)
                this.p(`};`);
                this.p(readFileSync(interopFile).toString())
                
                break;
            }
            case "package":
                this.p(`import { Decoder, Encoder, Sizer } from 'protobuf-as'`);
                break;
        }
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
