import { Elementaries } from '../as_proto/elementaries/elementaries';

export function encode(obj: Elementaries): ArrayBuffer {
    return obj.encode()
}
export function decode(buffer: ArrayBuffer): Elementaries {
    return Elementaries.decode(buffer)
}

export function size(obj: Elementaries): u32 {
    return obj.size()
}
