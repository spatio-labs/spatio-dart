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


/// tests for DirectMessagesApi
void main() {
  // final instance = DirectMessagesApi();

  group('tests for DirectMessagesApi', () {
    // React to a DM message.
    //
    //Future<DMReactionResponse> addDMReaction(String messageId, DMReactionRequest dMReactionRequest) async
    test('test addDMReaction', () async {
      // TODO
    });

    // Attach a file/image/etc. to an existing DM message.
    //
    //Future<DMMessageEnvelope> attachToDMMessage(String messageId, DMAttachRequest dMAttachRequest) async
    test('test attachToDMMessage', () async {
      // TODO
    });

    // Dispatch a DM action by id.
    //
    //Future<ExecuteChatActionResponse> executeDMAction(ExecuteChatActionRequest executeChatActionRequest) async
    test('test executeDMAction', () async {
      // TODO
    });

    // Forward a DM message to another DM or channel.
    //
    //Future<DMMessageEnvelope> forwardDMMessage(String messageId, DMForwardRequest dMForwardRequest) async
    test('test forwardDMMessage', () async {
      // TODO
    });

    // Fetch one chat user.
    //
    //Future<GetChatUserResponse> getDMUser(String id, { String accountId }) async
    test('test getDMUser', () async {
      // TODO
    });

    // Discover the action catalog for DirectMessages.
    //
    //Future<ChatActionsList> listDMActions() async
    test('test listDMActions', () async {
      // TODO
    });

    // List pinned messages in a DM conversation.
    //
    //Future<DMPinnedList> listDMPinnedMessages(String dmId, { String accountId }) async
    test('test listDMPinnedMessages', () async {
      // TODO
    });

    // List replies in a DM message thread.
    //
    //Future<Map<String, Object>> listDMThreadReplies(String dmId, String messageId, { String accountId }) async
    test('test listDMThreadReplies', () async {
      // TODO
    });

    // List chat users (DM contacts) across connected accounts.
    //
    //Future<ListChatUsersResponse> listDMUsers({ List<String> accountIds, List<String> providers, String xWorkspaceID, int limit, String cursor }) async
    test('test listDMUsers', () async {
      // TODO
    });

    // Enriched DM conversation list with unread + pin + draft state.
    //
    // Native fast-path. Returns conversations augmented with the DM-feature state (unread counts, pinned/muted flags, saved drafts) the renderer's DM UI consumes. The shape is provider-specific and treated as opaque. 
    //
    //Future<Map<String, Object>> listDirectConversationsEnriched({ String accountId, String xWorkspaceID }) async
    test('test listDirectConversationsEnriched', () async {
      // TODO
    });

    // List 1:1 and group DM conversations.
    //
    // Returns DM-type conversations only (`type: im | mpim`). Channel-type conversations are surfaced via `/v1/channels`. 
    //
    //Future<ListChannelsResponse> listDirectMessageConversations({ List<String> accountIds, List<String> providers, String xWorkspaceID, int limit, String cursor, bool includeArchived }) async
    test('test listDirectMessageConversations', () async {
      // TODO
    });

    // List messages in a DM conversation.
    //
    //Future<ListMessagesResponse> listDirectMessages(String channel, { String accountId, List<String> accountIds, List<String> providers, String xWorkspaceID, int limit, String cursor, bool oldestFirst }) async
    test('test listDirectMessages', () async {
      // TODO
    });

    // Mark a DM message read.
    //
    //Future<SuccessFlag> markDMRead(String dmId, DMMarkReadRequest dMMarkReadRequest) async
    test('test markDMRead', () async {
      // TODO
    });

    // Mute a DM conversation (until a time, or forever).
    //
    //Future<DMMuteResponse> muteDM(String dmId, DMMuteRequest dMMuteRequest) async
    test('test muteDM', () async {
      // TODO
    });

    // Pin a DM conversation to the top of the sidebar.
    //
    //Future<SuccessFlag> pinDMConversation(String dmId, { String accountId }) async
    test('test pinDMConversation', () async {
      // TODO
    });

    // Pin a DM message.
    //
    //Future<SuccessFlag> pinDMMessage(String messageId, { ChannelMembershipRequest channelMembershipRequest }) async
    test('test pinDMMessage', () async {
      // TODO
    });

    // Reply in a DM message thread.
    //
    //Future<DMMessageEnvelope> postDMThreadReply(String dmId, String messageId, DMThreadReplyRequest dMThreadReplyRequest, { String accountId }) async
    test('test postDMThreadReply', () async {
      // TODO
    });

    // Remove a DM message reaction.
    //
    //Future<DMReactionResponse> removeDMReaction(String messageId, String emoji, { String accountId }) async
    test('test removeDMReaction', () async {
      // TODO
    });

    // Search across DM messages.
    //
    //Future<DMSearchResults> searchDirectMessages(String q, { int limit, String dmId, String user, String accountId }) async
    test('test searchDirectMessages', () async {
      // TODO
    });

    // Send a DM.
    //
    //Future<SendChatMessageResponse> sendDirectMessage(SendChatMessageRequest sendChatMessageRequest) async
    test('test sendDirectMessage', () async {
      // TODO
    });

    // Save the unsent draft text for a DM.
    //
    //Future<SuccessFlag> setDMDraft(String dmId, DMSetDraftRequest dMSetDraftRequest) async
    test('test setDMDraft', () async {
      // TODO
    });

    // Unpin a DM conversation.
    //
    //Future<SuccessFlag> unpinDMConversation(String dmId, { String accountId }) async
    test('test unpinDMConversation', () async {
      // TODO
    });

    // Unpin a DM message.
    //
    //Future<SuccessFlag> unpinDMMessage(String messageId, { String accountId }) async
    test('test unpinDMMessage', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceExecuteDMAction(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceExecuteDMAction', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetDMUser(String org, String workspace, String id) async
    test('test workspaceGetDMUser', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListDMActions(String org, String workspace) async
    test('test workspaceListDMActions', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListDMConversations(String org, String workspace) async
    test('test workspaceListDMConversations', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListDMMessages(String org, String workspace) async
    test('test workspaceListDMMessages', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListDMUsers(String org, String workspace) async
    test('test workspaceListDMUsers', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListDirectMessages(String org, String workspace) async
    test('test workspaceListDirectMessages', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceSendDirectMessage(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceSendDirectMessage', () async {
      // TODO
    });

  });
}
