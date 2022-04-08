import { exec } from "child_process";
import { readdir } from "fs";
import { join } from "path";

const protoPath = "__tests__/__fixtures__/__proto__"
const tsPath = "__tests__/__fixtures__/__ts_proto__"
const asPath = "__tests__/__fixtures__/__assembly__"
const verbose = process.argv.includes("-v")

console.log("Generating protoc ts files and assemblyscript fixture modules...")

readdir(protoPath, (error, files) => {
    if (error) {
        throw error;
    }

    files.forEach(name => {
        const dir = join(protoPath, name)
        const targetDir = join(tsPath, name)
        const protocCommand = [
            `yarn protoc -I${dir}`,
            `--plugin node_modules/.bin/protoc-gen-dump --dump_opt ${targetDir}/main.codegenreq --dump_out ${protoPath}`,
            `--plugin node_modules/.bin/protoc-gen-ts_proto --ts_proto_opt=oneof=unions,esModuleInterop=true --ts_proto_out ${targetDir}`,
            `--plugin bin/protoc-gen-as --as_opt=targetFileName=${name}.ts:deps=embed:oneOfVarNames=OneOf.Messages+messageType --as_out ${asPath}`,
            `main.proto`
        ].join(" ")
        
        if (verbose) {
            console.log(protocCommand)
        }

        exec(protocCommand, (error, _, stderr) => {
            if (error) {
                throw error;
            }
            console.log(`protoc: ${name} >>> ${stderr ? "\n" + stderr : "Done!"}`)

            const asName = join(asPath, name)
            const ascCommand =`yarn run asc ${asName}.ts -b ${asName}.wasm -t ${asName}.wat -d ${asName}-module.d.ts --sourceMap --debug --exportRuntime`

            if (verbose) {
                console.log(ascCommand)
            }
    
            exec(ascCommand, (error, _, stderr) => {
                if (error) {
                    throw error;
                }
                console.log(`asc: ${name} >>> ${stderr ? "\n" + stderr : "Done!"}`)
            })    
        })
    })
})
