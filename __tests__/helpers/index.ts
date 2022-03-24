import { CodeGeneratorRequest } from 'ts-proto-descriptors';
import { readFileSync } from 'fs';

/**
 * Returns CodeGeneratorRequest of a specified proto definition
 * @param name Request name
 * @returns CodeGeneratoRequest
 */
export function getRequest(name: string): CodeGeneratorRequest {
    const fileName = `__tests__/__fixtures__/__ts_proto__/${name}/main.codegenreq`;
    return CodeGeneratorRequest.decode(readFileSync(fileName));
}
