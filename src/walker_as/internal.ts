import { decorated, named } from '../proto/index.js';

// Generates "// DEPRECATED" comment
export function deprecatedComment(obj: decorated.Depricable) {
    return `${obj.deprecated ? "// DEPRECATED" : ""}`
}

// Returns message name relative to current namespace, replacing nesting with "_"
export function relativeName(name: string):string {
    return named.normalize(name).replace(/[.]+/g, "_")
}

// Returns message name with namespace, replacing nesting with "_"
export function absoluteName(obj: decorated.Named): string {
    return named.normalize(obj.namespace + "." + relativeName(obj.relativeName))
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