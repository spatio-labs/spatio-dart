//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class ConversationsApi {
  ConversationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Persist a new LLM conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateConversationRequest] createConversationRequest:
  Future<Response> createConversationWithHttpInfo({ CreateConversationRequest? createConversationRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/conversations';

    // ignore: prefer_final_locals
    Object? postBody = createConversationRequest;

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

  /// Persist a new LLM conversation.
  ///
  /// Parameters:
  ///
  /// * [CreateConversationRequest] createConversationRequest:
  Future<Conversation?> createConversation({ CreateConversationRequest? createConversationRequest, }) async {
    final response = await createConversationWithHttpInfo( createConversationRequest: createConversationRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Conversation',) as Conversation;
    
    }
    return null;
  }

  /// Soft-delete a conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteConversationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/conversations/{id}'
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

  /// Soft-delete a conversation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteConversation(String id,) async {
    final response = await deleteConversationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getConversationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/conversations/{id}'
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

  /// Fetch one conversation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Conversation?> getConversation(String id,) async {
    final response = await getConversationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Conversation',) as Conversation;
    
    }
    return null;
  }

  /// Fetch the most recently active conversation for a given context tag.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] context (required):
  Future<Response> getLatestConversationForContextWithHttpInfo(String context,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/conversations/latest';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'context', context));

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

  /// Fetch the most recently active conversation for a given context tag.
  ///
  /// Parameters:
  ///
  /// * [String] context (required):
  Future<Conversation?> getLatestConversationForContext(String context,) async {
    final response = await getLatestConversationForContextWithHttpInfo(context,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Conversation',) as Conversation;
    
    }
    return null;
  }

  /// List messages in a conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] limit:
  ///
  /// * [String] before:
  Future<Response> listConversationMessagesWithHttpInfo(String id, { int? limit, String? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/conversations/{id}/messages'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }

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

  /// List messages in a conversation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] limit:
  ///
  /// * [String] before:
  Future<List<ConversationMessage>?> listConversationMessages(String id, { int? limit, String? before, }) async {
    final response = await listConversationMessagesWithHttpInfo(id,  limit: limit, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ConversationMessage>') as List)
        .cast<ConversationMessage>()
        .toList(growable: false);

    }
    return null;
  }

  /// List the caller's persisted LLM conversations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] context:
  ///
  /// * [int] limit:
  Future<Response> listConversationsWithHttpInfo({ String? context, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/conversations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (context != null) {
      queryParams.addAll(_queryParams('', 'context', context));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }

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

  /// List the caller's persisted LLM conversations.
  ///
  /// Parameters:
  ///
  /// * [String] context:
  ///
  /// * [int] limit:
  Future<List<Conversation>?> listConversations({ String? context, int? limit, }) async {
    final response = await listConversationsWithHttpInfo( context: context, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<Conversation>') as List)
        .cast<Conversation>()
        .toList(growable: false);

    }
    return null;
  }

  /// Append a message to a conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SaveMessageRequest] saveMessageRequest (required):
  Future<Response> saveConversationMessageWithHttpInfo(String id, SaveMessageRequest saveMessageRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/conversations/{id}/messages'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = saveMessageRequest;

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

  /// Append a message to a conversation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SaveMessageRequest] saveMessageRequest (required):
  Future<ConversationMessage?> saveConversationMessage(String id, SaveMessageRequest saveMessageRequest,) async {
    final response = await saveConversationMessageWithHttpInfo(id, saveMessageRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConversationMessage',) as ConversationMessage;
    
    }
    return null;
  }

  /// Update conversation metadata (title, context, cwd, session_id, pinned).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateConversationRequest] updateConversationRequest (required):
  Future<Response> updateConversationWithHttpInfo(String id, UpdateConversationRequest updateConversationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/conversations/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateConversationRequest;

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

  /// Update conversation metadata (title, context, cwd, session_id, pinned).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateConversationRequest] updateConversationRequest (required):
  Future<Conversation?> updateConversation(String id, UpdateConversationRequest updateConversationRequest,) async {
    final response = await updateConversationWithHttpInfo(id, updateConversationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Conversation',) as Conversation;
    
    }
    return null;
  }

  /// Patch metadata on an existing message. Body must include the message id (path is the conversation id, not the message). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateMessageMetadataRequest] updateMessageMetadataRequest (required):
  Future<Response> updateConversationMessageMetadataWithHttpInfo(String id, UpdateMessageMetadataRequest updateMessageMetadataRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/conversations/{id}/messages'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateMessageMetadataRequest;

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

  /// Patch metadata on an existing message. Body must include the message id (path is the conversation id, not the message). 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateMessageMetadataRequest] updateMessageMetadataRequest (required):
  Future<ConversationMessage?> updateConversationMessageMetadata(String id, UpdateMessageMetadataRequest updateMessageMetadataRequest,) async {
    final response = await updateConversationMessageMetadataWithHttpInfo(id, updateMessageMetadataRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConversationMessage',) as ConversationMessage;
    
    }
    return null;
  }
}
