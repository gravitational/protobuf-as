import { decorated } from '../proto/index.js';
import { Writer } from './index.js';
import { relativeName, comment } from './internal.js';

/**
 * Message code blocks
 */
export class Message {
    constructor(private p: Writer) {}

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
