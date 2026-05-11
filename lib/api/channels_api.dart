//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class ChannelsApi {
  ChannelsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateChannelRequest] createChannelRequest (required):
  Future<Response> createChannelWithHttpInfo(CreateChannelRequest createChannelRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels';

    // ignore: prefer_final_locals
    Object? postBody = createChannelRequest;

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

  /// Create a channel.
  ///
  /// Parameters:
  ///
  /// * [CreateChannelRequest] createChannelRequest (required):
  Future<CreateChannelResponse?> createChannel(CreateChannelRequest createChannelRequest,) async {
    final response = await createChannelWithHttpInfo(createChannelRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateChannelResponse',) as CreateChannelResponse;
    
    }
    return null;
  }

  /// Dispatch a channel action by id.
  ///
  /// Generic action-execution endpoint. `params` shape varies per `action_id`; consult `GET /v1/channels/actions` for the per-id contract. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ExecuteChatActionRequest] executeChatActionRequest (required):
  Future<Response> executeChannelActionWithHttpInfo(ExecuteChatActionRequest executeChatActionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/execute';

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

  /// Dispatch a channel action by id.
  ///
  /// Generic action-execution endpoint. `params` shape varies per `action_id`; consult `GET /v1/channels/actions` for the per-id contract. 
  ///
  /// Parameters:
  ///
  /// * [ExecuteChatActionRequest] executeChatActionRequest (required):
  Future<ExecuteChatActionResponse?> executeChannelAction(ExecuteChatActionRequest executeChatActionRequest,) async {
    final response = await executeChannelActionWithHttpInfo(executeChatActionRequest,);
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

  /// Join a channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Channel id (provider-scoped).
  ///
  /// * [ChannelMembershipRequest] channelMembershipRequest:
  Future<Response> joinChannelWithHttpInfo(String id, { ChannelMembershipRequest? channelMembershipRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/{id}/join'
      .replaceAll('{id}', id);

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

  /// Join a channel.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Channel id (provider-scoped).
  ///
  /// * [ChannelMembershipRequest] channelMembershipRequest:
  Future<SuccessFlag?> joinChannel(String id, { ChannelMembershipRequest? channelMembershipRequest, }) async {
    final response = await joinChannelWithHttpInfo(id,  channelMembershipRequest: channelMembershipRequest, );
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

  /// Leave a channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Channel id (provider-scoped).
  ///
  /// * [ChannelMembershipRequest] channelMembershipRequest:
  Future<Response> leaveChannelWithHttpInfo(String id, { ChannelMembershipRequest? channelMembershipRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/{id}/leave'
      .replaceAll('{id}', id);

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

  /// Leave a channel.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Channel id (provider-scoped).
  ///
  /// * [ChannelMembershipRequest] channelMembershipRequest:
  Future<SuccessFlag?> leaveChannel(String id, { ChannelMembershipRequest? channelMembershipRequest, }) async {
    final response = await leaveChannelWithHttpInfo(id,  channelMembershipRequest: channelMembershipRequest, );
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

  /// Discover the action catalog for the Channels platform.
  ///
  /// Returns the action descriptors the agent layer dispatches via `POST /v1/channels/execute`. Same pattern as the DirectMessages action surface. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listChannelActionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/actions';

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

  /// Discover the action catalog for the Channels platform.
  ///
  /// Returns the action descriptors the agent layer dispatches via `POST /v1/channels/execute`. Same pattern as the DirectMessages action surface. 
  Future<ChatActionsList?> listChannelActions() async {
    final response = await listChannelActionsWithHttpInfo();
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

  /// List messages in a channel.
  ///
  /// Channel ids are provider-scoped; pass `?accountId=` (preferred) or `?accountIds=` to disambiguate when the same id exists on multiple connected accounts (rare). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] channel (required):
  ///   Channel id.
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
  Future<Response> listChannelMessagesWithHttpInfo(String channel, { String? accountId, List<String>? accountIds, List<String>? providers, String? xWorkspaceID, int? limit, String? cursor, bool? oldestFirst, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/messages';

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

  /// List messages in a channel.
  ///
  /// Channel ids are provider-scoped; pass `?accountId=` (preferred) or `?accountIds=` to disambiguate when the same id exists on multiple connected accounts (rare). 
  ///
  /// Parameters:
  ///
  /// * [String] channel (required):
  ///   Channel id.
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
  Future<ListMessagesResponse?> listChannelMessages(String channel, { String? accountId, List<String>? accountIds, List<String>? providers, String? xWorkspaceID, int? limit, String? cursor, bool? oldestFirst, }) async {
    final response = await listChannelMessagesWithHttpInfo(channel,  accountId: accountId, accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, limit: limit, cursor: cursor, oldestFirst: oldestFirst, );
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

  /// List group channels across connected chat providers.
  ///
  /// Fan-out list. The Channels surface filters to channel-type conversations only (`type: channel | private`); for direct messages use `/v1/direct-messages`. 
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
  ///   Provider-specific pagination cursor.
  ///
  /// * [bool] includeArchived:
  ///
  /// * [List<String>] types:
  ///   Repeatable filter on `Channel.type`. Defaults applied by the platform exclude DMs; passing this overrides. 
  Future<Response> listChannelsWithHttpInfo({ List<String>? accountIds, List<String>? providers, String? xWorkspaceID, int? limit, String? cursor, bool? includeArchived, List<String>? types, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels';

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
    if (types != null) {
      queryParams.addAll(_queryParams('multi', 'types', types));
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

  /// List group channels across connected chat providers.
  ///
  /// Fan-out list. The Channels surface filters to channel-type conversations only (`type: channel | private`); for direct messages use `/v1/direct-messages`. 
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
  ///   Provider-specific pagination cursor.
  ///
  /// * [bool] includeArchived:
  ///
  /// * [List<String>] types:
  ///   Repeatable filter on `Channel.type`. Defaults applied by the platform exclude DMs; passing this overrides. 
  Future<ListChannelsResponse?> listChannels({ List<String>? accountIds, List<String>? providers, String? xWorkspaceID, int? limit, String? cursor, bool? includeArchived, List<String>? types, }) async {
    final response = await listChannelsWithHttpInfo( accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, limit: limit, cursor: cursor, includeArchived: includeArchived, types: types, );
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

  /// Send a message to a channel.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendChatMessageRequest] sendChatMessageRequest (required):
  Future<Response> sendChannelMessageWithHttpInfo(SendChatMessageRequest sendChatMessageRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/channels/messages';

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

  /// Send a message to a channel.
  ///
  /// Parameters:
  ///
  /// * [SendChatMessageRequest] sendChatMessageRequest (required):
  Future<SendChatMessageResponse?> sendChannelMessage(SendChatMessageRequest sendChatMessageRequest,) async {
    final response = await sendChannelMessageWithHttpInfo(sendChatMessageRequest,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/channels' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceCreateChannelWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/channels'
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
  Future<Map<String, Object>?> workspaceCreateChannel(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceCreateChannelWithHttpInfo(org, workspace, requestBody,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/channels/execute' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceExecuteChannelActionWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/channels/execute'
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
  Future<Map<String, Object>?> workspaceExecuteChannelAction(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceExecuteChannelActionWithHttpInfo(org, workspace, requestBody,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/channels/{id}/join' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Response> workspaceJoinChannelWithHttpInfo(String org, String workspace, String id, { Map<String, Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/channels/{id}/join'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{id}', id);

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
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<void> workspaceJoinChannel(String org, String workspace, String id, { Map<String, Object>? requestBody, }) async {
    final response = await workspaceJoinChannelWithHttpInfo(org, workspace, id,  requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/channels/{id}/leave' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Response> workspaceLeaveChannelWithHttpInfo(String org, String workspace, String id, { Map<String, Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/channels/{id}/leave'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{id}', id);

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
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<void> workspaceLeaveChannel(String org, String workspace, String id, { Map<String, Object>? requestBody, }) async {
    final response = await workspaceLeaveChannelWithHttpInfo(org, workspace, id,  requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/channels/actions' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListChannelActionsWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/channels/actions'
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
  Future<Map<String, Object>?> workspaceListChannelActions(String org, String workspace,) async {
    final response = await workspaceListChannelActionsWithHttpInfo(org, workspace,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/channels/messages' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListChannelMessagesWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/channels/messages'
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
  Future<Map<String, Object>?> workspaceListChannelMessages(String org, String workspace,) async {
    final response = await workspaceListChannelMessagesWithHttpInfo(org, workspace,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/channels' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListChannelsWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/channels'
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
  Future<Map<String, Object>?> workspaceListChannels(String org, String workspace,) async {
    final response = await workspaceListChannelsWithHttpInfo(org, workspace,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/channels/messages' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceSendChannelMessageWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/channels/messages'
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
  Future<Map<String, Object>?> workspaceSendChannelMessage(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceSendChannelMessageWithHttpInfo(org, workspace, requestBody,);
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
