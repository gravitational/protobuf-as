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
    })
    .strict();

// Array field names
const arrays = ['exclude', 'include'];

/**
 * Resulting TypeScript type of OptionsSchema + outDir
 */
export type Options = z.infer<typeof OptionsSchema>;

/**
 * Parses protobuf options string and returns options object.
 * @param raw protoc options string in form of "param=value:param=value"
 * @returns Object of options
 */
export function parseOptions(raw: string): Readonly<Options> {
    const rawObj = {};

    if (raw.trim() == '') {
        return OptionsSchema.parse(rawObj);
    }

    raw.split(':')
        .map((v) => v.split('='))
        .forEach(([key, value]) => (rawObj[key] = value));

    arrays.forEach((k) => {
        if (rawObj[k] == undefined) {
            return;
        }
        rawObj[k] = rawObj[k].split(',');
    });

    return OptionsSchema.parse(rawObj);
}