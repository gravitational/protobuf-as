import * as proto from 'ts-proto-descriptors';
import * as named from './named_descriptor';
import * as source from './source_code_index';

/**
 * Represents a map of protobuf descriptors with IDs, namespaces and in-hierarchy references.
 */
export class NamedDescriptorIndex implements named.DescriptorCollection {
    private index: Map<string, named.Descriptor>;
    private roots: Set<string>;

    /**
     * Creates descriptor index from request.
     * @param request CodeGeneratorRequest
     */
    constructor(request: proto.CodeGeneratorRequest) {
        this.index = new Map<string, named.Descriptor>();
        this.roots = new Set<string>();

        request.protoFile.forEach((fileDesc) => {
            const namespace = this.registerNamespace(fileDesc.package);
            const sourceIndex = source.CodeIndex.fromFileDescriptorProto(fileDesc);

            fileDesc.enumType.forEach((desc, index) => {
                const en = this.registerEnum(fileDesc.package, namespace, desc, sourceIndex.slice(source.Type.file.enum, index));
                if (request.fileToGenerate.includes(fileDesc.name)) {
                    this.roots.add(en.id);
                }
            });


            fileDesc.messageType.forEach((desc, index) => {
                const message = this.registerMessage(
                    fileDesc.package,
                    namespace,
                    desc,
                    sourceIndex.slice(source.Type.file.message, index),
                );
                if (request.fileToGenerate.includes(fileDesc.name)) {
                    this.roots.add(message.id);
                }
            });
        });
    }

    private registerNamespace(name: string): string {
        name.split('.').forEach((name, index, array) => {
            const id = array.slice(0, index + 1).join('.');
            const namespace = array.slice(0, index).join('.');

            const ns: named.Namespace = {
                id: id,
                namespace,
                kind: 'namespace',
                name,
            };
            this.index.set(id, ns);
        });
        return name;
    }

    private registerEnum(
        prefix: string,
        namespace: string,
        desc: proto.EnumDescriptorProto,
        codeIndex: source.CodeIndex,
    ): named.Enum {
        const id = named.normalize(`${prefix}.${desc.name}`);
        const en: named.Enum = { id, namespace, kind: 'enum', desc, comment: codeIndex.lookup() };
        this.index.set(id, en);

        desc.value.forEach((desc, index) =>
            this.registerEnumValue(id, namespace, desc, codeIndex.lookup(source.Type.enum.value, index)));

        return en;
    }

    private registerEnumValue(
        prefix: string,
        namespace: string,
        desc: proto.EnumValueDescriptorProto,
        comment: string,
    ) {
        const id = named.normalize(`${prefix}.${desc.name}`);
        this.index.set(id, { id, namespace, desc, comment, kind: 'enum_value' });
    }

    private registerMessage(
        prefix: string,
        namespace: string,
        desc: proto.DescriptorProto,
        codeIndex: source.CodeIndex,
    ): named.Message {
        const id = named.normalize(`${prefix}.${desc.name}`);
        const oneOfDecl = desc.oneofDecl
        const oneOf:string[] = oneOfDecl.map(d => d.name)
        const message: named.Message = { id, namespace, kind: 'message', desc, comment: codeIndex.lookup(), oneOf: oneOf};

        this.index.set(id, message);

        desc.enumType.forEach((desc, index) =>
            this.registerEnum(id, namespace, desc, codeIndex.slice(source.Type.message.enum, index)));
        desc.nestedType.forEach((desc, index) =>
            this.registerMessage(id, namespace, desc, codeIndex.slice(source.Type.message.nested_type, index)),
        );
        desc.field.forEach((desc, index) => {
            let oneOf:string | undefined = undefined;

            // If object has oneofIndex property explicitly defined
            if (Object.prototype.hasOwnProperty.call(desc, 'oneofIndex')) {
                oneOf = oneOfDecl[desc.oneofIndex].name
            }

            this.registerField(id, namespace, desc, codeIndex.lookup(source.Type.message.field, index), oneOf);
        })

        return message;
    }

    private registerField(
        prefix: string,
        namespace: string,
        desc: proto.FieldDescriptorProto,
        comment: string,
        oneOf: string | undefined,
    ) {
        const id = named.normalize(`${prefix}.${desc.name}`);
        let hasOne: string | undefined = undefined;

        if (
            desc.type == proto.FieldDescriptorProto_Type.TYPE_MESSAGE ||
            desc.type == proto.FieldDescriptorProto_Type.TYPE_ENUM
        ) {
            hasOne = named.normalize(desc.typeName);
        }

        const field: named.Field = {
            id,
            namespace,
            hasOne,
            kind: 'field',
            desc,
            comment,
            oneOf,
        };
        this.index.set(id, field);
    }

    /**
     * Returns message/enum names belongs to a files explicitly requested via CLI
     * @returns ReadonlySet of type names
     */
    rootIDs(): ReadonlySet<string> {
        return this.roots;
    }

    /**
     * Returns all descriptors in index
     * @returns Array of descriptors
     */
    values(): ReadonlyArray<named.Descriptor> {
        return Array.from(this.index.values());
    }

    /**
     * Returns the descriptor
     * @param key Descriptor ID
     * @returns Descriptor
     */
    get(key: string): named.Descriptor | undefined {
        return this.index.get(key);
    }
}
