import { decorated, named } from '../proto/index.js';
import path from 'path';
import { fileURLToPath } from 'url';
import changeCase from 'change-case';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// embedNamespace represents Decode, Encode and Size namespace name
export const embedNamespace = "__proto";

// staticFiles represents list of static files to embed/copy
export const staticFiles = [
    path.join(__dirname, '../../assembly/decoder.ts'),
    path.join(__dirname, '../../assembly/encoder.ts'),
    path.join(__dirname, '../../assembly/sizer.ts'),
]

// Generates "// DEPRECATED" comment
export function deprecatedComment(obj: decorated.Depricable) {
    return `${obj.deprecated ? "// DEPRECATED" : ""}`
}

// Returns message name relative to current namespace, replacing nesting with "_"
export function relativeName(name: string):string {
    return named.normalize(name).replace(/[.]+/g, "_")
}

// Returns message name with namespace (if required), replacing nesting with "_"
export function absoluteName(obj: decorated.Named, ns: string): string {
    if (obj.namespace != ns) {
        return named.normalize(obj.namespace + "." + relativeName(obj.relativeName))
    }

    return relativeName(obj.relativeName)    
}

// Returns formatted multiline comment
export function comment(obj: decorated.Commented): string {
    if (obj.comment.trim() == "") {
        return "";
    }

    const lines = obj.comment.split("\n");
    if (lines.length == 1) {
        return "// " + lines.join().trim()
    }

    return "/**\n" + lines.map((value) => " * " + value).join("\n") + "\n */";
}

// Converts namespace to ts file name
export function namespaceToFileName(obj: decorated.Namespace):string {
    return obj.id.split(".").map(v => changeCase.snakeCase(v)).join("/")
}

// Returns relative component of the ts file
export function getRelPath(ns: decorated.Namespace):string {
    const level = ns.id.split(".").length

    // Relative import path to __proto.ts
    let rel = ["."]

    // Nested namespace
    if (level > 1) {
        rel = Array<string>(level-1).fill("..")
    }

    return rel.join("/")
}