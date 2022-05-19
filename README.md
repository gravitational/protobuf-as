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
protoc --plugin=./node_modules/protobuf-as/bin/protoc-gen-as --as_out=assembly --as_opt targetFileName=example.ts example/example.proto
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

        static decode(buf: ArrayBuffer): Post {}
        public size(): u32 {}
        encode(): ArrayBuffer {}
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
protoc --plugin=./node_modules/protobuf-as/bin/protoc-gen-as --as_out=assembly --as_opt targetFileName=example.ts:exclude=example.Post.CreatedAt example/example.proto
yarn asc assembly/example.ts --tsdFile assembly/example.d.ts
```

If you still need `google.protobuf.Timestamp` for some reason, you can add it to the inclusion list:

```sh
protoc --plugin=./node_modules/protobuf-as/bin/protoc-gen-as --as_out=assembly --as_opt targetFileName=example.ts:exclude=example.Post.CreatedAt:include=google.protobuf.Timestamp example/example.proto
yarn asc assembly/example.ts --tsdFile assembly/example.d.ts
```

# Dependencies

The generated code depends on a few common classes. You can control exporting them using `deps` option.

* `deps=embed` (default) embeds dependencies to the generated file, within the special `__proto` namespace.
* `deps=export` exports dependencies as a separate files in the same folder.
* `deps=package` generates normal imports from the `protobuf-as` package.

# Setting target file properties

* `targetFileName` sets the target file name. For `singlefile` output that's the name of a target file.
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

This looks as following for `wasmer-go`:

```go
memory, _ := instance.Exports.GetMemory("memory")
new, _ := instance.Exports.GetFunction("__new") // --export-runtime true

// SendMessage allocates memory and copies proto.Message to WASM side, returns memory address
func SendMessage(message proto.Message) int32 {
	size := proto.Size(message)
	bytes, _ := proto.Marshal(message)
	view, _ := new(size, 1) // 1 represent AS type for ArrayBuffer
	data := memory.Data()
	copy(data[wasmer.NewI32(view):], bytes)

	return dataView
}

// ReceiveMessage decodes message from WASM side. Type of a message must be known onset.
// Please note that message type must be known onset.
func ReceiveMessage(arrayBuffer interface{}, m proto.Message) {
	addr := wasmer.NewI32(arrayBuffer)
	data := ectx.Memory.Data()
	len := int32(binary.LittleEndian.Uint32(data[addr-4 : addr])) // ArrayBuffer length from GC header
	bytes := make([]byte, len)
	copy(bytes, data[addr:addr+len])

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

The following properties will be added to the generated class:

```ts
class OneOf {
    public __oneOf_Values: string = "";
    public __oneOf_Values_index: u8 = 0;

    static readonly ONE_OF_VALUES_STRING_INDEX = 1;
    static readonly ONE_OF_VALUES_INT_INDEX = 2;
}
```

It will be set to the field name of a current OneOf value and number:

```typescript
if (oneof.__oneOf_Values == "Int") {
    // ...
}

if (oneof.__oneOf_Values_index == 2) {
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

if (oneof.valueType_index == "Int") {
    // ...
}
```

You can use generated constants for switch:

```typescript
switch (oneOf.valueType_index) {
    case ONE_OF_VALUES_INT_INDEX:
        // ...
    case ONE_OF_VALUES_STRING_INDEX:
        // ...
    default:
        // ...
}