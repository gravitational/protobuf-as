# protobuf-as

Protobuf AssemblyScript compiler.

# Installation

Run the following inside your AssemblyScript project folder:

```
npm install gravitational/protobuf-as
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

```typescript
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

The generated code depends on a few common classes. You can control exporting them using `deps` option.

* `deps=embed` (default) embeds dependencies to the generated file, within the special `__proto` namespace.
* `deps=export` exports dependencies as a separate files in the same folder.
* `deps=package` generates normal imports from the `protobuf-as` package.

# Setting target file properties

* `targetFileName` sets the target file name.
* `disablePrettier=true` disables prettier on the generated code (used for debug purposes).

# Nullable fields

By default, nested objects are initialised:

```ts
public Expires: google.protobuf.Timestamp = new google.protobuf.Timestamp();
```

`nullable=true` would generate nested object field defs as `Object | null` instead of `Object`:

```ts
public Expires: google.protobuf.Timestamp | null = null;
```

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

Please note that type aliases can not be used in constructors: `new Timestamp()` would fail (although, you can use the `instantiate` helper `const t = instantiate<Timestamp>()`).

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

# Configuration file

Instead of passing option in command line, you can use JSON configuration file:

```sh
protoc --plugin=./node_modules/protobuf-as/bin/protoc-gen-as --as_out=assembly --as_opt config=protobuf-as.json example/example.proto
```

The configuration file should look as following:

```json
{
    "enableInterop": true,
    "targetFileName": "example.ts",
    "exclude": ["example.Post.CreatedAt"],
    "include": ["google.protobuf.Timestamp"],
    "typeAliases": {
        "Timestamp": "google.protobuf.Timestamp"
    }
}
```

Please be advised that if a configuration file is specified, all command line parameters are ignored.

# OneOf discriminators

Given you have the following definition:

```proto
message OneOf {
    oneof Values {
        string String = 1;
        int32 Int = 2;
    }
}
```

The following property would be added to the generated class:

```ts
class OneOf {
    public __oneOf_Values: string = "";
}
```

It will be set to the field name of a current OneOf value:

```typescript
if (oneof.__oneOf_Values == "Int") {
    // ...
}
```

You can use `oneOfVarNames` option to change this variable name:

```json
{
    "oneOfVarNames": {
        "OneOf.Values": "valueType"
    }
}
```

Where `OneOf.Values` is the full path to a `OneOf` definition, and `valueType` is the target name:

```typescript
if (oneof.valueType == "Int") {
    // ...
}
```
