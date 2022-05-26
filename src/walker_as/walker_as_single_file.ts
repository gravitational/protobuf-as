import { FlatWalker, File } from '../walker/index.js';
import { decorated } from '../proto/index.js';
import { BlocksSingleFile } from './blocks_single_file.js';
import { NamespaceSingleFile } from './namespace_single_file.js';
import { Enum } from './enum.js';
import { Message } from './message.js';
import { Field } from './field.js';
import { Options } from '../options.js';
import { Decode } from './decode.js';
import { Encode } from './encode.js';
import { Size } from './size.js';
import { OneOf } from './one_of.js';
import { prettify } from './prettify.js';
import { GlobalsRegistry } from './index.js';

/**
 * WalkerAS represents Walker implementing FlatWalker strategy producing AssemblyScript code. This is the composite class.
 */
export class WalkerASSingleFile implements FlatWalker, GlobalsRegistry {
    private chunks: string[] = new Array<string>();
    private blocks: BlocksSingleFile;
    private namespace: NamespaceSingleFile;
    private enum: Enum;
    private message: Message;
    private decode: Decode;
    private encode: Encode;
    private size: Size;
    private field: Field;
    private oneOf: OneOf;
    private globals: Map<string, string> = new Map<string, string>();

    constructor(private options: Readonly<Options>) {
        const p = this.p.bind(this);

        this.blocks = new BlocksSingleFile(p, this.options);
        this.namespace = new NamespaceSingleFile(p);
        this.enum = new Enum(p);
        this.message = new Message(p);
        this.field = new Field(p, this.options);
        this.decode = new Decode(p, this, this.options);
        this.encode = new Encode(p);
        this.size = new Size(p, this);
        this.oneOf = new OneOf(p, this.options);
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

    // eslint-disable-next-line
    public referenceExternal(namespace:decorated.Namespace, ext: string): void {
        // noop
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

    public oneOfDiscriminatorDecl(desc: decorated.Message, group: string): void {
        this.oneOf.discriminatorDecl(desc, group);
    }

    public oneOfDiscriminatorConst(desc: decorated.Field): void {
        this.oneOf.discriminatorConst(desc);
    }

    public files():File[] {
        const files:File[] = [{
            name: this.options.targetFileName, content: this.chunks.join('\n')
        }];
    
        if (this.options.disablePrettier) {
            return files
        }
        
        return prettify(files)
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
