import { Person } from '../as_proto/nested/nested';

export function encode(obj: Person): ArrayBuffer {
    return obj.encode()
}
export function decode(buffer: ArrayBuffer): Person {
    return Person.decode(buffer)
}

export function size(obj: Person): u32 {
    return obj.size()
}
