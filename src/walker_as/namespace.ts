import { decorated } from "../proto";
import { Writer } from "./walker_as";

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