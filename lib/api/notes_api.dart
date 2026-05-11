//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class NotesApi {
  NotesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Insert a block in a note.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [CreateBlockRequest] createBlockRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> createBlockWithHttpInfo(String id, CreateBlockRequest createBlockRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}/blocks'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createBlockRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// Insert a block in a note.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [CreateBlockRequest] createBlockRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Block?> createBlock(String id, CreateBlockRequest createBlockRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await createBlockWithHttpInfo(id, createBlockRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Block',) as Block;
    
    }
    return null;
  }

  /// Create a note.
  ///
  /// Creates a new note under the target account. The target is resolved in this order: `accountId` field on the body → `?accountId=` query → `provider` field on the body → `?provider=` query → the caller's single connected account (errors with `ambiguous_account` if more than one is connected and no selector is supplied). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateNoteRequest] createNoteRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> createNoteWithHttpInfo(CreateNoteRequest createNoteRequest, { String? accountId, String? provider, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes';

    // ignore: prefer_final_locals
    Object? postBody = createNoteRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// Create a note.
  ///
  /// Creates a new note under the target account. The target is resolved in this order: `accountId` field on the body → `?accountId=` query → `provider` field on the body → `?provider=` query → the caller's single connected account (errors with `ambiguous_account` if more than one is connected and no selector is supplied). 
  ///
  /// Parameters:
  ///
  /// * [CreateNoteRequest] createNoteRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Note?> createNote(CreateNoteRequest createNoteRequest, { String? accountId, String? provider, String? xWorkspaceID, }) async {
    final response = await createNoteWithHttpInfo(createNoteRequest,  accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Note',) as Note;
    
    }
    return null;
  }

  /// Create a comment or reply.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [CreateCommentRequest] createCommentRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> createNoteCommentWithHttpInfo(String id, CreateCommentRequest createCommentRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}/comments'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createCommentRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// Create a comment or reply.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [CreateCommentRequest] createCommentRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<CommentMutationResponse?> createNoteComment(String id, CreateCommentRequest createCommentRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await createNoteCommentWithHttpInfo(id, createCommentRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommentMutationResponse',) as CommentMutationResponse;
    
    }
    return null;
  }

  /// Delete a block.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Block id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> deleteBlockWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/blocks/{id}'
      .replaceAll('{id}', id);

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a block.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Block id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SuccessFlag?> deleteBlock(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await deleteBlockWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
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

  /// Delete a note.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> deleteNoteWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}'
      .replaceAll('{id}', id);

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a note.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SuccessFlag?> deleteNote(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await deleteNoteWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
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

  /// Soft-delete (native) or hard-delete (provider) a comment.
  ///
  /// Allowed for the comment author and for the note owner. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] commentId (required):
  ///   Comment id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> deleteNoteCommentWithHttpInfo(String id, String commentId, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}/comments/{commentId}'
      .replaceAll('{id}', id)
      .replaceAll('{commentId}', commentId);

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Soft-delete (native) or hard-delete (provider) a comment.
  ///
  /// Allowed for the comment author and for the note owner. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] commentId (required):
  ///   Comment id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SuccessFlag?> deleteNoteComment(String id, String commentId, { String? accountId, String? xWorkspaceID, }) async {
    final response = await deleteNoteCommentWithHttpInfo(id, commentId,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
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

  /// Disable public sharing.
  ///
  /// Owner-only. Subsequent public viewer requests 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> disableNoteShareWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}/share'
      .replaceAll('{id}', id);

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Disable public sharing.
  ///
  /// Owner-only. Subsequent public viewer requests 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<void> disableNoteShare(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await disableNoteShareWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Enable (or update password on) public sharing.
  ///
  /// Owner-only. Calling with an empty body or `setPassword: false` flips the note public without changing the password. With `setPassword: true`, applies `password` (empty string clears). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [EnableShareRequest] enableShareRequest:
  Future<Response> enableNoteShareWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, EnableShareRequest? enableShareRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}/share'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = enableShareRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// Enable (or update password on) public sharing.
  ///
  /// Owner-only. Calling with an empty body or `setPassword: false` flips the note public without changing the password. With `setPassword: true`, applies `password` (empty string clears). 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [EnableShareRequest] enableShareRequest:
  Future<ShareSettings?> enableNoteShare(String id, { String? accountId, String? xWorkspaceID, EnableShareRequest? enableShareRequest, }) async {
    final response = await enableNoteShareWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, enableShareRequest: enableShareRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShareSettings',) as ShareSettings;
    
    }
    return null;
  }

  /// Fetch one block.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Block id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getBlockWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/blocks/{id}'
      .replaceAll('{id}', id);

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

  /// Fetch one block.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Block id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Block?> getBlock(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getBlockWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Block',) as Block;
    
    }
    return null;
  }

  /// Fetch one note.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getNoteWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}'
      .replaceAll('{id}', id);

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

  /// Fetch one note.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Note?> getNote(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getNoteWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Note',) as Note;
    
    }
    return null;
  }

  /// Fetch one comment.
  ///
  /// Useful for permalink hydration when the renderer deep-links into a reply thread. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] commentId (required):
  ///   Comment id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getNoteCommentWithHttpInfo(String id, String commentId, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}/comments/{commentId}'
      .replaceAll('{id}', id)
      .replaceAll('{commentId}', commentId);

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

  /// Fetch one comment.
  ///
  /// Useful for permalink hydration when the renderer deep-links into a reply thread. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] commentId (required):
  ///   Comment id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<CommentResponse?> getNoteComment(String id, String commentId, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getNoteCommentWithHttpInfo(id, commentId,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommentResponse',) as CommentResponse;
    
    }
    return null;
  }

  /// Fetch share settings for a note.
  ///
  /// Owner-only. Returns the current public-share configuration, including the share token and computed public viewer URL when the note is currently public. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getNoteShareSettingsWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}/share'
      .replaceAll('{id}', id);

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

  /// Fetch share settings for a note.
  ///
  /// Owner-only. Returns the current public-share configuration, including the share token and computed public viewer URL when the note is currently public. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<ShareSettings?> getNoteShareSettings(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getNoteShareSettingsWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShareSettings',) as ShareSettings;
    
    }
    return null;
  }

  /// Fetch a publicly shared note.
  ///
  /// Unauthenticated. The share token is the credential. For password-protected notes the password is supplied via the `?password=` query param; the response distinguishes \"no password supplied\" from \"wrong password\" so the viewer can render the right prompt.  Unknown tokens and disabled-share notes both return `404` to prevent token enumeration. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Opaque public-share token.
  ///
  /// * [String] password:
  ///   Optional viewer password.
  Future<Response> getPublicNoteWithHttpInfo(String token, { String? password, }) async {
    // ignore: prefer_const_declarations
    final path = r'/public/notes/{token}'
      .replaceAll('{token}', token);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (password != null) {
      queryParams.addAll(_queryParams('', 'password', password));
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

  /// Fetch a publicly shared note.
  ///
  /// Unauthenticated. The share token is the credential. For password-protected notes the password is supplied via the `?password=` query param; the response distinguishes \"no password supplied\" from \"wrong password\" so the viewer can render the right prompt.  Unknown tokens and disabled-share notes both return `404` to prevent token enumeration. 
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Opaque public-share token.
  ///
  /// * [String] password:
  ///   Optional viewer password.
  Future<Map<String, Object>?> getPublicNote(String token, { String? password, }) async {
    final response = await getPublicNoteWithHttpInfo(token,  password: password, );
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

  /// List blocks under a note.
  ///
  /// Returns the block tree for a note, paginated. Block listing always targets a single account (the one that owns the note) so it does not fan out — the response is a plain `{ blocks, total }`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [String] parentId:
  ///   Filter to children of this block id. Omit to list root-level blocks. 
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<Response> listBlocksWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, String? parentId, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}/blocks'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (parentId != null) {
      queryParams.addAll(_queryParams('', 'parent_id', parentId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// List blocks under a note.
  ///
  /// Returns the block tree for a note, paginated. Block listing always targets a single account (the one that owns the note) so it does not fan out — the response is a plain `{ blocks, total }`. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [String] parentId:
  ///   Filter to children of this block id. Omit to list root-level blocks. 
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<BlockListResponse?> listBlocks(String id, { String? accountId, String? xWorkspaceID, String? parentId, int? limit, int? offset, }) async {
    final response = await listBlocksWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, parentId: parentId, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlockListResponse',) as BlockListResponse;
    
    }
    return null;
  }

  /// List comments on a note.
  ///
  /// Returns active (non-deleted) comments. When `?accountId=` targets an external provider that supports comments (e.g. Notion), the provider is queried directly; otherwise the native store is used. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> listNoteCommentsWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}/comments'
      .replaceAll('{id}', id);

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

  /// List comments on a note.
  ///
  /// Returns active (non-deleted) comments. When `?accountId=` targets an external provider that supports comments (e.g. Notion), the provider is queried directly; otherwise the native store is used. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<CommentListResponse?> listNoteComments(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await listNoteCommentsWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommentListResponse',) as CommentListResponse;
    
    }
    return null;
  }

  /// List notes across connected accounts.
  ///
  /// Fan-out list. Returns every note visible to the caller across every connected notes provider, paginated by `limit` / `offset`. Pass `?accountId=` or `?provider=` to scope to a single source. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [bool] archived:
  ///   When `true`, return archived notes instead of active ones.
  ///
  /// * [String] parentId:
  ///   Filter to notes nested under this parent note id.
  ///
  /// * [List<String>] tags:
  ///   Repeatable. Filter to notes carrying every tag listed.
  ///
  /// * [int] limit:
  ///   Max items to return. Defaults to 50.
  ///
  /// * [int] offset:
  ///   Number of items to skip.
  ///
  /// * [String] sortBy:
  ///   Sort field. Provider-dependent; the native provider supports `updated_at`, `created_at`, `title`. 
  ///
  /// * [String] sortOrder:
  Future<Response> listNotesWithHttpInfo({ String? accountId, String? provider, String? xWorkspaceID, bool? archived, String? parentId, List<String>? tags, int? limit, int? offset, String? sortBy, String? sortOrder, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }
    if (archived != null) {
      queryParams.addAll(_queryParams('', 'archived', archived));
    }
    if (parentId != null) {
      queryParams.addAll(_queryParams('', 'parent_id', parentId));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('multi', 'tags', tags));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sort_by', sortBy));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sort_order', sortOrder));
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

  /// List notes across connected accounts.
  ///
  /// Fan-out list. Returns every note visible to the caller across every connected notes provider, paginated by `limit` / `offset`. Pass `?accountId=` or `?provider=` to scope to a single source. 
  ///
  /// Parameters:
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [bool] archived:
  ///   When `true`, return archived notes instead of active ones.
  ///
  /// * [String] parentId:
  ///   Filter to notes nested under this parent note id.
  ///
  /// * [List<String>] tags:
  ///   Repeatable. Filter to notes carrying every tag listed.
  ///
  /// * [int] limit:
  ///   Max items to return. Defaults to 50.
  ///
  /// * [int] offset:
  ///   Number of items to skip.
  ///
  /// * [String] sortBy:
  ///   Sort field. Provider-dependent; the native provider supports `updated_at`, `created_at`, `title`. 
  ///
  /// * [String] sortOrder:
  Future<NoteListEnvelope?> listNotes({ String? accountId, String? provider, String? xWorkspaceID, bool? archived, String? parentId, List<String>? tags, int? limit, int? offset, String? sortBy, String? sortOrder, }) async {
    final response = await listNotesWithHttpInfo( accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID, archived: archived, parentId: parentId, tags: tags, limit: limit, offset: offset, sortBy: sortBy, sortOrder: sortOrder, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NoteListEnvelope',) as NoteListEnvelope;
    
    }
    return null;
  }

  /// Reparent or reorder a block.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Block id.
  ///
  /// * [MoveBlockRequest] moveBlockRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> moveBlockWithHttpInfo(String id, MoveBlockRequest moveBlockRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/blocks/{id}/move'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = moveBlockRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// Reparent or reorder a block.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Block id.
  ///
  /// * [MoveBlockRequest] moveBlockRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SuccessFlag?> moveBlock(String id, MoveBlockRequest moveBlockRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await moveBlockWithHttpInfo(id, moveBlockRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
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

  /// Rotate the share token, invalidating any outstanding URLs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> rotateNoteShareTokenWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}/share/rotate'
      .replaceAll('{id}', id);

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Rotate the share token, invalidating any outstanding URLs.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<ShareSettings?> rotateNoteShareToken(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await rotateNoteShareTokenWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShareSettings',) as ShareSettings;
    
    }
    return null;
  }

  /// Update a block (partial).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Block id.
  ///
  /// * [UpdateBlockRequest] updateBlockRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> updateBlockWithHttpInfo(String id, UpdateBlockRequest updateBlockRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/blocks/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateBlockRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Update a block (partial).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Block id.
  ///
  /// * [UpdateBlockRequest] updateBlockRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Block?> updateBlock(String id, UpdateBlockRequest updateBlockRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await updateBlockWithHttpInfo(id, updateBlockRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Block',) as Block;
    
    }
    return null;
  }

  /// Update a note (partial).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [UpdateNoteRequest] updateNoteRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> updateNoteWithHttpInfo(String id, UpdateNoteRequest updateNoteRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateNoteRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Update a note (partial).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [UpdateNoteRequest] updateNoteRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Note?> updateNote(String id, UpdateNoteRequest updateNoteRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await updateNoteWithHttpInfo(id, updateNoteRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Note',) as Note;
    
    }
    return null;
  }

  /// Edit a comment.
  ///
  /// Only the comment author can edit. The note owner can delete via `DELETE` but cannot rewrite. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] commentId (required):
  ///   Comment id.
  ///
  /// * [UpdateCommentRequest] updateCommentRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> updateNoteCommentWithHttpInfo(String id, String commentId, UpdateCommentRequest updateCommentRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/notes/{id}/comments/{commentId}'
      .replaceAll('{id}', id)
      .replaceAll('{commentId}', commentId);

    // ignore: prefer_final_locals
    Object? postBody = updateCommentRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Edit a comment.
  ///
  /// Only the comment author can edit. The note owner can delete via `DELETE` but cannot rewrite. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Note id.
  ///
  /// * [String] commentId (required):
  ///   Comment id.
  ///
  /// * [UpdateCommentRequest] updateCommentRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<CommentMutationResponse?> updateNoteComment(String id, String commentId, UpdateCommentRequest updateCommentRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await updateNoteCommentWithHttpInfo(id, commentId, updateCommentRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommentMutationResponse',) as CommentMutationResponse;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/notes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceCreateNoteWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/notes'
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
  Future<Map<String, Object>?> workspaceCreateNote(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceCreateNoteWithHttpInfo(org, workspace, requestBody,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/notes/{id}/blocks' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceCreateNoteBlockWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/notes/{id}/blocks'
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
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceCreateNoteBlock(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspaceCreateNoteBlockWithHttpInfo(org, workspace, id, requestBody,);
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

  /// Performs an HTTP 'DELETE /v1/organizations/{org}/workspaces/{workspace}/notes/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceDeleteNoteWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/notes/{id}'
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
      'DELETE',
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
  Future<void> workspaceDeleteNote(String org, String workspace, String id,) async {
    final response = await workspaceDeleteNoteWithHttpInfo(org, workspace, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceDeleteNoteBlockWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id}'
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
      'DELETE',
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
  Future<void> workspaceDeleteNoteBlock(String org, String workspace, String id,) async {
    final response = await workspaceDeleteNoteBlockWithHttpInfo(org, workspace, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/notes/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceGetNoteWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/notes/{id}'
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
  Future<Map<String, Object>?> workspaceGetNote(String org, String workspace, String id,) async {
    final response = await workspaceGetNoteWithHttpInfo(org, workspace, id,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceGetNoteBlockWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id}'
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
  Future<Map<String, Object>?> workspaceGetNoteBlock(String org, String workspace, String id,) async {
    final response = await workspaceGetNoteBlockWithHttpInfo(org, workspace, id,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/notes/{id}/blocks' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceListNoteBlocksWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/notes/{id}/blocks'
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
  Future<Map<String, Object>?> workspaceListNoteBlocks(String org, String workspace, String id,) async {
    final response = await workspaceListNoteBlocksWithHttpInfo(org, workspace, id,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/notes' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListNotesWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/notes'
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
  Future<Map<String, Object>?> workspaceListNotes(String org, String workspace,) async {
    final response = await workspaceListNotesWithHttpInfo(org, workspace,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id}/move' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceMoveNoteBlockWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id}/move'
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
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceMoveNoteBlock(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspaceMoveNoteBlockWithHttpInfo(org, workspace, id, requestBody,);
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

  /// Performs an HTTP 'PATCH /v1/organizations/{org}/workspaces/{workspace}/notes/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceUpdateNoteWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/notes/{id}'
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
      'PATCH',
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
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceUpdateNote(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspaceUpdateNoteWithHttpInfo(org, workspace, id, requestBody,);
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

  /// Performs an HTTP 'PATCH /v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceUpdateNoteBlockWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/notes/blocks/{id}'
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
      'PATCH',
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
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceUpdateNoteBlock(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspaceUpdateNoteBlockWithHttpInfo(org, workspace, id, requestBody,);
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
