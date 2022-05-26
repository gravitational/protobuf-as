import { decorated } from "../proto/index.js";
import { Writer } from "./index.js";

/**
 * Namespace code blocks
 */
export class NamespaceSingleFile {
    constructor(private p:Writer) {}

    start(ns:decorated.Namespace) {
        if (ns.name == "") {
            return
        }
        ns.name.split(".").forEach(n => this.p(`export namespace ${n} {`))
    }

    finish(ns:decorated.Namespace) {
        if (ns.name == "") {
            return
        }

        ns.name.split(".").forEach(n => this.p(`} // ${n}`))
    }
}