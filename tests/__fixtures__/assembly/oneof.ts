import { OneOf } from '../as_proto/oneof/oneof';

export function encode(obj: OneOf): ArrayBuffer {
    return obj.encode()
}
export function decode(buffer: ArrayBuffer): OneOf {
    return OneOf.decode(buffer)
}

export function size(obj: OneOf): u32 {
    return obj.size()
}
