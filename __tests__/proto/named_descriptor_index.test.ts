import { NamedDescriptorIndex } from '../../src/proto';
import { getRequest } from '../helpers';

const request = getRequest('complex_struct');
const index = new NamedDescriptorIndex(request);

describe('NamedDescriptorIndex', () => {
    it('rootIDs()', () => {
        expect(index.rootIDs()).toEqual(
            new Set(['Status', 'Labels', 'Message']),
        );
    });

    it('values()', () => {
        expect(index.values().map((v) => v.id)).toEqual([
            'external',
            'external.Properties',
            'external.Properties.Properties',
            'external.Labels',
            'external.Labels.Labels',
            'external.external',
            'external.external.Properties',
            'external.external.Properties.Properties',
            'google',
            'google.protobuf',
            'google.protobuf.Timestamp',
            'google.protobuf.Timestamp.seconds',
            'google.protobuf.Timestamp.nanos',
            '',
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

    it('get()', () => {
        expect(index.get('Message.Circular.String')).toBeDefined();
    });
});
