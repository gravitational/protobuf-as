import { decorated } from "../proto/index.js";
import { Writer } from "./walker_as.js";

/**
 * Namespace code blocks
 */
export class Namespace {
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