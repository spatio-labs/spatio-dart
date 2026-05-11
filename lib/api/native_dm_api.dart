//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class NativeDMApi {
  NativeDMApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a reaction to a DM message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> addNativeDMReactionWithHttpInfo(String messageId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/messages/{messageId}/reactions'
      .replaceAll('{messageId}', messageId);

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

  /// Add a reaction to a DM message.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> addNativeDMReaction(String messageId, Map<String, Object> requestBody,) async {
    final response = await addNativeDMReactionWithHttpInfo(messageId, requestBody,);
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

  /// Attach a file to a DM message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> attachToNativeDMMessageWithHttpInfo(String messageId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/messages/{messageId}/attachments'
      .replaceAll('{messageId}', messageId);

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

  /// Attach a file to a DM message.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> attachToNativeDMMessage(String messageId, Map<String, Object> requestBody,) async {
    final response = await attachToNativeDMMessageWithHttpInfo(messageId, requestBody,);
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

  /// Delete a DM message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [String] messageId (required):
  Future<Response> deleteNativeDMMessageWithHttpInfo(String dmId, String messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/{dmId}/messages/{messageId}'
      .replaceAll('{dmId}', dmId)
      .replaceAll('{messageId}', messageId);

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

  /// Delete a DM message.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [String] messageId (required):
  Future<void> deleteNativeDMMessage(String dmId, String messageId,) async {
    final response = await deleteNativeDMMessageWithHttpInfo(dmId, messageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Forward a DM message to another conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> forwardNativeDMMessageWithHttpInfo(String messageId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/messages/{messageId}/forward'
      .replaceAll('{messageId}', messageId);

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

  /// Forward a DM message to another conversation.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> forwardNativeDMMessage(String messageId, Map<String, Object> requestBody,) async {
    final response = await forwardNativeDMMessageWithHttpInfo(messageId, requestBody,);
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

  /// List the caller's DM channels.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listNativeDMChannelsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm';

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

  /// List the caller's DM channels.
  Future<Map<String, Object>?> listNativeDMChannels() async {
    final response = await listNativeDMChannelsWithHttpInfo();
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

  /// List DM conversations with metadata (last message, unread count, etc.).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listNativeDMConversationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/conversations';

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

  /// List DM conversations with metadata (last message, unread count, etc.).
  Future<Map<String, Object>?> listNativeDMConversations() async {
    final response = await listNativeDMConversationsWithHttpInfo();
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

  /// List messages in a DM.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  Future<Response> listNativeDMMessagesWithHttpInfo(String dmId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/{dmId}/messages'
      .replaceAll('{dmId}', dmId);

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

  /// List messages in a DM.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  Future<Map<String, Object>?> listNativeDMMessages(String dmId,) async {
    final response = await listNativeDMMessagesWithHttpInfo(dmId,);
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

  /// List pinned messages in a DM.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  Future<Response> listNativeDMPinnedMessagesWithHttpInfo(String dmId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/{dmId}/pinned'
      .replaceAll('{dmId}', dmId);

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

  /// List pinned messages in a DM.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  Future<Map<String, Object>?> listNativeDMPinnedMessages(String dmId,) async {
    final response = await listNativeDMPinnedMessagesWithHttpInfo(dmId,);
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

  /// List threaded replies on a message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [String] messageId (required):
  Future<Response> listNativeDMThreadRepliesWithHttpInfo(String dmId, String messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/{dmId}/messages/{messageId}/replies'
      .replaceAll('{dmId}', dmId)
      .replaceAll('{messageId}', messageId);

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

  /// List threaded replies on a message.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [String] messageId (required):
  Future<Map<String, Object>?> listNativeDMThreadReplies(String dmId, String messageId,) async {
    final response = await listNativeDMThreadRepliesWithHttpInfo(dmId, messageId,);
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

  /// Mark a DM as read.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  Future<Response> markNativeDMReadWithHttpInfo(String dmId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/{dmId}/read'
      .replaceAll('{dmId}', dmId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Mark a DM as read.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  Future<void> markNativeDMRead(String dmId,) async {
    final response = await markNativeDMReadWithHttpInfo(dmId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Mute a DM.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Response> muteNativeDMWithHttpInfo(String dmId, { Map<String, Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/{dmId}/mute'
      .replaceAll('{dmId}', dmId);

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

  /// Mute a DM.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<void> muteNativeDM(String dmId, { Map<String, Object>? requestBody, }) async {
    final response = await muteNativeDMWithHttpInfo(dmId,  requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Pin a DM conversation in the sidebar.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  Future<Response> pinNativeDMConversationWithHttpInfo(String dmId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/{dmId}/pin'
      .replaceAll('{dmId}', dmId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Pin a DM conversation in the sidebar.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  Future<void> pinNativeDMConversation(String dmId,) async {
    final response = await pinNativeDMConversationWithHttpInfo(dmId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Pin a DM message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<Response> pinNativeDMMessageWithHttpInfo(String messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/messages/{messageId}/pin'
      .replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Pin a DM message.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<void> pinNativeDMMessage(String messageId,) async {
    final response = await pinNativeDMMessageWithHttpInfo(messageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Post a DM message (top-level entry).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> postNativeDMMessageWithHttpInfo(Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm';

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

  /// Post a DM message (top-level entry).
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> postNativeDMMessage(Map<String, Object> requestBody,) async {
    final response = await postNativeDMMessageWithHttpInfo(requestBody,);
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

  /// Post a threaded reply.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> postNativeDMThreadReplyWithHttpInfo(String dmId, String messageId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/{dmId}/messages/{messageId}/replies'
      .replaceAll('{dmId}', dmId)
      .replaceAll('{messageId}', messageId);

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

  /// Post a threaded reply.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> postNativeDMThreadReply(String dmId, String messageId, Map<String, Object> requestBody,) async {
    final response = await postNativeDMThreadReplyWithHttpInfo(dmId, messageId, requestBody,);
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

  /// Remove a reaction.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [String] emoji (required):
  Future<Response> removeNativeDMReactionWithHttpInfo(String messageId, String emoji,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/messages/{messageId}/reactions/{emoji}'
      .replaceAll('{messageId}', messageId)
      .replaceAll('{emoji}', emoji);

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

  /// Remove a reaction.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///
  /// * [String] emoji (required):
  Future<void> removeNativeDMReaction(String messageId, String emoji,) async {
    final response = await removeNativeDMReactionWithHttpInfo(messageId, emoji,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search DM messages.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q:
  Future<Response> searchNativeDMMessagesWithHttpInfo({ String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (q != null) {
      queryParams.addAll(_queryParams('', 'q', q));
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

  /// Search DM messages.
  ///
  /// Parameters:
  ///
  /// * [String] q:
  Future<Map<String, Object>?> searchNativeDMMessages({ String? q, }) async {
    final response = await searchNativeDMMessagesWithHttpInfo( q: q, );
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

  /// Save a draft on a DM conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> setNativeDMDraftWithHttpInfo(String dmId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/{dmId}/draft'
      .replaceAll('{dmId}', dmId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Save a draft on a DM conversation.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<void> setNativeDMDraft(String dmId, Map<String, Object> requestBody,) async {
    final response = await setNativeDMDraftWithHttpInfo(dmId, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unpin a DM conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  Future<Response> unpinNativeDMConversationWithHttpInfo(String dmId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/{dmId}/pin'
      .replaceAll('{dmId}', dmId);

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

  /// Unpin a DM conversation.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  Future<void> unpinNativeDMConversation(String dmId,) async {
    final response = await unpinNativeDMConversationWithHttpInfo(dmId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unpin a DM message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<Response> unpinNativeDMMessageWithHttpInfo(String messageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/messages/{messageId}/pin'
      .replaceAll('{messageId}', messageId);

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

  /// Unpin a DM message.
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  Future<void> unpinNativeDMMessage(String messageId,) async {
    final response = await unpinNativeDMMessageWithHttpInfo(messageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a DM message body.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> updateNativeDMMessageWithHttpInfo(String dmId, String messageId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/native/dm/{dmId}/messages/{messageId}'
      .replaceAll('{dmId}', dmId)
      .replaceAll('{messageId}', messageId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Update a DM message body.
  ///
  /// Parameters:
  ///
  /// * [String] dmId (required):
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> updateNativeDMMessage(String dmId, String messageId, Map<String, Object> requestBody,) async {
    final response = await updateNativeDMMessageWithHttpInfo(dmId, messageId, requestBody,);
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
