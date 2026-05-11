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


/// tests for AgentsApi
void main() {
  // final instance = AgentsApi();

  group('tests for AgentsApi', () {
    // Create a new agent configuration.
    //
    //Future<Agent> createAgent(CreateAgentRequest createAgentRequest) async
    test('test createAgent', () async {
      // TODO
    });

    // Create a new agent-platform conversation.
    //
    //Future<AgentConversation> createAgentConversation({ CreateAgentConversationRequest createAgentConversationRequest }) async
    test('test createAgentConversation', () async {
      // TODO
    });

    // Append a message to an agent conversation.
    //
    //Future<AgentMessage> createAgentMessage(String id, CreateAgentMessageRequest createAgentMessageRequest) async
    test('test createAgentMessage', () async {
      // TODO
    });

    // Delete an agent configuration.
    //
    //Future deleteAgent(String id) async
    test('test deleteAgent', () async {
      // TODO
    });

    // Execute an action through the agent platform.
    //
    //Future<ExecuteActionResponse> executeAgentAction(ExecuteActionRequest executeActionRequest) async
    test('test executeAgentAction', () async {
      // TODO
    });

    // Fetch one agent configuration.
    //
    //Future<Agent> getAgent(String id) async
    test('test getAgent', () async {
      // TODO
    });

    // Fetch one agent conversation.
    //
    //Future<AgentConversation> getAgentConversation(String id) async
    test('test getAgentConversation', () async {
      // TODO
    });

    // Identity bundle for the SessionStart hook (user + org + workspace + connected accounts) so the agent doesn't fish on its first turn. 
    //
    //Future<AgentSessionContext> getAgentSessionContext() async
    test('test getAgentSessionContext', () async {
      // TODO
    });

    // List messages on an agent conversation.
    //
    //Future<AgentMessageListResponse> listAgentConversationMessages(String id) async
    test('test listAgentConversationMessages', () async {
      // TODO
    });

    // List the caller's agent-platform conversations. Distinct from `/v1/conversations` (renderer-driven sidebar persistence). 
    //
    //Future<AgentConversationListResponse> listAgentConversations() async
    test('test listAgentConversations', () async {
      // TODO
    });

    // List the caller's agent configurations.
    //
    //Future<AgentListResponse> listAgents() async
    test('test listAgents', () async {
      // TODO
    });

    // Curated featured agents (e.g. \"Claude Code\", \"Research Assistant\"). Read-only — these are surfaced by the renderer's preconfigured-picker UI. 
    //
    //Future<List<PreconfiguredAgent>> listPreconfiguredAgents() async
    test('test listPreconfiguredAgents', () async {
      // TODO
    });

    // Update an agent configuration.
    //
    //Future<Agent> updateAgent(String id, UpdateAgentRequest updateAgentRequest) async
    test('test updateAgent', () async {
      // TODO
    });

  });
}
