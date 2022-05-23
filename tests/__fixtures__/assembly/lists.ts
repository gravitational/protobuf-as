import { Lists } from '../as_proto/lists/lists';

export function encode(obj: Lists): ArrayBuffer {
    return obj.encode()
}
export function decode(buffer: ArrayBuffer): Lists {
    return Lists.decode(buffer)
}

export function size(obj: Lists): u32 {
    return obj.size()
}
