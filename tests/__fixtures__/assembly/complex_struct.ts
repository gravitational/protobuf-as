import { Message } from '../as_proto/complex_struct/complex_struct';

export function encode(obj: Message): ArrayBuffer {
    return obj.encode()
}
export function decode(buffer: ArrayBuffer): Message {
    return Message.decode(buffer)
}

export function size(obj: Message): u32 {
    return obj.size()
}
