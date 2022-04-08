import { parseOptions } from '../src/options';

describe('parseOptions', () => {
    it('returns targetFileName', () => {
        const options = parseOptions('');
        expect(options.targetFileName).toEqual('assembly.ts');
    });

    it('returns false enableInterop', () => {
        const options = parseOptions("enableInterop=false")
        expect(options.enableInterop).toEqual(false)
    });

    it('returns true enableInterop', () => {
        const options = parseOptions("enableInterop=TRuE")
        expect(options.enableInterop).toEqual(true)
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

    it('returns configuration from a file', () => {
        const options = parseOptions("config=__tests__/__fixtures__/config.json")
        expect(options.exclude).toEqual(["Foo", "Bar"])
        expect(options.enableInterop).toEqual(true)
        expect(options.deps).toEqual("embed")
        expect(options.typeAliases).toEqual(new Map<string, string>([["Foo", "Bar"]]))
    });
});
