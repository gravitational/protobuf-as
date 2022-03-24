# protobuf-as

Protobuf AssemblyScript compiler.

# Installation

Run the following inside your AssemblyScript project folder:

```
npm install gzigzigzeo/protobuf-as
```

`protobuf-as` is written in Typescript, heavily based on [`ts-proto`](https://github.com/stephenh/ts-proto).

Requires `node >= 16.3`, `protoc 3+`.

# Example

Given you have [example/example.proto file](example/example.proto)

Run:

```sh
protoc --plugin=./node_modules/protobuf-as/bin/protoc-gen-as --as_out=assembly --as_opt enableInterop=true:targetFileName=example.ts example/example.proto
yarn asc assembly/example.ts --tsdFile assembly/example.d.ts
```

This will generate the following `assembly/example.ts` and `assembly/example.d.ts`:

```assemblyscript
export namespace example {
    // Status represents object status
    export enum Status {
        // Draft
        Draft = 0,
        // Published
        Published = 1,
        // Deleted
        Deleted = 2,
    } // Status

    // Post is represents blog post
    export class Post {
        // Status
        public Status: u32;
        // Author name
        public Author: string = "";
        // Created at
        public CreatedAt: google.protobuf.Timestamp =
            new google.protobuf.Timestamp();
        // Tags
        public Tags: example.Tags = new example.Tags();

        // Decodes Post from an ArrayBuffer
        static decodeArrayBuffer(buf: ArrayBuffer): Post {
            ...
        }

        // Decodes Post from a DataView
        static decode(view: DataView): Post {
            ...
        } // decode Post

        public size(): u32 {
            ...
        }

        // Encodes Post to the DataView
        encode(): DataView {
            ...
        }

        // Encodes Post to the Array<u8>
        encodeU8Array(
            encoder: __proto.Encoder = new __proto.Encoder(new Array<u8>())
        ): Array<u8> {
            ...
        } // encode Post
    } // Post

    // Post paragraph
    export class Post_Paragraph {
        ...
    } // Post_Paragraph
} // example
```

Packages will be translated to namespaces. Nested messages would be extracted to the top level and prefixed by parent class names (`Post_Paragraph`).

# Tree shaking

By default, only messages from an input `.proto` files and their references would be generated. You can exclude or include enums, messages or fields from target by specifying `include` and `exclude` options in the command line.

For example, this call won't generate both `Post.CreatedAt` field and `google.protobuf.Timestamp` message because `CreatedAt` field is the only field which references `Timestamp`.

```sh
protoc --plugin=./node_modules/protobuf-as/bin/protoc-gen-as --as_out=assembly --as_opt enableInterop=true:targetFileName=example.ts:exclude=example.Post.CreatedAt example/example.proto
yarn asc assembly/example.ts --tsdFile assembly/example.d.ts
```

If you still need `google.protobuf.Timestamp` for some reason, you can add it to the inclusion list:

```sh
protoc --plugin=./node_modules/protobuf-as/bin/protoc-gen-as --as_out=assembly --as_opt enableInterop=true:targetFileName=example.ts:exclude=example.Post.CreatedAt:include=google.protobuf.Timestamp example/example.proto
yarn asc assembly/example.ts --tsdFile assembly/example.d.ts
```

# Dependencies

The generated code depends on a few common classes. There are the following options to export them (`deps` option).

* `embed` (default) would embed dependencies to the generated file.
* `export` would export dependencies as a separate file.
* `package` would import dependencies from this package.

# Other options

* `targetFileName` sets target file name.
* `disablePrettier=true` disables prettier on the generated code.
* `nullable=true` would generate nested object field defs as `Object | null` instead of `Object`.

# Generating type aliases

Sometimes, it is useful to provide shortcuts to a deeply nested types. For example, it would be easier to reference `google.protobuf.Timestamp` as `Timestamp` in the code.

It can be done using `typeAliases` option:

```sh
protoc --plugin=./node_modules/protobuf-as/bin/protoc-gen-as --as_out=assembly --as_opt typeAliases=Timestamp+google.protobuf.Timestamp example/example.proto
```

It will generate the following line in the target file:

```typescript
export type Timestamp = google.protobuf.Timestamp;
```

# Interop with non-node hosts

Option `enableInterop=true` embeds standard interop methods [assembly/protobuf_interop.ts](assembly/protobuf_interop.ts) into the target file.

Interop methods facilitate passing messages to and from WASM side if you plan to use `protobuf-as` outside of nodejs host environment, where AssemblyScript loader is not available.

This looks as following for `wasmer-go`:

```go
memory, _ := instance.Exports.GetMemory("memory")
alloc, _ := instance.Exports.GetFunction("__protobuf_alloc")
getLength, _ := instance.Exports.GetFunction("__protobuf_getLength")
getAddr, _ := instance.Exports.GetFunction("__protobuf_getAddr")

// SendMessage allocates memory and copies proto.Message to WASM side, returns memory address
func SendMessage(message proto.Message) int32 {
	size := proto.Size(message)
	bytes, _ := proto.Marshal(message)

	// Calls __protobuf_alloc
	viewAndBuffer, _ := alloc(size)

	// __protobufAlloc returns DataView addr and it's Buffer addr
	i := wasmer.NewI64(viewAndBuffer)
	raw := i.I64()
	dataView := int32(raw >> 32)
	buffer := raw & 0xFFFFFFFF

	// Copy message content
	copy(memory.Data()[buffer:], bytes)

	return dataView
}

// ReceiveMessage decodes message from WASM side. Type of a message must be known onset.
func (i *ProtobufInteropTrait) ReceiveMessage(dataView interface{}, m proto.Message) {
	rawLength, _ := getLength(dataView)
	rawAddr, _ := getAddr(dataView)

	length := wasmer.NewI32(rawLength)
	addr := wasmer.NewI32(rawAddr)

	bytes := make([]byte, length.I32())
	copy(bytes, memory.Data()[addr.I32():addr.I32()+length.I32()])

	proto.Unmarshal(bytes, m)
}
```