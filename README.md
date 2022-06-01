# protobuf-as

Protobuf AssemblyScript compiler.

# Installation

Run the following inside your AssemblyScript project folder:

```
npm install gravitational/protobuf-as
```

`protobuf-as` is written in Typescript, heavily based on [`ts-proto`](https://github.com/stephenh/ts-proto).

Requires `node >= 16.3 <17`, `protoc 3+`.

# Example

Given you have [example/example.proto file](example/example.proto)

Run:

```sh
protoc --plugin=./node_modules/.bin/protoc-gen-as --as_out=assembly --as_opt targetFileName=example.ts example/example.proto
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
```

If you still need `google.protobuf.Timestamp` for some reason, you can add it to the inclusion list:

```sh
protoc --plugin=./node_modules/protobuf-as/bin/protoc-gen-as --as_out=assembly --as_opt targetFileName=example.ts:exclude=example.Post.CreatedAt:include=google.protobuf.Timestamp example/example.proto
```

# Modes

The generated code depends on a few common classes. You can control exporting them using `deps` option.

* `mode=single` (default) generates a single file with all types.
* `mode=multi` emits file structure where every file represents separate namespace.

# Setting target file properties

* `targetFileName` sets the target file name. For `type=single` output that's the name of a target file. For `mode=multi` it would be the root file name. It will include messages and enums not bound to any package. It will export nested namespaces.
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
    public __Values: string = "";
    public __Values_index: u8 = 0;

    static readonly ONE_OF_VALUES_STRING_INDEX = 1;
    static readonly ONE_OF_VALUES_INT_INDEX = 2;
}
```

It will be set to the field name of a current OneOf value and number:

```typescript
if (oneof.__Values == "Int") {
    // ...
}

if (oneof.__Values_index == 2) {
    // ...
}
```

You can use `oneOf` option to change variable names:

```json
{
    "oneOf": {
        "OneOf.Values": "valueType"
    }
}
```

Where `OneOf.Values` is the full path to a `OneOf` definition, and `valueType` is the target variable prefix:

```typescript
if (oneof.valueType == "Int") {
    // ...
}

if (oneof.valueType_index == "Int") {
    // ...
}
```

You can use generated constants in case switch statements:

```typescript
switch (oneOf.valueType_index) {
    case ONE_OF_VALUES_INT_INDEX:
        // ...
    case ONE_OF_VALUES_STRING_INDEX:
        // ...
    default:
        // ...
}
```

Discriminant field is set by `decode()` and does not impact `encode()` behaviour. If you need to change `oneOf` value, set the old value to null/zero and set the new value.

# Well-known type extensions

`protobuf-as` adds helper methods to well-known `google.protobuf.*` types.

```ts
const struct = new google.protobuf.Struct()

struct.get("string_field").set("string_value")
struct.get("number_field").set(5)
struct.get("null_field").setNull()
struct.get("string_list_field").set(["foo", "bar"])
struct.get("struct_field").set(new google.protobuf.Struct())
```

Check [assembly/ext](assembly/ext) folder for complete list of extensions.

Well-known extensions can be disabled by passing `stdext=false` option.

# Custom extensions

You can pass path to your custom extensions folder in `customext` option. Each extension file name must be the same as the message name, including namespace (eg. `google.protobuf.Timestamp.ts`). The file contents will be appended to the end of the class.

Standard extensions can be overriden by custom ones.

# Configuration file

Instead of passing option in command line, you can use JSON configuration file:

```json
{
    "targetFileName": "example.ts",
    "exclude": ["example.Post.CreatedAt"],
    "include": ["google.protobuf.Timestamp"],
    "oneOf": {
        "Timestamp": "google.protobuf.Timestamp"
    }
}
```

Pass path to the file in `config` option:

```sh
protoc --plugin=./node_modules/protobuf-as/bin/protoc-gen-as --as_out=assembly --as_opt config=protobuf-as.json example/example.proto
```

Please be advised that if a configuration file is specified, all command line parameters are ignored.

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


# Development

After checking the repo, use `yarn test` to run tests. If you make changes fixture `.proto` files, run: `yarn test:gen-fixtures`.

# Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gravitational/protobuf-as.