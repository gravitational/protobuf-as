import { FileDescriptorProto, SourceCodeInfo_Location } from 'ts-proto-descriptors';

export const Type = {
    file: {
        message: 4,
        enum: 5,
    },
    message: {
        field: 2,
        nested_type: 3,
        enum: 4,
        oneof_decl: 8,
    },
    enum: {
        value: 2,
    },
};

export class CodeIndex extends Map<string, SourceCodeInfo_Location> {
    // fromFileDescriptorProto constructs location map from FileDescriptorProto
    static fromFileDescriptorProto(fileDesc: FileDescriptorProto): CodeIndex {
        const map: CodeIndex = new CodeIndex();

        if ((!fileDesc.sourceCodeInfo) || (!fileDesc.sourceCodeInfo.location)) {
            return map;
        }

        fileDesc.sourceCodeInfo.location.forEach((loc) => {
            if ((loc.leadingComments != "") || (loc.leadingDetachedComments.length > 0) || (loc.trailingComments != "")) {
                map.set(loc.path.join("."), loc);
            }
        })

        return map;
    }

    slice(...prefix: number[]): CodeIndex {
        const map: CodeIndex = new CodeIndex();
        const path = prefix.join(".")
        
        this.forEach((value, key) => {
            if (key.startsWith(path)) {
                map.set(key.slice(path.length+1), value);
            }
        })

        return map;
    }

    // lookup returns comment for a path
    lookup(...prefix: number[]): string {
        const path = prefix.join(".");

        if (!this.has(path)) {
            return "";
        }
        const value = this.get(path);

        if (value == undefined) {
            return ""
        }

        const result = value.leadingDetachedComments.join("\n\n");
        return (result + value.leadingComments + "\n\n" + value.trailingComments).trim();
    }
};
