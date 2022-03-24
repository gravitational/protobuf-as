import { decorated } from '../proto';
import { Writer } from './walker_as';
import { getTypeInfo, TypeInfo } from './type_info';
import { Options } from '../options';
import { comment } from './internal';

/**
 * Field code blocks
 */
export class Field {
    constructor(private p: Writer, private options: Options) { }

    // Returns field type with default if required
    static typeDecl(field: decorated.Field, type: TypeInfo, options: Options): string {
        switch (field.kind) {
            case "field_elementary":
                return `${type.typeName}${type.default ? ` = ${type.default}` : ''}`;
            case "field_message": {
                const expr = options.nullable == "true" ?
                    '| null' : (field.oneOf != undefined ? '| null' : `= new ${type.typeName}()`);

                return `${type.typeName}${expr}`;
            }
            case "field_message_repeated":
            case "field_elementary_repeated":
            case "field_map":
            case "field_map_message":
                return `${type.collectionTypeName} = new ${type.collectionTypeName}();`
        }
    }

    decl(field: decorated.Field) {
        const type = getTypeInfo(field);

        this.p(comment(field))

        switch (field.kind) {
            case "field_elementary":
                this.p(`public ${field.name}:${Field.typeDecl(field, type, this.options)};`);
                break;
            case "field_message":
                this.p(`public ${field.name}:${Field.typeDecl(field, type, this.options)};`);
                break;
            case "field_message_repeated":
            case "field_elementary_repeated":
            case "field_map":
            case "field_map_message":
                this.p(`public ${field.name}:${Field.typeDecl(field, type, this.options)};`);
                break;
        }
    }
}
