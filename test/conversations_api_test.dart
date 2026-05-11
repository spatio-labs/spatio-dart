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


/// tests for ConversationsApi
void main() {
  // final instance = ConversationsApi();

  group('tests for ConversationsApi', () {
    // Persist a new LLM conversation.
    //
    //Future<Conversation> createConversation({ CreateConversationRequest createConversationRequest }) async
    test('test createConversation', () async {
      // TODO
    });

    // Soft-delete a conversation.
    //
    //Future deleteConversation(String id) async
    test('test deleteConversation', () async {
      // TODO
    });

    // Fetch one conversation.
    //
    //Future<Conversation> getConversation(String id) async
    test('test getConversation', () async {
      // TODO
    });

    // Fetch the most recently active conversation for a given context tag.
    //
    //Future<Conversation> getLatestConversationForContext(String context) async
    test('test getLatestConversationForContext', () async {
      // TODO
    });

    // List messages in a conversation.
    //
    //Future<List<ConversationMessage>> listConversationMessages(String id, { int limit, String before }) async
    test('test listConversationMessages', () async {
      // TODO
    });

    // List the caller's persisted LLM conversations.
    //
    //Future<List<Conversation>> listConversations({ String context, int limit }) async
    test('test listConversations', () async {
      // TODO
    });

    // Append a message to a conversation.
    //
    //Future<ConversationMessage> saveConversationMessage(String id, SaveMessageRequest saveMessageRequest) async
    test('test saveConversationMessage', () async {
      // TODO
    });

    // Update conversation metadata (title, context, cwd, session_id, pinned).
    //
    //Future<Conversation> updateConversation(String id, UpdateConversationRequest updateConversationRequest) async
    test('test updateConversation', () async {
      // TODO
    });

    // Patch metadata on an existing message. Body must include the message id (path is the conversation id, not the message). 
    //
    //Future<ConversationMessage> updateConversationMessageMetadata(String id, UpdateMessageMetadataRequest updateMessageMetadataRequest) async
    test('test updateConversationMessageMetadata', () async {
      // TODO
    });

  });
}
