import { test } from 'uvu';
import * as assert from 'uvu/assert';

import { NamedDescriptorIndex, NamedDescriptorIndexReducer } from '../../src/proto/index.js';
import { getRequest } from '../helpers/index.js';

const request = getRequest('complex_struct');
const index = new NamedDescriptorIndex(request);

test('NamedDescriptorIndexReducer, specify just root types', () => {
    const reducer = new NamedDescriptorIndexReducer(
        index,
        index.rootIDs(),
        new Set<string>(),
    );
    const ids = reducer.values().map((d) => d.id);

    assert.equal(ids, [
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

test('NamedDescriptorIndexReducer, exclude Example', () => {
    const reducer = new NamedDescriptorIndexReducer(
        index,
        index.rootIDs(),
        new Set<string>(['Message']),
    );
    const ids = reducer.values().map((d) => d.id);

    assert.equal(ids, [
        'Status',
        'Status.Draft',
        'Status.Active',
        'Status.Deleted',
        'Labels',
        'Labels.Labels',
    ]);
});

test('NamedDescriptorIndexReducer, exclude Status produces broken references', () => {
    const reducer = new NamedDescriptorIndexReducer(
        index,
        index.rootIDs(),
        new Set<string>(['Status']),
    );

    assert.equal(reducer.brokenReferences(), [
        ['Message.Status1', 'Status'],
        ['Message.Status2', 'Status'],
    ]);
});

test('NamedDescriptorIndexReducer, exclude Status + Message.Status1, Message.Status2 produces no broken references', () => {
    const reducer = new NamedDescriptorIndexReducer(
        index,
        index.rootIDs(),
        new Set<string>(['Message.Status1', 'Message.Status2', 'Status']),
    );
    const keys = reducer.values().map((d) => d.id);

    assert.equal(reducer.brokenReferences(), []);
    assert.equal(keys, [
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
        'Message.Properties1',
        'Message.Properties2',
        'Message.Services'
    ])
});

test('NamedDescriptorIndexReducer.get()', () => {
    const reducer = new NamedDescriptorIndexReducer(
        index,
        index.rootIDs(),
        new Set<string>(),
    );

    assert.not.equal(reducer.get('Message'), undefined);
});

test.run()