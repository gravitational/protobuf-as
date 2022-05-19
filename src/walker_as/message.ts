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
    }

    finish(message: decorated.Message) {
        this.p(`
        } // ${relativeName(message.relativeName)}
        `);
    }
}
