import { decorated } from '../proto';
import { ImmutableFlatTree } from '../structs/immutable_flat_tree';
import { DecoratedDescriptorIndex } from '../proto/decorated_descriptor_index';
import { AbstractDescriptorCollection } from '../proto';

/**
 * Walker interface
 */
export interface Walker {
    get content(): string;
    get staticFiles(): string[];
}

// Walker strategy is a strategy which calls a walker methods in an order required
// to produce a specific target structure. It's like a SAX parser, but reversed.
// For example, FlatWalkerStrategy walks namespaces hierarchically, and messages sequentially,
// including subpaths usually required for OO languages.
//
// It aims to generate encode(), decode() and size() methods.
export abstract class WalkerStrategy<T, D> {
    constructor(protected index: AbstractDescriptorCollection<D>) {}
    public abstract walk(walker: T);
}

export interface FlatBlocksWalker {
    beforeAll();
    afterAll();
}

export interface FlatNamespaceWalker {
    startNamespace(namespace: decorated.Namespace);
    finishNamespace(namespace: decorated.Namespace);
}

export interface FlatEnumWalker {
    startEnum(en: decorated.Enum);
    enumValue(item: decorated.EnumValue);
    finishEnum(en: decorated.Enum);
}

export interface FlatMessageWalker {
    startMessage(message: decorated.Message);
    finishMessage(message: decorated.Message);
}

export interface FlatMessageDecodeWalker {
    startDecode(message: decorated.Message);
    beginDecode(message: decorated.Message);
    endDecode(message: decorated.Message);
    finishDecode(message: decorated.Message);
}

export interface FlatMessageEncodeWalker {
    startEncode(message: decorated.Message);
    beginEncode(message: decorated.Message);
    endEncode(message: decorated.Message);
    finishEncode(message: decorated.Message);
}

export interface FlatMessageSizeWalker {
    startSize(message: decorated.Message);
    finishSize(message: decorated.Message);
}

export interface FlatFieldWalker {
    fieldDecl(field: decorated.Field);
    fieldInit(field: decorated.Field);
    fieldDecode(field: decorated.Field);
    fieldSize(field: decorated.Field);
    fieldEncode(field: decorated.Field);
}

// Flat walker must meet this interface
export type FlatWalker = Walker &
    FlatBlocksWalker &
    FlatNamespaceWalker &
    FlatEnumWalker &
    FlatMessageWalker &
    FlatMessageDecodeWalker &
    FlatMessageSizeWalker &
    FlatMessageEncodeWalker &
    FlatFieldWalker;

/**
 * Implements the generic walker strategy for an OO language.
 *
 * - Namespaces are hierachical.
 * - Enums and messages are sequentially nested into namespaces.
 * - There are static decode and encode methods.
 * - Fields need to be initialized in the beginning of decode.
 */
export class FlatWalkerStrategy extends WalkerStrategy<
    FlatWalker,
    decorated.Descriptor
> {
    private items: ImmutableFlatTree<decorated.Descriptor>;

    constructor(protected index: DecoratedDescriptorIndex) {
        super(index);
        this.items = new ImmutableFlatTree<decorated.Descriptor>(
            index.values().map((v) => [v.id, v]),
        );
    }

    walk(walker: FlatWalker) {
        walker.beforeAll();

        // Get root namespaces along with topmost enums and messages which are not linked to any namespace
        this.items
            .filter((item) => {
                const [, desc, level] = item;
                let match: boolean;
                if (desc.kind == 'namespace') {
                    match = level == 1; // Root namespace
                } else {
                    // Enum or message which does not belong to any namespace
                    match =
                        desc.namespace == '' &&
                        ['enum', 'message'].includes(desc.kind);
                }

                return match ? item : null;
            })
            .forEach(([, desc]) => this.walkItem(walker, desc));

        walker.afterAll();
    }

    private walkItem(walker: FlatWalker, desc: decorated.Descriptor) {
        switch (desc.kind) {
            case 'namespace':
                return this.walkNamespace(walker, desc);
            case 'enum':
                return this.walkEnum(walker, desc);
            case 'enum_value':
                return this.walkEnumValue(walker, desc);
            case 'message':
                return this.walkMessage(walker, desc);
            default:
                throw new Error(`Unknown descriptor kind ${desc}`);
        }
    }

    private walkNamespace(
        walker: FlatWalker,
        namespaceDesc: decorated.Namespace,
    ) {
        walker.startNamespace(namespaceDesc);
        this.items.descendants(namespaceDesc.id).forEach(([, desc]) => {
            // Walk inside namespaces of any nesting level
            if (desc.kind == 'namespace') {
                this.walkItem(walker, desc);
            }

            // Walk inside enums and messages which belong to this particular namespace
            if (
                ['enum', 'message'].includes(desc.kind) &&
                desc.namespace == namespaceDesc.id
            ) {
                this.walkItem(walker, desc);
            }
        });
        walker.finishNamespace(namespaceDesc);
    }

    private walkEnum(walker: FlatWalker, desc: decorated.Enum) {
        walker.startEnum(desc);
        this.items
            .descendants(desc.id, 1)
            .forEach(([, desc]) => this.walkItem(walker, desc));
        walker.finishEnum(desc);
    }

    private walkEnumValue(walker: FlatWalker, desc: decorated.EnumValue) {
        walker.enumValue(desc);
    }

    private walkMessage(walker: FlatWalker, desc: decorated.Message) {
        if (desc.mapHelper) {
            return
        }

        const children = this.items.descendants(desc.id, 1).filter((value) => {
            const [, desc] = value;
            return decorated.isField(desc) ? value : null;
        });

        walker.startMessage(desc);
        children.forEach(([, desc]) => walker.fieldDecl(<decorated.Field>desc));

        walker.startDecode(desc);
        children.forEach(([, desc]) => walker.fieldInit(<decorated.Field>desc));
        walker.beginDecode(desc);
        children.forEach(([, desc]) =>
            walker.fieldDecode(<decorated.Field>desc),
        );
        walker.endDecode(desc);
        walker.finishDecode(desc);

        walker.startSize(desc);
        children.forEach(([, desc]) => walker.fieldSize(<decorated.Field>desc));
        walker.finishSize(desc);

        walker.startEncode(desc);
        walker.beginEncode(desc);
        children.forEach(([, desc]) =>
            walker.fieldEncode(<decorated.Field>desc),
        );
        walker.endEncode(desc);
        walker.finishEncode(desc);

        walker.finishMessage(desc);
    }
}
