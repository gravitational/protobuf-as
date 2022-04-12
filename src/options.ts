import { z } from 'zod';
import { readFileSync } from 'fs';

// utility type which represents object parsed from JSON or CLI (keys and values are strings)
type strObj = {[key: string]: string}

// Represents strings meaning true values
const trueValues = ["1", "true"]

// parseArray returns array parsed from string
const parseArray = function(arg: unknown): Array<string> {
    if (typeof arg == "string") {
        return arg.split(",")
    }

    return arg as Array<string>
}

// parseBool returns boolean value parsed from string
const parseBool = function(arg: unknown): boolean {
    if (typeof arg == "string") {
        return trueValues.includes(arg.toLowerCase())
    }

    return arg as boolean
}

// parseMap returns map parsed from a string or object
const parseMap = function(arg: unknown): Map<string, string> {
    if (typeof arg == "string") {
        const m = new Map<string, string>()
        const items = arg.split("+")

        for (let i = 0; i < items.length; i+=2) {
            const key = items[i]
            const value = items[i+1]
            m.set(key, value)
        }

        return m
    }

    if (arg === Object(arg)) {
        const m = new Map<string, string>()
        Object.entries(arg as strObj).forEach(([key, value]) => {
            m.set(key, value)
        })

        return m
    }

    return arg as Map<string, string>;
}

/**
 * Zod schema used to validate JSON config file
 */
const OptionsSchema = z
    .object({
        // Config file name
        config: z.optional(z.string()),
        // IDs of messages, fields, enums and enum values to exclude
        exclude: z.preprocess(parseArray, z.optional(z.array(z.string())).default([])),
        // IDs of messages, fields, enums and enum values to include
        include: z.preprocess(parseArray, z.optional(z.array(z.string())).default([])),
        // Dependencies: export, embed or leave in package
        deps: z.enum(["export", "embed", "package"]).default("embed"),
        // Disable prettier
        disablePrettier: z.preprocess(parseBool, z.boolean().default(false)),
        // Default export file name
        targetFileName: z.string().default('assembly.ts'),
        // Should embedded messages be nullable
        nullable: z.preprocess(parseBool, z.boolean().default(false)),
        // Type aliases
        typeAliases: z.preprocess(parseMap, z.map(z.string(), z.string()).optional()),
        // OneOf discriminator name overrides
        oneOfVarNames: z.preprocess(parseMap, z.map(z.string(), z.string()).optional()),
    })
    .strict();

/**
 * Resulting TypeScript type of OptionsSchema + outDir
 */
export type Options = z.infer<typeof OptionsSchema>;

/**
 * Parses protobuf options string and returns options object.
 * @param raw protoc options string in form of "param=value:param=value,value:param=key;value;key;value"
 * @returns Object of options
 */
export function parseOptions(raw: string): Readonly<Options> {
    if (raw.trim() == '') {
        return OptionsSchema.parse({});
    }

    const obj:strObj = {};

    raw.split(':')
        .map((v) => v.split('='))
        .forEach(([key, value]) => obj[key] = value);

    if (obj.config) {
        const file = readFileSync(obj.config as string)
        const json = JSON.parse(file.toString())
        return OptionsSchema.parse(json)
    }

    return OptionsSchema.parse(obj)
}