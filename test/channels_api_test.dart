//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:spatio_sdk/api.dart';
import 'package:test/test.dart';


/// tests for ChannelsApi
void main() {
  // final instance = ChannelsApi();

  group('tests for ChannelsApi', () {
    // Create a channel.
    //
    //Future<CreateChannelResponse> createChannel(CreateChannelRequest createChannelRequest) async
    test('test createChannel', () async {
      // TODO
    });

    // Dispatch a channel action by id.
    //
    // Generic action-execution endpoint. `params` shape varies per `action_id`; consult `GET /v1/channels/actions` for the per-id contract. 
    //
    //Future<ExecuteChatActionResponse> executeChannelAction(ExecuteChatActionRequest executeChatActionRequest) async
    test('test executeChannelAction', () async {
      // TODO
    });

    // Join a channel.
    //
    //Future<SuccessFlag> joinChannel(String id, { ChannelMembershipRequest channelMembershipRequest }) async
    test('test joinChannel', () async {
      // TODO
    });

    // Leave a channel.
    //
    //Future<SuccessFlag> leaveChannel(String id, { ChannelMembershipRequest channelMembershipRequest }) async
    test('test leaveChannel', () async {
      // TODO
    });

    // Discover the action catalog for the Channels platform.
    //
    // Returns the action descriptors the agent layer dispatches via `POST /v1/channels/execute`. Same pattern as the DirectMessages action surface. 
    //
    //Future<ChatActionsList> listChannelActions() async
    test('test listChannelActions', () async {
      // TODO
    });

    // List messages in a channel.
    //
    // Channel ids are provider-scoped; pass `?accountId=` (preferred) or `?accountIds=` to disambiguate when the same id exists on multiple connected accounts (rare). 
    //
    //Future<ListMessagesResponse> listChannelMessages(String channel, { String accountId, List<String> accountIds, List<String> providers, String xWorkspaceID, int limit, String cursor, bool oldestFirst }) async
    test('test listChannelMessages', () async {
      // TODO
    });

    // List group channels across connected chat providers.
    //
    // Fan-out list. The Channels surface filters to channel-type conversations only (`type: channel | private`); for direct messages use `/v1/direct-messages`. 
    //
    //Future<ListChannelsResponse> listChannels({ List<String> accountIds, List<String> providers, String xWorkspaceID, int limit, String cursor, bool includeArchived, List<String> types }) async
    test('test listChannels', () async {
      // TODO
    });

    // Send a message to a channel.
    //
    //Future<SendChatMessageResponse> sendChannelMessage(SendChatMessageRequest sendChatMessageRequest) async
    test('test sendChannelMessage', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCreateChannel(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCreateChannel', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceExecuteChannelAction(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceExecuteChannelAction', () async {
      // TODO
    });

    //Future workspaceJoinChannel(String org, String workspace, String id, { Map<String, Object> requestBody }) async
    test('test workspaceJoinChannel', () async {
      // TODO
    });

    //Future workspaceLeaveChannel(String org, String workspace, String id, { Map<String, Object> requestBody }) async
    test('test workspaceLeaveChannel', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListChannelActions(String org, String workspace) async
    test('test workspaceListChannelActions', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListChannelMessages(String org, String workspace) async
    test('test workspaceListChannelMessages', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListChannels(String org, String workspace) async
    test('test workspaceListChannels', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceSendChannelMessage(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceSendChannelMessage', () async {
      // TODO
    });

  });
}
