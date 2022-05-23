import { test } from 'uvu';
import * as assert from 'uvu/assert';

import { NamedDescriptorIndex } from '../../src/proto/index.js';
import { getRequest } from '../helpers/index.js';

const request = getRequest('complex_struct');
const index = new NamedDescriptorIndex(request);

test('NamedDescriptorIndex.rootIDs()', () => {
    assert.equal(index.rootIDs(), new Set(['Status', 'Labels', 'Message']))
});

test('NamedDescriptorIndex.values()', () => {
    assert.equal(index.values().map((v) => v.id), [
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
        'Message.Properties1',
        'Message.Properties2',
        'Message.Services',
    ]);
});

test('NamedDescriptorIndex.get()', () => {
    assert.not.equal(index.get('Message.Message.Message'), undefined);
});

test.run()