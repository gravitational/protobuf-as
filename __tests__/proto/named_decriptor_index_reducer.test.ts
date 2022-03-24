import { NamedDescriptorIndex, NamedDescriptorIndexReducer } from '../../src/proto';
import { getRequest } from '../helpers';

const request = getRequest('complex_struct');
const index = new NamedDescriptorIndex(request);

describe('NamedDescriptorIndexReducer', () => {
    it('specify just root types', () => {
        const reducer = new NamedDescriptorIndexReducer(
            index,
            index.rootIDs(),
            new Set<string>(),
        );
        const ids = reducer.values().map((d) => d.id);

        expect(ids).toEqual([
            'external',
            'external.Properties',
            'external.Properties.Properties',
            'external.external',
            'external.external.Properties',
            'external.external.Properties.Properties',
            'google',
            'google.protobuf',
            'google.protobuf.Timestamp',
            'google.protobuf.Timestamp.seconds',
            'google.protobuf.Timestamp.nanos',
            'Status',
            'Status.Draft',
            'Status.Active',
            'Status.Deleted',
            'Labels',
            'Labels.Labels',
            'Message',
            'Message.Service',
            'Message.Service.None',
            'Message.Service.Facebook',
            'Message.Service.Google',
            'Message.Message',
            'Message.Message.Message',
            'Message.Message.Message.Strings',
            'Message.Message.Message.Timestamp',
            'Message.Message.MessagesEntry',
            'Message.Message.MessagesEntry.key',
            'Message.Message.MessagesEntry.value',
            'Message.Message.String',
            'Message.Message.Messages',
            'Message.Circular',
            'Message.Circular.String',
            'Message.Circular.Circular',
            'Message.CircularA',
            'Message.CircularA.String',
            'Message.CircularA.CircularB',
            'Message.CircularB',
            'Message.CircularB.String',
            'Message.CircularB.CircularA',
            'Message.MapStringEntry',
            'Message.MapStringEntry.key',
            'Message.MapStringEntry.value',
            'Message.MapMessagesEntry',
            'Message.MapMessagesEntry.key',
            'Message.MapMessagesEntry.value',
            'Message.String',
            'Message.Labels',
            'Message.Status1',
            'Message.Status2',
            'Message.Network',
            'Message.Strings',
            'Message.MapString',
            'Message.MapMessages',
            'Message.CircularInstance',
            'Message.CircularAInstance',
            'Message.Properties1',
            'Message.Properties2',
            'Message.Services',
        ]);
    });

    it('exclude Example', () => {
        const reducer = new NamedDescriptorIndexReducer(
            index,
            index.rootIDs(),
            new Set<string>(['Message']),
        );
        const ids = reducer.values().map((d) => d.id);

        expect(ids).toEqual([
            'Status',
            'Status.Draft',
            'Status.Active',
            'Status.Deleted',
            'Labels',
            'Labels.Labels',
        ]);
    });

    it('exclude Status produces broken references', () => {
        const reducer = new NamedDescriptorIndexReducer(
            index,
            index.rootIDs(),
            new Set<string>(['Status']),
        );

        expect(reducer.brokenReferences()).toEqual([
            ['Message.Status1', 'Status'],
            ['Message.Status2', 'Status'],
        ]);
    });

    it('exclude Status + Message.Status1, Message.Status2 produces no broken references', () => {
        const reducer = new NamedDescriptorIndexReducer(
            index,
            index.rootIDs(),
            new Set<string>(['Message.Status1', 'Message.Status2', 'Status']),
        );
        const keys = reducer.values().map((d) => d.id);

        expect(reducer.brokenReferences()).toEqual([]);
        expect(keys).toEqual([
            'external',
            'external.Properties',
            'external.Properties.Properties',
            'external.external',
            'external.external.Properties',
            'external.external.Properties.Properties',
            'google',
            'google.protobuf',
            'google.protobuf.Timestamp',
            'google.protobuf.Timestamp.seconds',
            'google.protobuf.Timestamp.nanos',
            'Labels',
            'Labels.Labels',
            'Message',
            'Message.Service',
            'Message.Service.None',
            'Message.Service.Facebook',
            'Message.Service.Google',
            'Message.Message',
            'Message.Message.Message',
            'Message.Message.Message.Strings',
            'Message.Message.Message.Timestamp',
            'Message.Message.MessagesEntry',
            'Message.Message.MessagesEntry.key',
            'Message.Message.MessagesEntry.value',
            'Message.Message.String',
            'Message.Message.Messages',
            'Message.Circular',
            'Message.Circular.String',
            'Message.Circular.Circular',
            'Message.CircularA',
            'Message.CircularA.String',
            'Message.CircularA.CircularB',
            'Message.CircularB',
            'Message.CircularB.String',
            'Message.CircularB.CircularA',
            'Message.MapStringEntry',
            'Message.MapStringEntry.key',
            'Message.MapStringEntry.value',
            'Message.MapMessagesEntry',
            'Message.MapMessagesEntry.key',
            'Message.MapMessagesEntry.value',
            'Message.String',
            'Message.Labels',
            'Message.Network',
            'Message.Strings',
            'Message.MapString',
            'Message.MapMessages',
            'Message.CircularInstance',
            'Message.CircularAInstance',
            'Message.Properties1',
            'Message.Properties2',
            'Message.Services'
        ])
    });

    it('get()', () => {
        const reducer = new NamedDescriptorIndexReducer(
            index,
            index.rootIDs(),
            new Set<string>(),
        );

        expect(reducer.get('Message')).not.toBeUndefined();
    });
});
