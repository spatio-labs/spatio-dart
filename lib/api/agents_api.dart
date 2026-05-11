//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class AgentsApi {
  AgentsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a new agent configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateAgentRequest] createAgentRequest (required):
  Future<Response> createAgentWithHttpInfo(CreateAgentRequest createAgentRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents';

    // ignore: prefer_final_locals
    Object? postBody = createAgentRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a new agent configuration.
  ///
  /// Parameters:
  ///
  /// * [CreateAgentRequest] createAgentRequest (required):
  Future<Agent?> createAgent(CreateAgentRequest createAgentRequest,) async {
    final response = await createAgentWithHttpInfo(createAgentRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Agent',) as Agent;
    
    }
    return null;
  }

  /// Create a new agent-platform conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateAgentConversationRequest] createAgentConversationRequest:
  Future<Response> createAgentConversationWithHttpInfo({ CreateAgentConversationRequest? createAgentConversationRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agent/conversations';

    // ignore: prefer_final_locals
    Object? postBody = createAgentConversationRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a new agent-platform conversation.
  ///
  /// Parameters:
  ///
  /// * [CreateAgentConversationRequest] createAgentConversationRequest:
  Future<AgentConversation?> createAgentConversation({ CreateAgentConversationRequest? createAgentConversationRequest, }) async {
    final response = await createAgentConversationWithHttpInfo( createAgentConversationRequest: createAgentConversationRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversation',) as AgentConversation;
    
    }
    return null;
  }

  /// Append a message to an agent conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateAgentMessageRequest] createAgentMessageRequest (required):
  Future<Response> createAgentMessageWithHttpInfo(String id, CreateAgentMessageRequest createAgentMessageRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agent/conversations/{id}/messages'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createAgentMessageRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Append a message to an agent conversation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateAgentMessageRequest] createAgentMessageRequest (required):
  Future<AgentMessage?> createAgentMessage(String id, CreateAgentMessageRequest createAgentMessageRequest,) async {
    final response = await createAgentMessageWithHttpInfo(id, createAgentMessageRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentMessage',) as AgentMessage;
    
    }
    return null;
  }

  /// Delete an agent configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteAgentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete an agent configuration.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteAgent(String id,) async {
    final response = await deleteAgentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Execute an action through the agent platform.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ExecuteActionRequest] executeActionRequest (required):
  Future<Response> executeAgentActionWithHttpInfo(ExecuteActionRequest executeActionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agent/actions/execute';

    // ignore: prefer_final_locals
    Object? postBody = executeActionRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Execute an action through the agent platform.
  ///
  /// Parameters:
  ///
  /// * [ExecuteActionRequest] executeActionRequest (required):
  Future<ExecuteActionResponse?> executeAgentAction(ExecuteActionRequest executeActionRequest,) async {
    final response = await executeAgentActionWithHttpInfo(executeActionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExecuteActionResponse',) as ExecuteActionResponse;
    
    }
    return null;
  }

  /// Fetch one agent configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getAgentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Fetch one agent configuration.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Agent?> getAgent(String id,) async {
    final response = await getAgentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Agent',) as Agent;
    
    }
    return null;
  }

  /// Fetch one agent conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getAgentConversationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agent/conversations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Fetch one agent conversation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<AgentConversation?> getAgentConversation(String id,) async {
    final response = await getAgentConversationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversation',) as AgentConversation;
    
    }
    return null;
  }

  /// Identity bundle for the SessionStart hook (user + org + workspace + connected accounts) so the agent doesn't fish on its first turn. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAgentSessionContextWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agent/session-context';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Identity bundle for the SessionStart hook (user + org + workspace + connected accounts) so the agent doesn't fish on its first turn. 
  Future<AgentSessionContext?> getAgentSessionContext() async {
    final response = await getAgentSessionContextWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentSessionContext',) as AgentSessionContext;
    
    }
    return null;
  }

  /// List messages on an agent conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> listAgentConversationMessagesWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agent/conversations/{id}/messages'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List messages on an agent conversation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<AgentMessageListResponse?> listAgentConversationMessages(String id,) async {
    final response = await listAgentConversationMessagesWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentMessageListResponse',) as AgentMessageListResponse;
    
    }
    return null;
  }

  /// List the caller's agent-platform conversations. Distinct from `/v1/conversations` (renderer-driven sidebar persistence). 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAgentConversationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agent/conversations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List the caller's agent-platform conversations. Distinct from `/v1/conversations` (renderer-driven sidebar persistence). 
  Future<AgentConversationListResponse?> listAgentConversations() async {
    final response = await listAgentConversationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversationListResponse',) as AgentConversationListResponse;
    
    }
    return null;
  }

  /// List the caller's agent configurations.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAgentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List the caller's agent configurations.
  Future<AgentListResponse?> listAgents() async {
    final response = await listAgentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentListResponse',) as AgentListResponse;
    
    }
    return null;
  }

  /// Curated featured agents (e.g. \"Claude Code\", \"Research Assistant\"). Read-only — these are surfaced by the renderer's preconfigured-picker UI. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listPreconfiguredAgentsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/preconfigured';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Curated featured agents (e.g. \"Claude Code\", \"Research Assistant\"). Read-only — these are surfaced by the renderer's preconfigured-picker UI. 
  Future<List<PreconfiguredAgent>?> listPreconfiguredAgents() async {
    final response = await listPreconfiguredAgentsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PreconfiguredAgent>') as List)
        .cast<PreconfiguredAgent>()
        .toList(growable: false);

    }
    return null;
  }

  /// Update an agent configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateAgentRequest] updateAgentRequest (required):
  Future<Response> updateAgentWithHttpInfo(String id, UpdateAgentRequest updateAgentRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/agents/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateAgentRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update an agent configuration.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateAgentRequest] updateAgentRequest (required):
  Future<Agent?> updateAgent(String id, UpdateAgentRequest updateAgentRequest,) async {
    final response = await updateAgentWithHttpInfo(id, updateAgentRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Agent',) as Agent;
    
    }
    return null;
  }
}
