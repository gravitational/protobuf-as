import {
    CodeGeneratorRequest,
    CodeGeneratorResponse,
    CodeGeneratorResponse_Feature,
} from 'ts-proto-descriptors';

import { promisify } from 'util';
import ReadStream = NodeJS.ReadStream;
import { FlatWalkerStrategy } from './walker';
import { WalkerAS } from './walker_as';
import {
    NamedDescriptorIndex,
    DecoratedDescriptorIndex,
    NamedDescriptorIndexReducer,
} from './proto';
import { parseOptions } from './options';
import { readFileSync } from 'fs';
import { basename } from 'path';

export function readToBuffer(stream: ReadStream): Promise<Buffer> {
    return new Promise((resolve) => {
        const ret: Array<Buffer> = [];
        let len = 0;
        stream.on('readable', () => {
            let chunk;
            while ((chunk = stream.read())) {
                ret.push(chunk);
                len += chunk.length;
            }
        });
        stream.on('end', () => {
            resolve(Buffer.concat(ret, len));
        });
    });
}

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
    options.include.forEach((n) => roots.add(n));
    const requiredIDs = new NamedDescriptorIndexReducer(
        types,
        roots,
        new Set<string>(options.exclude),
    );
   
    const brokenReferences = requiredIDs.brokenReferences();
    if (brokenReferences.length > 0) {
        throw new Error(
            `Broken references found: ${brokenReferences
                .map((value, key) => `${value} references ${key}`)
                .join(
                    ', ',
                )}, please either exclude a type and all it's references`,
        );
    }

    const descriptors = new DecoratedDescriptorIndex(requiredIDs);
    const strategy = new FlatWalkerStrategy(descriptors);
    const walker = new WalkerAS(options);
    strategy.walk(walker);

    const content = walker.content()
    const files = [{
        name: options.targetFileName, content: content
    }];

    if (options.deps == 'export') {
        walker.staticFiles().forEach((f) => {
            files.push({ name: basename(f), content: readFileSync(f).toString() });
        });
    }

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
