//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class DirectMessagesApi {
  DirectMessagesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// React to a DM message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [DMReactionRequest] dMReactionRequest (required):
  Future<Response> addDMReactionWithHttpInfo(String messageId, DMReactionRequest dMReactionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/messages/{messageId}/reactions'
      .replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody = dMReactionRequest;

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

  /// React to a DM message.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [DMReactionRequest] dMReactionRequest (required):
  Future<DMReactionResponse?> addDMReaction(String messageId, DMReactionRequest dMReactionRequest,) async {
    final response = await addDMReactionWithHttpInfo(messageId, dMReactionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DMReactionResponse',) as DMReactionResponse;
    
    }
    return null;
  }

  /// Attach a file/image/etc. to an existing DM message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [DMAttachRequest] dMAttachRequest (required):
  Future<Response> attachToDMMessageWithHttpInfo(String messageId, DMAttachRequest dMAttachRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/messages/{messageId}/attachments'
      .replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody = dMAttachRequest;

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

  /// Attach a file/image/etc. to an existing DM message.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [DMAttachRequest] dMAttachRequest (required):
  Future<DMMessageEnvelope?> attachToDMMessage(String messageId, DMAttachRequest dMAttachRequest,) async {
    final response = await attachToDMMessageWithHttpInfo(messageId, dMAttachRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DMMessageEnvelope',) as DMMessageEnvelope;
    
    }
    return null;
  }

  /// Dispatch a DM action by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ExecuteChatActionRequest] executeChatActionRequest (required):
  Future<Response> executeDMActionWithHttpInfo(ExecuteChatActionRequest executeChatActionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/execute';

    // ignore: prefer_final_locals
    Object? postBody = executeChatActionRequest;

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

  /// Dispatch a DM action by id.
  ///
  /// Parameters:
  ///
  /// * [ExecuteChatActionRequest] executeChatActionRequest (required):
  Future<ExecuteChatActionResponse?> executeDMAction(ExecuteChatActionRequest executeChatActionRequest,) async {
    final response = await executeDMActionWithHttpInfo(executeChatActionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExecuteChatActionResponse',) as ExecuteChatActionResponse;
    
    }
    return null;
  }

  /// Forward a DM message to another DM or channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [DMForwardRequest] dMForwardRequest (required):
  Future<Response> forwardDMMessageWithHttpInfo(String messageId, DMForwardRequest dMForwardRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/messages/{messageId}/forward'
      .replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody = dMForwardRequest;

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

  /// Forward a DM message to another DM or channel.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [DMForwardRequest] dMForwardRequest (required):
  Future<DMMessageEnvelope?> forwardDMMessage(String messageId, DMForwardRequest dMForwardRequest,) async {
    final response = await forwardDMMessageWithHttpInfo(messageId, dMForwardRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DMMessageEnvelope',) as DMMessageEnvelope;
    
    }
    return null;
  }

  /// Fetch one chat user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Chat-user id (provider-scoped).
  ///
  /// * [String] accountId:
  Future<Response> getDMUserWithHttpInfo(String id, { String? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/users/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
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

  /// Fetch one chat user.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Chat-user id (provider-scoped).
  ///
  /// * [String] accountId:
  Future<GetChatUserResponse?> getDMUser(String id, { String? accountId, }) async {
    final response = await getDMUserWithHttpInfo(id,  accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetChatUserResponse',) as GetChatUserResponse;
    
    }
    return null;
  }

  /// Discover the action catalog for DirectMessages.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listDMActionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/actions';

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

  /// Discover the action catalog for DirectMessages.
  Future<ChatActionsList?> listDMActions() async {
    final response = await listDMActionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChatActionsList',) as ChatActionsList;
    
    }
    return null;
  }

  /// List pinned messages in a DM conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [String] accountId:
  Future<Response> listDMPinnedMessagesWithHttpInfo(String dmId, { String? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/{dmId}/pinned'
      .replaceAll('{dmId}', dmId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
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

  /// List pinned messages in a DM conversation.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [String] accountId:
  Future<DMPinnedList?> listDMPinnedMessages(String dmId, { String? accountId, }) async {
    final response = await listDMPinnedMessagesWithHttpInfo(dmId,  accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DMPinnedList',) as DMPinnedList;
    
    }
    return null;
  }

  /// List replies in a DM message thread.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [String] accountId:
  Future<Response> listDMThreadRepliesWithHttpInfo(String dmId, String messageId, { String? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/{dmId}/messages/{messageId}/replies'
      .replaceAll('{dmId}', dmId)
      .replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
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

  /// List replies in a DM message thread.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [String] accountId:
  Future<Map<String, Object>?> listDMThreadReplies(String dmId, String messageId, { String? accountId, }) async {
    final response = await listDMThreadRepliesWithHttpInfo(dmId, messageId,  accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// List chat users (DM contacts) across connected accounts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] accountIds:
  ///   Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
  ///
  /// * [List<String>] providers:
  ///   Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [int] limit:
  ///
  /// * [String] cursor:
  Future<Response> listDMUsersWithHttpInfo({ List<String>? accountIds, List<String>? providers, String? xWorkspaceID, int? limit, String? cursor, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/users';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountIds != null) {
      queryParams.addAll(_queryParams('multi', 'accountIds', accountIds));
    }
    if (providers != null) {
      queryParams.addAll(_queryParams('multi', 'providers', providers));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// List chat users (DM contacts) across connected accounts.
  ///
  /// Parameters:
  ///
  /// * [List<String>] accountIds:
  ///   Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
  ///
  /// * [List<String>] providers:
  ///   Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [int] limit:
  ///
  /// * [String] cursor:
  Future<ListChatUsersResponse?> listDMUsers({ List<String>? accountIds, List<String>? providers, String? xWorkspaceID, int? limit, String? cursor, }) async {
    final response = await listDMUsersWithHttpInfo( accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, limit: limit, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListChatUsersResponse',) as ListChatUsersResponse;
    
    }
    return null;
  }

  /// Enriched DM conversation list with unread + pin + draft state.
  ///
  /// Native fast-path. Returns conversations augmented with the DM-feature state (unread counts, pinned/muted flags, saved drafts) the renderer's DM UI consumes. The shape is provider-specific and treated as opaque. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId:
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> listDirectConversationsEnrichedWithHttpInfo({ String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/conversations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// Enriched DM conversation list with unread + pin + draft state.
  ///
  /// Native fast-path. Returns conversations augmented with the DM-feature state (unread counts, pinned/muted flags, saved drafts) the renderer's DM UI consumes. The shape is provider-specific and treated as opaque. 
  ///
  /// Parameters:
  ///
  /// * [String] accountId:
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Map<String, Object>?> listDirectConversationsEnriched({ String? accountId, String? xWorkspaceID, }) async {
    final response = await listDirectConversationsEnrichedWithHttpInfo( accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// List 1:1 and group DM conversations.
  ///
  /// Returns DM-type conversations only (`type: im | mpim`). Channel-type conversations are surfaced via `/v1/channels`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] accountIds:
  ///   Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
  ///
  /// * [List<String>] providers:
  ///   Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [int] limit:
  ///
  /// * [String] cursor:
  ///
  /// * [bool] includeArchived:
  Future<Response> listDirectMessageConversationsWithHttpInfo({ List<String>? accountIds, List<String>? providers, String? xWorkspaceID, int? limit, String? cursor, bool? includeArchived, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountIds != null) {
      queryParams.addAll(_queryParams('multi', 'accountIds', accountIds));
    }
    if (providers != null) {
      queryParams.addAll(_queryParams('multi', 'providers', providers));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }
    if (includeArchived != null) {
      queryParams.addAll(_queryParams('', 'includeArchived', includeArchived));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// List 1:1 and group DM conversations.
  ///
  /// Returns DM-type conversations only (`type: im | mpim`). Channel-type conversations are surfaced via `/v1/channels`. 
  ///
  /// Parameters:
  ///
  /// * [List<String>] accountIds:
  ///   Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
  ///
  /// * [List<String>] providers:
  ///   Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [int] limit:
  ///
  /// * [String] cursor:
  ///
  /// * [bool] includeArchived:
  Future<ListChannelsResponse?> listDirectMessageConversations({ List<String>? accountIds, List<String>? providers, String? xWorkspaceID, int? limit, String? cursor, bool? includeArchived, }) async {
    final response = await listDirectMessageConversationsWithHttpInfo( accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, limit: limit, cursor: cursor, includeArchived: includeArchived, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListChannelsResponse',) as ListChannelsResponse;
    
    }
    return null;
  }

  /// List messages in a DM conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channel (required):
  ///   DM conversation id.
  ///
  /// * [String] accountId:
  ///
  /// * [List<String>] accountIds:
  ///   Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
  ///
  /// * [List<String>] providers:
  ///   Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [int] limit:
  ///
  /// * [String] cursor:
  ///
  /// * [bool] oldestFirst:
  Future<Response> listDirectMessagesWithHttpInfo(String channel, { String? accountId, List<String>? accountIds, List<String>? providers, String? xWorkspaceID, int? limit, String? cursor, bool? oldestFirst, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/messages';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'channel', channel));
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (accountIds != null) {
      queryParams.addAll(_queryParams('multi', 'accountIds', accountIds));
    }
    if (providers != null) {
      queryParams.addAll(_queryParams('multi', 'providers', providers));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }
    if (oldestFirst != null) {
      queryParams.addAll(_queryParams('', 'oldestFirst', oldestFirst));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// List messages in a DM conversation.
  ///
  /// Parameters:
  ///
  /// * [String] channel (required):
  ///   DM conversation id.
  ///
  /// * [String] accountId:
  ///
  /// * [List<String>] accountIds:
  ///   Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
  ///
  /// * [List<String>] providers:
  ///   Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [int] limit:
  ///
  /// * [String] cursor:
  ///
  /// * [bool] oldestFirst:
  Future<ListMessagesResponse?> listDirectMessages(String channel, { String? accountId, List<String>? accountIds, List<String>? providers, String? xWorkspaceID, int? limit, String? cursor, bool? oldestFirst, }) async {
    final response = await listDirectMessagesWithHttpInfo(channel,  accountId: accountId, accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, limit: limit, cursor: cursor, oldestFirst: oldestFirst, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListMessagesResponse',) as ListMessagesResponse;
    
    }
    return null;
  }

  /// Mark a DM message read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [DMMarkReadRequest] dMMarkReadRequest (required):
  Future<Response> markDMReadWithHttpInfo(String dmId, DMMarkReadRequest dMMarkReadRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/{dmId}/read'
      .replaceAll('{dmId}', dmId);

    // ignore: prefer_final_locals
    Object? postBody = dMMarkReadRequest;

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

  /// Mark a DM message read.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [DMMarkReadRequest] dMMarkReadRequest (required):
  Future<SuccessFlag?> markDMRead(String dmId, DMMarkReadRequest dMMarkReadRequest,) async {
    final response = await markDMReadWithHttpInfo(dmId, dMMarkReadRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessFlag',) as SuccessFlag;
    
    }
    return null;
  }

  /// Mute a DM conversation (until a time, or forever).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [DMMuteRequest] dMMuteRequest (required):
  Future<Response> muteDMWithHttpInfo(String dmId, DMMuteRequest dMMuteRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/{dmId}/mute'
      .replaceAll('{dmId}', dmId);

    // ignore: prefer_final_locals
    Object? postBody = dMMuteRequest;

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

  /// Mute a DM conversation (until a time, or forever).
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [DMMuteRequest] dMMuteRequest (required):
  Future<DMMuteResponse?> muteDM(String dmId, DMMuteRequest dMMuteRequest,) async {
    final response = await muteDMWithHttpInfo(dmId, dMMuteRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DMMuteResponse',) as DMMuteResponse;
    
    }
    return null;
  }

  /// Pin a DM conversation to the top of the sidebar.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [String] accountId:
  Future<Response> pinDMConversationWithHttpInfo(String dmId, { String? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/{dmId}/pin'
      .replaceAll('{dmId}', dmId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    const contentTypes = <String>[];


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

  /// Pin a DM conversation to the top of the sidebar.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [String] accountId:
  Future<SuccessFlag?> pinDMConversation(String dmId, { String? accountId, }) async {
    final response = await pinDMConversationWithHttpInfo(dmId,  accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessFlag',) as SuccessFlag;
    
    }
    return null;
  }

  /// Pin a DM message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [ChannelMembershipRequest] channelMembershipRequest:
  Future<Response> pinDMMessageWithHttpInfo(String messageId, { ChannelMembershipRequest? channelMembershipRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/messages/{messageId}/pin'
      .replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody = channelMembershipRequest;

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

  /// Pin a DM message.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [ChannelMembershipRequest] channelMembershipRequest:
  Future<SuccessFlag?> pinDMMessage(String messageId, { ChannelMembershipRequest? channelMembershipRequest, }) async {
    final response = await pinDMMessageWithHttpInfo(messageId,  channelMembershipRequest: channelMembershipRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessFlag',) as SuccessFlag;
    
    }
    return null;
  }

  /// Reply in a DM message thread.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [DMThreadReplyRequest] dMThreadReplyRequest (required):
  ///
  /// * [String] accountId:
  Future<Response> postDMThreadReplyWithHttpInfo(String dmId, String messageId, DMThreadReplyRequest dMThreadReplyRequest, { String? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/{dmId}/messages/{messageId}/replies'
      .replaceAll('{dmId}', dmId)
      .replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody = dMThreadReplyRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

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

  /// Reply in a DM message thread.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [DMThreadReplyRequest] dMThreadReplyRequest (required):
  ///
  /// * [String] accountId:
  Future<DMMessageEnvelope?> postDMThreadReply(String dmId, String messageId, DMThreadReplyRequest dMThreadReplyRequest, { String? accountId, }) async {
    final response = await postDMThreadReplyWithHttpInfo(dmId, messageId, dMThreadReplyRequest,  accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DMMessageEnvelope',) as DMMessageEnvelope;
    
    }
    return null;
  }

  /// Remove a DM message reaction.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [String] emoji (required):
  ///   Reaction emoji (e.g. `+1`, `eyes`, `pepper`).
  ///
  /// * [String] accountId:
  Future<Response> removeDMReactionWithHttpInfo(String messageId, String emoji, { String? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/messages/{messageId}/reactions/{emoji}'
      .replaceAll('{messageId}', messageId)
      .replaceAll('{emoji}', emoji);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

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

  /// Remove a DM message reaction.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [String] emoji (required):
  ///   Reaction emoji (e.g. `+1`, `eyes`, `pepper`).
  ///
  /// * [String] accountId:
  Future<DMReactionResponse?> removeDMReaction(String messageId, String emoji, { String? accountId, }) async {
    final response = await removeDMReactionWithHttpInfo(messageId, emoji,  accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DMReactionResponse',) as DMReactionResponse;
    
    }
    return null;
  }

  /// Search across DM messages.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Free-form query string.
  ///
  /// * [int] limit:
  ///
  /// * [String] dmId:
  ///   Restrict to one conversation.
  ///
  /// * [String] user:
  ///   Restrict to messages from this user id.
  ///
  /// * [String] accountId:
  Future<Response> searchDirectMessagesWithHttpInfo(String q, { int? limit, String? dmId, String? user, String? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'q', q));
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (dmId != null) {
      queryParams.addAll(_queryParams('', 'dmId', dmId));
    }
    if (user != null) {
      queryParams.addAll(_queryParams('', 'user', user));
    }
    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
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

  /// Search across DM messages.
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Free-form query string.
  ///
  /// * [int] limit:
  ///
  /// * [String] dmId:
  ///   Restrict to one conversation.
  ///
  /// * [String] user:
  ///   Restrict to messages from this user id.
  ///
  /// * [String] accountId:
  Future<DMSearchResults?> searchDirectMessages(String q, { int? limit, String? dmId, String? user, String? accountId, }) async {
    final response = await searchDirectMessagesWithHttpInfo(q,  limit: limit, dmId: dmId, user: user, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DMSearchResults',) as DMSearchResults;
    
    }
    return null;
  }

  /// Send a DM.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendChatMessageRequest] sendChatMessageRequest (required):
  Future<Response> sendDirectMessageWithHttpInfo(SendChatMessageRequest sendChatMessageRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/messages';

    // ignore: prefer_final_locals
    Object? postBody = sendChatMessageRequest;

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

  /// Send a DM.
  ///
  /// Parameters:
  ///
  /// * [SendChatMessageRequest] sendChatMessageRequest (required):
  Future<SendChatMessageResponse?> sendDirectMessage(SendChatMessageRequest sendChatMessageRequest,) async {
    final response = await sendDirectMessageWithHttpInfo(sendChatMessageRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendChatMessageResponse',) as SendChatMessageResponse;
    
    }
    return null;
  }

  /// Save the unsent draft text for a DM.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [DMSetDraftRequest] dMSetDraftRequest (required):
  Future<Response> setDMDraftWithHttpInfo(String dmId, DMSetDraftRequest dMSetDraftRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/{dmId}/draft'
      .replaceAll('{dmId}', dmId);

    // ignore: prefer_final_locals
    Object? postBody = dMSetDraftRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Save the unsent draft text for a DM.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [DMSetDraftRequest] dMSetDraftRequest (required):
  Future<SuccessFlag?> setDMDraft(String dmId, DMSetDraftRequest dMSetDraftRequest,) async {
    final response = await setDMDraftWithHttpInfo(dmId, dMSetDraftRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessFlag',) as SuccessFlag;
    
    }
    return null;
  }

  /// Unpin a DM conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [String] accountId:
  Future<Response> unpinDMConversationWithHttpInfo(String dmId, { String? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/{dmId}/pin'
      .replaceAll('{dmId}', dmId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

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

  /// Unpin a DM conversation.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///   Direct-message conversation id.
  ///
  /// * [String] accountId:
  Future<SuccessFlag?> unpinDMConversation(String dmId, { String? accountId, }) async {
    final response = await unpinDMConversationWithHttpInfo(dmId,  accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessFlag',) as SuccessFlag;
    
    }
    return null;
  }

  /// Unpin a DM message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [String] accountId:
  Future<Response> unpinDMMessageWithHttpInfo(String messageId, { String? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/direct-messages/messages/{messageId}/pin'
      .replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

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

  /// Unpin a DM message.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Chat-message id.
  ///
  /// * [String] accountId:
  Future<SuccessFlag?> unpinDMMessage(String messageId, { String? accountId, }) async {
    final response = await unpinDMMessageWithHttpInfo(messageId,  accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessFlag',) as SuccessFlag;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/direct-messages/execute' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceExecuteDMActionWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/direct-messages/execute'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceExecuteDMAction(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceExecuteDMActionWithHttpInfo(org, workspace, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/direct-messages/users/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceGetDMUserWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/direct-messages/users/{id}'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Map<String, Object>?> workspaceGetDMUser(String org, String workspace, String id,) async {
    final response = await workspaceGetDMUserWithHttpInfo(org, workspace, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/direct-messages/actions' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListDMActionsWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/direct-messages/actions'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Map<String, Object>?> workspaceListDMActions(String org, String workspace,) async {
    final response = await workspaceListDMActionsWithHttpInfo(org, workspace,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/direct-messages/conversations' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListDMConversationsWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/direct-messages/conversations'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Map<String, Object>?> workspaceListDMConversations(String org, String workspace,) async {
    final response = await workspaceListDMConversationsWithHttpInfo(org, workspace,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/direct-messages/messages' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListDMMessagesWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/direct-messages/messages'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Map<String, Object>?> workspaceListDMMessages(String org, String workspace,) async {
    final response = await workspaceListDMMessagesWithHttpInfo(org, workspace,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/direct-messages/users' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListDMUsersWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/direct-messages/users'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Map<String, Object>?> workspaceListDMUsers(String org, String workspace,) async {
    final response = await workspaceListDMUsersWithHttpInfo(org, workspace,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/direct-messages' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListDirectMessagesWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/direct-messages'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Map<String, Object>?> workspaceListDirectMessages(String org, String workspace,) async {
    final response = await workspaceListDirectMessagesWithHttpInfo(org, workspace,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/direct-messages/messages' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceSendDirectMessageWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/direct-messages/messages'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceSendDirectMessage(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceSendDirectMessageWithHttpInfo(org, workspace, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }
}
