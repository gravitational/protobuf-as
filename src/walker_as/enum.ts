import { decorated } from '../proto';
import { Writer } from "./walker_as";
import { deprecatedComment, relativeName, comment } from "./internal";

/**
 * Enum code blocks
 */
export class Enum {
    constructor(private p:Writer) {}

    start(en:decorated.Enum) {
        this.p(deprecatedComment(en));
        this.p(comment(en));
        this.p(`export enum ${relativeName(en.relativeName)} {`);
    }
    
    value(item:decorated.EnumValue) {
        this.p(comment(item))
        this.p(`${item.name} = ${item.number}, ${deprecatedComment(item)}`)
    }
    
    finish(en:decorated.Enum) {
        this.p(`} // ${relativeName(en.relativeName)}`)
    }    
}