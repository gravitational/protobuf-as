import ReadStream = NodeJS.ReadStream;

export function readToBuffer(stream: ReadStream): Promise<Buffer> {
    return new Promise((resolve) => {
        const ret: Array<Buffer> = [];
        let len = 0;
        stream.on('readable', () => {
            let chunk;
            while ((chunk = stream.read())) {
                ret.push(chunk);
                len += chunk.length;
            }
        });
        stream.on('end', () => {
            resolve(Buffer.concat(ret, len));
        });
    });
}
