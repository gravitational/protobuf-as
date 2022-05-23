import { decorated } from '../proto/index.js';
import { Writer } from './walker_as.js';
import { relativeName, comment } from './internal.js';
import { Options } from '../options.js';

/**
 * Message code blocks
 */
export class Message {
    constructor(private p: Writer, private options: Options) {}

    start(message: decorated.Message) {
        this.p(comment(message))
        this.p(`export class ${relativeName(message.relativeName)} {`);
    }

    finish(message: decorated.Message) {
        this.p(`
        } // ${relativeName(message.relativeName)}
        `);
    }
}
