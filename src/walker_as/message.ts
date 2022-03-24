import { decorated } from '../proto';
import { Writer } from './walker_as';
import { relativeName, comment } from './internal';

/**
 * Message code blocks
 */
export class Message {
    constructor(private p: Writer) {}

    start(message: decorated.Message) {
        this.p(comment(message))
        this.p(`export class ${relativeName(message.relativeName)} {`);

        if (message.oneOf.length > 0) {
            message.oneOf.forEach(f => this.p(`public ${Message.oneOfVarName(f)}:string = "";`))
        }
    }

    finish(message: decorated.Message) {
        this.p(`
        } // ${relativeName(message.relativeName)}
        `);
    }

    public static oneOfVarName(f: string): string {
        return `__oneOf_${f}`;
    }
}
