import { z } from 'zod';

const stringBool = z.optional(z.enum(["true", "false"]));

/**
 * Zod schema used to validate JSON config file
 */
const OptionsSchema = z
    .object({
        exclude: z.optional(z.array(z.string())).default([]),          // IDs of messages, fields, enums and enum values to exclude
        include: z.optional(z.array(z.string())).default([]),          // IDs of messages, fields, enums and enum values to include
        deps: z.enum(["export", "embed", "package"]).default("embed"), // Dependencies: export, embed or leave in package
        enableInterop: stringBool.default("false"),                    // Export or embed __protobuf_* functions from assembly/protobuf_interop.ts
        disablePrettier: z.boolean().default(false),                   // Disable prettier
        targetFileName: z.string().default('assembly.ts'),             // Default export file name
        nullable: stringBool.default("false"),                         // Should embedded messages be nullable
        typeAliases: z.map(z.string(), z.string()).optional(),         // Type aliases
    })
    .strict();

// Array field names
const arrays = ['exclude', 'include'];

// Map field names
const maps = ['typeAliases'];

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

    const obj:{
        [key: string]: string | string[] | Map<string, string>
    } = {};

    raw.split(':')
        .map((v) => v.split('='))
        .forEach(([key, value]) => {
            if (arrays.includes(key)) {
                obj[key] = value.split(",")
            } else if (maps.includes(key)) {
                const items = value.split("+")
                const m = new Map<string, string>()

                for (let i = 0; i < items.length; i+=2) {
                    const key = items[i]
                    const value = items[i+1]
                    m.set(key, value)
                }

                obj[key] = m
            } else {
                obj[key] = value
            }
        });

    return OptionsSchema.parse(obj);
}