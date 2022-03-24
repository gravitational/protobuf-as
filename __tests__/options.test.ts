import { parseOptions } from '../src/options';

describe('parseOptions', () => {
    it('returns targetFileName', () => {
        const options = parseOptions('');
        expect(options.targetFileName).toEqual('assembly.ts');
    });

    it('returns targetFileName and exclude', () => {
        const options = parseOptions(
            'exclude=types.Options:targetFileName=new_assembly.ts',
        );
        expect(options.exclude).toEqual(['types.Options']);
        expect(options.targetFileName).toEqual('new_assembly.ts');
    });

    it('returns typeAliases', () => {
        const options = parseOptions(
            'exclude=types.Options:typeAliases=Event+events.OneOf',
        );
        expect(options.exclude).toEqual(['types.Options']);        
        expect(options.typeAliases).toEqual(new Map<string, string>([["Event", "events.OneOf"]]));
    });

});
