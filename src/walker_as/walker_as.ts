import { FlatWalker } from '../walker';
import { decorated } from '../proto';
import { Blocks } from './blocks';
import { Namespace } from './namespace';
import { Enum } from './enum';
import { Message } from './message';
import { Field } from './field';
import { Options } from '../options';
import { Decode } from './decode';
import { Encode } from './encode';
import { Size } from './size';
import { join } from 'path';
import * as prettier from 'prettier';

// Writer implements generic function which prints a code piece
export type Writer = (value: string) => void;

// Global code blocks registry
export interface GlobalsRegistry {
    registerGlobal(key: string, content: string): void;
}

// staticFiles represents list of static files to embed/copy
const staticFiles = [
    join(__dirname, '../../../assembly/decoder.ts'),
    join(__dirname, '../../../assembly/encoder.ts'),
    join(__dirname, '../../../assembly/sizer.ts'),
    join(__dirname, '../../../assembly/protobuf_interop.ts'), // Interop must always be last entry
]

// Options for prettier, TODO: move to WalkerAS
const prettierOptions: prettier.Options = {
    parser: 'typescript',
    tabWidth: 4,
};

/**
 * WalkerAS represents Walker implementing FlatWalker strategy producing AssemblyScript code. This is the composite class.
 */
export class WalkerAS implements FlatWalker, GlobalsRegistry {
    private chunks: string[] = new Array<string>();
    private blocks: Blocks;
    private namespace: Namespace;
    private enum: Enum;
    private message: Message;
    private decode: Decode;
    private encode: Encode;
    private size: Size;
    private field: Field;
    private globals: Map<string, string> = new Map<string, string>();

    constructor(private options: Readonly<Options>) {
        const p = this.p.bind(this);

        this.blocks = new Blocks(p, this.options, this.staticFiles());
        this.namespace = new Namespace(p);
        this.enum = new Enum(p);
        this.message = new Message(p);
        this.field = new Field(p, this.options);
        this.decode = new Decode(p, this, this.options);
        this.encode = new Encode(p, this.options);
        this.size = new Size(p, this, this.options);
    }

    public beforeAll() {
        this.blocks.beforeAll();
    }

    public afterAll() {
        this.blocks.afterAll(this.globals);
    }

    public startNamespace(namespace: decorated.Namespace) {
        this.namespace.start(namespace);
    }

    public finishNamespace(namespace: decorated.Namespace) {
        this.namespace.finish(namespace);
    }

    public startEnum(en: decorated.Enum) {
        this.enum.start(en);
    }

    public enumValue(value: decorated.EnumValue) {
        this.enum.value(value);
    }

    public finishEnum(en: decorated.Enum) {
        this.enum.finish(en);
    }

    public startMessage(message: decorated.Message) {
        this.message.start(message);
    }
    
    public finishMessage(message: decorated.Message) {
        this.message.finish(message);
    }

    public fieldDecl(field: decorated.Field) {
        this.field.decl(field);
    }

    public startDecode(message: decorated.Message) {
        this.decode.start(message);
    }

    public beginDecode() {
        this.decode.begin();
    }

    public fieldInit() {
        // noop
    }

    public fieldDecode(field: decorated.Field) {
        this.decode.field(field);
    }

    public endDecode() {
        this.decode.end();
    }

    public finishDecode(message: decorated.Message) {
        this.decode.finish(message);
    }

    public startEncode(message: decorated.Message) {
        this.encode.start(message);
    }

    public beginEncode() {
        this.encode.begin();
    }

    public fieldEncode(field: decorated.Field) {
        this.encode.field(field);
    }

    public endEncode() {
        this.encode.end();
    }

    public finishEncode(message: decorated.Message) {
        this.encode.finish(message);
    }

    public startSize() {
        this.size.start();
    }

    public fieldSize(field: decorated.Field) {
        this.size.field(field);
    }

    public finishSize() {
        this.size.finish();
    }

    public content() {
        const content = this.chunks.join('\n');

        return this.options.disablePrettier
            ? content
            : prettier.format(content, prettierOptions);
    }

    public staticFiles() {
        if (this.options.deps != "package") {
            return staticFiles;
        }

        return [];
    }

    p(s: string) {
        if (s != '') {
            this.chunks.push(s);
        }
    }

    public registerGlobal(key: string, content: string) {
        if (this.globals.has(key)) {
            return
        }

        this.globals.set(key, content);
    }
}
