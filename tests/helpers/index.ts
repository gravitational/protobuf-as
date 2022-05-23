import { CodeGeneratorRequest } from 'ts-proto-descriptors';
import { readFileSync } from 'fs';
import { normalize, join, dirname } from 'path';
import { fileURLToPath } from 'url';

/**
 * Returns CodeGeneratorRequest of a specified proto definition
 * @param name Request name
 * @returns CodeGeneratoRequest
 */
export function getRequest(name: string): CodeGeneratorRequest {
    const fileName = normalize(join(dirname(fileURLToPath(import.meta.url)),  `../__fixtures__/ts_proto/${name}/main.codegenreq`));
    return CodeGeneratorRequest.decode(readFileSync(fileName));
}
