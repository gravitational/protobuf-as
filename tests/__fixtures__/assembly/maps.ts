import { Maps } from '../as_proto/maps/maps';

export function encode(obj: Maps): ArrayBuffer {
    return obj.encode()
}
export function decode(buffer: ArrayBuffer): Maps {
    return Maps.decode(buffer)
}

export function size(obj: Maps): u32 {
    return obj.size()
}
