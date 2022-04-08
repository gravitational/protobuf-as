import { decorated } from '../proto';
import { Writer } from './walker_as';
import { relativeName, comment } from './internal';
import { Options } from '../options';

/**
 * Message code blocks
 */
export class Message {
    constructor(private p: Writer, private options: Options) {}

    start(message: decorated.Message) {
        this.p(comment(message))
        this.p(`export class ${relativeName(message.relativeName)} {`);
        
        if (message.oneOf.length > 0) {
            message.oneOf.forEach(f => this.p(`public ${Message.oneOfVarName(this.options, message.id, f)}:string = "";`))
        }
    }

    finish(message: decorated.Message) {
        this.p(`
        } // ${relativeName(message.relativeName)}
        `);
    }

    public static oneOfVarName(options: Options, id: string, f: string): string {
        if (options.oneOfVarNames) {
            const path = id + "." + f
            const varName = options.oneOfVarNames.get(path)
            if (varName) {
                return varName
            }
        }

        return `__oneOf_${f}`;
    }
}
