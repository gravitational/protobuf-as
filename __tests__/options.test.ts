import { parseOptions } from '../src/options';

describe('parseOptions', () => {
    it('returns outFile file when config file is not supplied', () => {
        const options = parseOptions('');
        expect(options.targetFileName).toEqual('assembly.ts');
    });

    it('returns both outFile and options when config file is supplied', () => {
        const options = parseOptions(
            'exclude=types.Options:targetFileName=new_assembly.ts',
        );
        expect(options.exclude).toEqual(['types.Options']);
        expect(options.targetFileName).toEqual('new_assembly.ts');
    });
});
