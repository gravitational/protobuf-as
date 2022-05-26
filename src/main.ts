import {
    CodeGeneratorRequest,
    CodeGeneratorResponse,
    CodeGeneratorResponse_Feature,
} from 'ts-proto-descriptors';

import { promisify } from 'util';
import { FlatWalker, FlatWalkerStrategy } from './walker/flat_walker_strategy.js';
import { WalkerASSingleFile, WalkerASMultiFile } from './walker_as/index.js';
import {
    NamedDescriptorIndex,
    DecoratedDescriptorIndex,
    NamedDescriptorIndexReducer,
} from './proto/index.js';
import { parseOptions } from './options.js';
import { readToBuffer } from './internal.js';

async function main() {
    const stdin = await readToBuffer(process.stdin);
    const request = CodeGeneratorRequest.decode(stdin);
    const options = parseOptions(request.parameter);

    request.protoFile.forEach((f) => {
        if ((f.syntax != 'proto3') && (f.syntax != '')) {
            throw new Error(
                `Only proto3 syntax is supported. ${f.name} has ${f.syntax} syntax!`,
            );
        }
    });

    const types = new NamedDescriptorIndex(request);
    const roots: Set<string> = types.rootIDs() as Set<string>;
    options.include.forEach((n:string) => roots.add(n));
    const requiredIDs = new NamedDescriptorIndexReducer(
        types,
        roots,
        new Set<string>(options.exclude),
    );
   
    const brokenReferences = requiredIDs.brokenReferences();
    if (brokenReferences.length > 0) {
        throw new Error(
            `Broken references found: ${brokenReferences
                .map((value:[string, string]) => `${value[0]} references ${value[1]}`)
                .join(
                    ', ',
                )}, please either exclude a type and all it's references`,
        );
    }

    const descriptors = new DecoratedDescriptorIndex(requiredIDs);
    const strategy = new FlatWalkerStrategy(descriptors);

    let walker:FlatWalker = new WalkerASSingleFile(options);
    
    if (options.mode == 'multi') {
        walker = new WalkerASMultiFile(options);
    }
    
    strategy.walk(walker);

    const files = walker.files()
    const response = CodeGeneratorResponse.fromPartial({
        // There is an issue with type declaration in ts-proto-descriptors, ignoring it for now
        /* eslint-disable @typescript-eslint/ban-ts-comment */
        // @ts-ignore
        file: files, 
        supportedFeatures: CodeGeneratorResponse_Feature.FEATURE_PROTO3_OPTIONAL,
    });

    const buffer = CodeGeneratorResponse.encode(response).finish();
    const write = promisify(
        process.stdout.write as (buffer: Buffer) => boolean,
    ).bind(process.stdout);
    await write(Buffer.from(buffer));
}

main()
    .then(() => {
        process.exit(0);
    })
    .catch((e) => {
        process.stderr.write('FAILED!');
        process.stderr.write(e.message);
        process.stderr.write(e.stack);
        process.exit(1);
    });
