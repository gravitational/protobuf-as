import { execSync } from "child_process";
import { readdirSync } from "fs";
import { join, normalize, dirname, basename } from 'path';
import { mkdir } from 'mk-dirs/sync/index.js'
import { fileURLToPath } from 'url';

// Fixture represents fixture paths
type Fixture = {
    name: string;       // Name
    proto: string;      // .proto path
    tsProto: string;    // ts-proto main.ts path
    asProto: string;    // as-proto outFile path
    asStub: string;     // AssemblyScript stub file (exports encode/decode/size) path
    asTarget: string;   // AssemblyScript target path with file name prefix
}

const basePath = normalize(join(dirname(fileURLToPath(import.meta.url)), "../tests/__fixtures__"))
const protoPath = join(basePath, "proto")
const protos = readdirSync(protoPath)

// Map proto dir names to the array of Fixtures
const fixtures = protos.map<Fixture>((value:string):Fixture => {
    return {
        name: value,
        proto: join(basePath, "proto", value),
        tsProto: join(basePath, "ts_proto", value),
        asProto: join(basePath, "as_proto", value),
        asStub: join(basePath, "assembly", value),
        asTarget: join(basePath, "build", value)
    }
})

console.log(`Generating fixtures for ${protos.join(", ")}...`)

// Run protoc
fixtures.forEach((fixture: Fixture) => {
    const protocCmd = [
        `yarn protoc -I${fixture.proto}`,
        `--plugin node_modules/.bin/protoc-gen-dump --dump_opt ${fixture.tsProto}/main.codegenreq --dump_out ${fixture.tsProto}`,
        `--plugin node_modules/.bin/protoc-gen-ts_proto --ts_proto_opt=oneof=unions,esModuleInterop=true --ts_proto_out ${fixture.tsProto}`,
        `--plugin ./bin/protoc-gen-as --as_opt=targetFileName=${fixture.name}.ts:mode=single:oneOfVarNames=OneOf.Messages+messageType --as_out ${fixture.asProto}`,
        `main.proto`
    ].join(" ")

    mkdir(fixture.tsProto)
    mkdir(fixture.asProto)

    execSync(protocCmd)

    console.log(`protoc ${fixture.name} done!`)
})

// Run asc
fixtures.forEach((fixture: Fixture) => {
    const ascCmd =`yarn run asc ${fixture.asStub}.ts -o ${fixture.asTarget}.wasm -t ${fixture.asTarget}.wat --bindings esm --debug --exportRuntime`

    execSync(ascCmd)

    console.log(`asc ${fixture.name} done!`)
})

// fix-esm-import-path
fixtures.forEach((fixture: Fixture) => {
    const fixEsmImportPathCmd = `yarn exec fix-esm-import-path ${join(fixture.tsProto, 'main.ts')}`

    execSync(fixEsmImportPathCmd)

    console.log(`fix-esm-import-path ${fixture.name} done!`)
})

console.log("Done!")