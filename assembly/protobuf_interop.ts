/**
 * Allocates and returns the DataView for a protobuf binary message.
 * @param length Message size
 * @returns (DataView addr << 32) | Buffer addr
 */
 export function __protobuf_alloc(length: i32): u64 {
    const view = new DataView(new ArrayBuffer(length));
    return (u64(changetype<usize>(view)) << 32) | (changetype<usize>(view.buffer) + view.byteOffset);
}

/**
 * Returns the length of the DataView.
 * @param data DataView instance
 * @returns Length
 */
export function __protobuf_getLength(view: DataView): u32 {
    return view.byteLength;
}

/**
 * Returns address of the DataView, accessible via WASM memory.
 *
 * @param data DataView instance
 * @returns Memory address
 */
export function __protobuf_getAddr(view: DataView): usize {
    return changetype<usize>(view.buffer) + view.byteOffset;
}
