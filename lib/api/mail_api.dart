//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class MailApi {
  MailApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Archive multiple messages (remove the INBOX label).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BulkArchiveRequest] bulkArchiveRequest (required):
  Future<Response> bulkArchiveEmailsWithHttpInfo(BulkArchiveRequest bulkArchiveRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/archive';

    // ignore: prefer_final_locals
    Object? postBody = bulkArchiveRequest;

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

  /// Archive multiple messages (remove the INBOX label).
  ///
  /// Parameters:
  ///
  /// * [BulkArchiveRequest] bulkArchiveRequest (required):
  Future<BulkArchiveResponse?> bulkArchiveEmails(BulkArchiveRequest bulkArchiveRequest,) async {
    final response = await bulkArchiveEmailsWithHttpInfo(bulkArchiveRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BulkArchiveResponse',) as BulkArchiveResponse;
    
    }
    return null;
  }

  /// Delete multiple messages in one call.
  ///
  /// Soft-delete by default (moves to provider trash). Set `permanent: true` for a hard delete. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BulkDeleteEmailsRequest] bulkDeleteEmailsRequest (required):
  Future<Response> bulkDeleteEmailsWithHttpInfo(BulkDeleteEmailsRequest bulkDeleteEmailsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/delete';

    // ignore: prefer_final_locals
    Object? postBody = bulkDeleteEmailsRequest;

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

  /// Delete multiple messages in one call.
  ///
  /// Soft-delete by default (moves to provider trash). Set `permanent: true` for a hard delete. 
  ///
  /// Parameters:
  ///
  /// * [BulkDeleteEmailsRequest] bulkDeleteEmailsRequest (required):
  Future<BulkDeleteEmailsResponse?> bulkDeleteEmails(BulkDeleteEmailsRequest bulkDeleteEmailsRequest,) async {
    final response = await bulkDeleteEmailsWithHttpInfo(bulkDeleteEmailsRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BulkDeleteEmailsResponse',) as BulkDeleteEmailsResponse;
    
    }
    return null;
  }

  /// Mark multiple messages read or unread in one call.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BulkMarkReadRequest] bulkMarkReadRequest (required):
  Future<Response> bulkMarkEmailsReadWithHttpInfo(BulkMarkReadRequest bulkMarkReadRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/mark-read';

    // ignore: prefer_final_locals
    Object? postBody = bulkMarkReadRequest;

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

  /// Mark multiple messages read or unread in one call.
  ///
  /// Parameters:
  ///
  /// * [BulkMarkReadRequest] bulkMarkReadRequest (required):
  Future<BulkMarkReadResponse?> bulkMarkEmailsRead(BulkMarkReadRequest bulkMarkReadRequest,) async {
    final response = await bulkMarkEmailsReadWithHttpInfo(bulkMarkReadRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BulkMarkReadResponse',) as BulkMarkReadResponse;
    
    }
    return null;
  }

  /// Create a draft.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDraftRequest] createDraftRequest (required):
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> createDraftWithHttpInfo(CreateDraftRequest createDraftRequest, { String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/drafts';

    // ignore: prefer_final_locals
    Object? postBody = createDraftRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Create a draft.
  ///
  /// Parameters:
  ///
  /// * [CreateDraftRequest] createDraftRequest (required):
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<DraftResponse?> createDraft(CreateDraftRequest createDraftRequest, { String? xWorkspaceID, }) async {
    final response = await createDraftWithHttpInfo(createDraftRequest,  xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DraftResponse',) as DraftResponse;
    
    }
    return null;
  }

  /// Create a label.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateLabelRequest] createLabelRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> createEmailLabelWithHttpInfo(CreateLabelRequest createLabelRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/labels';

    // ignore: prefer_final_locals
    Object? postBody = createLabelRequest;

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

  /// Create a label.
  ///
  /// Parameters:
  ///
  /// * [CreateLabelRequest] createLabelRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<CreateLabelResponse?> createEmailLabel(CreateLabelRequest createLabelRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await createEmailLabelWithHttpInfo(createLabelRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateLabelResponse',) as CreateLabelResponse;
    
    }
    return null;
  }

  /// Create a mail template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> createMailTemplateWithHttpInfo(Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/templates';

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

  /// Create a mail template.
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> createMailTemplate(Map<String, Object> requestBody,) async {
    final response = await createMailTemplateWithHttpInfo(requestBody,);
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

  /// Delete a draft.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Draft id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> deleteDraftWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/drafts/{id}'
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

  /// Delete a draft.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Draft id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<void> deleteDraft(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await deleteDraftWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an email.
  ///
  /// Soft-deletes (moves to provider trash).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Email message id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> deleteEmailWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/email/{id}'
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

  /// Delete an email.
  ///
  /// Soft-deletes (moves to provider trash).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Email message id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SuccessFlag?> deleteEmail(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await deleteEmailWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
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

  /// Delete a label.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Label id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> deleteEmailLabelWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/labels/{id}'
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

  /// Delete a label.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Label id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<void> deleteEmailLabel(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await deleteEmailLabelWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a mail template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteMailTemplateWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/templates/{id}'
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

  /// Delete a mail template.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteMailTemplate(String id,) async {
    final response = await deleteMailTemplateWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one email.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Email message id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getEmailWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/email/{id}'
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

  /// Fetch one email.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Email message id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<GetEmailResponse?> getEmail(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getEmailWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetEmailResponse',) as GetEmailResponse;
    
    }
    return null;
  }

  /// Download an attachment.
  ///
  /// Streams the attachment binary. Response `Content-Type` matches the attachment's declared MIME type; `Content-Disposition` sets the filename. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Message id the attachment belongs to.
  ///
  /// * [String] attachmentId (required):
  ///   Attachment id within the message.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getEmailAttachmentWithHttpInfo(String messageId, String attachmentId, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/attachment/{messageId}/{attachmentId}'
      .replaceAll('{messageId}', messageId)
      .replaceAll('{attachmentId}', attachmentId);

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

  /// Download an attachment.
  ///
  /// Streams the attachment binary. Response `Content-Type` matches the attachment's declared MIME type; `Content-Disposition` sets the filename. 
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Message id the attachment belongs to.
  ///
  /// * [String] attachmentId (required):
  ///   Attachment id within the message.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<MultipartFile?> getEmailAttachment(String messageId, String attachmentId, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getEmailAttachmentWithHttpInfo(messageId, attachmentId,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Fetch a thread (the conversation a message belongs to).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Thread id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getEmailThreadWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/thread/{id}'
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

  /// Fetch a thread (the conversation a message belongs to).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Thread id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<GetThreadResponse?> getEmailThread(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getEmailThreadWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetThreadResponse',) as GetThreadResponse;
    
    }
    return null;
  }

  /// Fetch a mail template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getMailTemplateWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/templates/{id}'
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

  /// Fetch a mail template.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Map<String, Object>?> getMailTemplate(String id,) async {
    final response = await getMailTemplateWithHttpInfo(id,);
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

  /// Read mail-tracking events for a thread (open log, reply log, etc.).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] threadId (required):
  Future<Response> getMailThreadTrackingWithHttpInfo(String threadId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/threads/{threadId}/tracking'
      .replaceAll('{threadId}', threadId);

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

  /// Read mail-tracking events for a thread (open log, reply log, etc.).
  ///
  /// Parameters:
  ///
  /// * [String] threadId (required):
  Future<Map<String, Object>?> getMailThreadTracking(String threadId,) async {
    final response = await getMailThreadTrackingWithHttpInfo(threadId,);
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

  /// Render a template with variables and return the resulting draft.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> instantiateMailTemplateWithHttpInfo(String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/templates/{id}/instantiate'
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

  /// Render a template with variables and return the resulting draft.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> instantiateMailTemplate(String id, Map<String, Object> requestBody,) async {
    final response = await instantiateMailTemplateWithHttpInfo(id, requestBody,);
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

  /// List drafts across connected mail accounts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [List<String>] accountIds:
  ///   Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
  ///
  /// * [List<String>] providers:
  ///   Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
  ///
  /// * [int] limit:
  ///
  /// * [String] nextPageToken:
  Future<Response> listDraftsWithHttpInfo({ String? xWorkspaceID, List<String>? accountIds, List<String>? providers, int? limit, String? nextPageToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/drafts';

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
    if (nextPageToken != null) {
      queryParams.addAll(_queryParams('', 'nextPageToken', nextPageToken));
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

  /// List drafts across connected mail accounts.
  ///
  /// Parameters:
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [List<String>] accountIds:
  ///   Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
  ///
  /// * [List<String>] providers:
  ///   Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
  ///
  /// * [int] limit:
  ///
  /// * [String] nextPageToken:
  Future<ListDraftsResponse?> listDrafts({ String? xWorkspaceID, List<String>? accountIds, List<String>? providers, int? limit, String? nextPageToken, }) async {
    final response = await listDraftsWithHttpInfo( xWorkspaceID: xWorkspaceID, accountIds: accountIds, providers: providers, limit: limit, nextPageToken: nextPageToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListDraftsResponse',) as ListDraftsResponse;
    
    }
    return null;
  }

  /// List labels on the resolved mail account.
  ///
  /// Single-account list. The platform auto-resolves to the caller's sole connected account; pass `?accountId=` to disambiguate when multiple are connected. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> listEmailLabelsWithHttpInfo({ String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/labels';

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

  /// List labels on the resolved mail account.
  ///
  /// Single-account list. The platform auto-resolves to the caller's sole connected account; pass `?accountId=` to disambiguate when multiple are connected. 
  ///
  /// Parameters:
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<ListLabelsResponse?> listEmailLabels({ String? accountId, String? xWorkspaceID, }) async {
    final response = await listEmailLabelsWithHttpInfo( accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListLabelsResponse',) as ListLabelsResponse;
    
    }
    return null;
  }

  /// List emails across connected mail accounts.
  ///
  /// Fan-out list. Returns messages across every connected mail provider unless filtered. Pass `?accountIds=` (repeatable) to restrict to specific accounts, `?providers=` to restrict to specific provider ids, or both for the intersection. 
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
  /// * [String] query:
  ///   Provider-specific full-text query (e.g. Gmail search syntax).
  ///
  /// * [List<String>] labels:
  ///   Repeatable. Filter to messages carrying every label.
  ///
  /// * [String] folder:
  ///   Logical folder filter. Canonical values: `inbox`, `sent`, `starred`, `trash`, `archive`. Provider-specific folders accepted as opaque strings. 
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<Response> listEmailsWithHttpInfo({ List<String>? accountIds, List<String>? providers, String? xWorkspaceID, String? query, List<String>? labels, String? folder, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/list';

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
    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
    if (labels != null) {
      queryParams.addAll(_queryParams('multi', 'labels', labels));
    }
    if (folder != null) {
      queryParams.addAll(_queryParams('', 'folder', folder));
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

  /// List emails across connected mail accounts.
  ///
  /// Fan-out list. Returns messages across every connected mail provider unless filtered. Pass `?accountIds=` (repeatable) to restrict to specific accounts, `?providers=` to restrict to specific provider ids, or both for the intersection. 
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
  /// * [String] query:
  ///   Provider-specific full-text query (e.g. Gmail search syntax).
  ///
  /// * [List<String>] labels:
  ///   Repeatable. Filter to messages carrying every label.
  ///
  /// * [String] folder:
  ///   Logical folder filter. Canonical values: `inbox`, `sent`, `starred`, `trash`, `archive`. Provider-specific folders accepted as opaque strings. 
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<ListEmailsResponse?> listEmails({ List<String>? accountIds, List<String>? providers, String? xWorkspaceID, String? query, List<String>? labels, String? folder, int? limit, int? offset, }) async {
    final response = await listEmailsWithHttpInfo( accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, query: query, labels: labels, folder: folder, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListEmailsResponse',) as ListEmailsResponse;
    
    }
    return null;
  }

  /// List the caller's saved mail templates.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listMailTemplatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/templates';

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

  /// List the caller's saved mail templates.
  Future<Map<String, Object>?> listMailTemplates() async {
    final response = await listMailTemplatesWithHttpInfo();
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

  /// Reply to a specific email.
  ///
  /// The original message is identified by `?messageId=`. Body defaults to the original sender as recipient — pass `to`, `cc`, `bcc` to override. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Id of the message being replied to.
  ///
  /// * [ReplyEmailRequest] replyEmailRequest (required):
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> replyEmailWithHttpInfo(String messageId, ReplyEmailRequest replyEmailRequest, { String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/reply';

    // ignore: prefer_final_locals
    Object? postBody = replyEmailRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'messageId', messageId));

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

  /// Reply to a specific email.
  ///
  /// The original message is identified by `?messageId=`. Body defaults to the original sender as recipient — pass `to`, `cc`, `bcc` to override. 
  ///
  /// Parameters:
  ///
  /// * [String] messageId (required):
  ///   Id of the message being replied to.
  ///
  /// * [ReplyEmailRequest] replyEmailRequest (required):
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SendEmailResponse?> replyEmail(String messageId, ReplyEmailRequest replyEmailRequest, { String? xWorkspaceID, }) async {
    final response = await replyEmailWithHttpInfo(messageId, replyEmailRequest,  xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendEmailResponse',) as SendEmailResponse;
    
    }
    return null;
  }

  /// Save-or-create endpoint used by the renderer's \"save as template\" flow. Distinct from POST /v1/mail/templates which is the strict create. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> saveMailTemplateWithHttpInfo(Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/templates/save';

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

  /// Save-or-create endpoint used by the renderer's \"save as template\" flow. Distinct from POST /v1/mail/templates which is the strict create. 
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> saveMailTemplate(Map<String, Object> requestBody,) async {
    final response = await saveMailTemplateWithHttpInfo(requestBody,);
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

  /// Structured search across connected mail accounts.
  ///
  /// Fan-out search. Mirrors `listEmails`'s account/provider filter semantics. Date range filters are inclusive. The query string itself is passed via `?q=` (not `?query=`); structured filters go in their own params. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Provider-specific full-text query string.
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
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] subject:
  ///
  /// * [bool] hasAttachment:
  ///
  /// * [bool] isUnread:
  ///
  /// * [bool] isStarred:
  ///
  /// * [List<String>] labels:
  ///
  /// * [DateTime] after:
  ///   Inclusive lower-bound date.
  ///
  /// * [DateTime] before:
  ///   Inclusive upper-bound date.
  ///
  /// * [int] limit:
  ///
  /// * [String] nextPageToken:
  ///   Cursor returned by the previous call.
  Future<Response> searchEmailsWithHttpInfo(String q, { List<String>? accountIds, List<String>? providers, String? xWorkspaceID, String? from, String? to, String? subject, bool? hasAttachment, bool? isUnread, bool? isStarred, List<String>? labels, DateTime? after, DateTime? before, int? limit, String? nextPageToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/search';

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
      queryParams.addAll(_queryParams('', 'q', q));
    if (from != null) {
      queryParams.addAll(_queryParams('', 'from', from));
    }
    if (to != null) {
      queryParams.addAll(_queryParams('', 'to', to));
    }
    if (subject != null) {
      queryParams.addAll(_queryParams('', 'subject', subject));
    }
    if (hasAttachment != null) {
      queryParams.addAll(_queryParams('', 'hasAttachment', hasAttachment));
    }
    if (isUnread != null) {
      queryParams.addAll(_queryParams('', 'isUnread', isUnread));
    }
    if (isStarred != null) {
      queryParams.addAll(_queryParams('', 'isStarred', isStarred));
    }
    if (labels != null) {
      queryParams.addAll(_queryParams('multi', 'labels', labels));
    }
    if (after != null) {
      queryParams.addAll(_queryParams('', 'after', after));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (nextPageToken != null) {
      queryParams.addAll(_queryParams('', 'nextPageToken', nextPageToken));
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

  /// Structured search across connected mail accounts.
  ///
  /// Fan-out search. Mirrors `listEmails`'s account/provider filter semantics. Date range filters are inclusive. The query string itself is passed via `?q=` (not `?query=`); structured filters go in their own params. 
  ///
  /// Parameters:
  ///
  /// * [String] q (required):
  ///   Provider-specific full-text query string.
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
  /// * [String] from:
  ///
  /// * [String] to:
  ///
  /// * [String] subject:
  ///
  /// * [bool] hasAttachment:
  ///
  /// * [bool] isUnread:
  ///
  /// * [bool] isStarred:
  ///
  /// * [List<String>] labels:
  ///
  /// * [DateTime] after:
  ///   Inclusive lower-bound date.
  ///
  /// * [DateTime] before:
  ///   Inclusive upper-bound date.
  ///
  /// * [int] limit:
  ///
  /// * [String] nextPageToken:
  ///   Cursor returned by the previous call.
  Future<SearchEmailsResponse?> searchEmails(String q, { List<String>? accountIds, List<String>? providers, String? xWorkspaceID, String? from, String? to, String? subject, bool? hasAttachment, bool? isUnread, bool? isStarred, List<String>? labels, DateTime? after, DateTime? before, int? limit, String? nextPageToken, }) async {
    final response = await searchEmailsWithHttpInfo(q,  accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, from: from, to: to, subject: subject, hasAttachment: hasAttachment, isUnread: isUnread, isStarred: isStarred, labels: labels, after: after, before: before, limit: limit, nextPageToken: nextPageToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchEmailsResponse',) as SearchEmailsResponse;
    
    }
    return null;
  }

  /// Send a draft.
  ///
  /// Submits the draft as an outbound message. The draft is consumed by the provider — subsequent `getDraft`/`updateDraft` calls return `404`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Draft id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> sendDraftWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/drafts/{id}/send'
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

  /// Send a draft.
  ///
  /// Submits the draft as an outbound message. The draft is consumed by the provider — subsequent `getDraft`/`updateDraft` calls return `404`. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Draft id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SendEmailResponse?> sendDraft(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await sendDraftWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendEmailResponse',) as SendEmailResponse;
    
    }
    return null;
  }

  /// Send an email.
  ///
  /// Sends through the resolved connected account (auto-picks if the caller has exactly one connected mail account; errors `ambiguous_account` otherwise unless `accountId` is supplied). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendEmailRequest] sendEmailRequest (required):
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> sendEmailWithHttpInfo(SendEmailRequest sendEmailRequest, { String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/send';

    // ignore: prefer_final_locals
    Object? postBody = sendEmailRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Send an email.
  ///
  /// Sends through the resolved connected account (auto-picks if the caller has exactly one connected mail account; errors `ambiguous_account` otherwise unless `accountId` is supplied). 
  ///
  /// Parameters:
  ///
  /// * [SendEmailRequest] sendEmailRequest (required):
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SendEmailResponse?> sendEmail(SendEmailRequest sendEmailRequest, { String? xWorkspaceID, }) async {
    final response = await sendEmailWithHttpInfo(sendEmailRequest,  xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SendEmailResponse',) as SendEmailResponse;
    
    }
    return null;
  }

  /// Update a draft (full replacement of provided fields).
  ///
  /// PUT replaces the full set of provided fields on the draft. Fields omitted from the body are not modified. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Draft id.
  ///
  /// * [UpdateDraftRequest] updateDraftRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> updateDraftWithHttpInfo(String id, UpdateDraftRequest updateDraftRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/drafts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateDraftRequest;

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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a draft (full replacement of provided fields).
  ///
  /// PUT replaces the full set of provided fields on the draft. Fields omitted from the body are not modified. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Draft id.
  ///
  /// * [UpdateDraftRequest] updateDraftRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<DraftResponse?> updateDraft(String id, UpdateDraftRequest updateDraftRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await updateDraftWithHttpInfo(id, updateDraftRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DraftResponse',) as DraftResponse;
    
    }
    return null;
  }

  /// Update an email (mark read/star, add/remove labels).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Email message id.
  ///
  /// * [UpdateEmailRequest] updateEmailRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> updateEmailWithHttpInfo(String id, UpdateEmailRequest updateEmailRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/email/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateEmailRequest;

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

  /// Update an email (mark read/star, add/remove labels).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Email message id.
  ///
  /// * [UpdateEmailRequest] updateEmailRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<UpdateEmailResponse?> updateEmail(String id, UpdateEmailRequest updateEmailRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await updateEmailWithHttpInfo(id, updateEmailRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateEmailResponse',) as UpdateEmailResponse;
    
    }
    return null;
  }

  /// Update a mail template.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> updateMailTemplateWithHttpInfo(String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/mail/templates/{id}'
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

  /// Update a mail template.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> updateMailTemplate(String id, Map<String, Object> requestBody,) async {
    final response = await updateMailTemplateWithHttpInfo(id, requestBody,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/mail/{messageId}/labels' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceAddMailMessageLabelsWithHttpInfo(String org, String workspace, String messageId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/{messageId}/labels'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] messageId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceAddMailMessageLabels(String org, String workspace, String messageId, Map<String, Object> requestBody,) async {
    final response = await workspaceAddMailMessageLabelsWithHttpInfo(org, workspace, messageId, requestBody,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/mail/drafts' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceCreateMailDraftWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/drafts'
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
  Future<Map<String, Object>?> workspaceCreateMailDraft(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceCreateMailDraftWithHttpInfo(org, workspace, requestBody,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/mail/labels' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceCreateMailLabelWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/labels'
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
  Future<Map<String, Object>?> workspaceCreateMailLabel(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceCreateMailLabelWithHttpInfo(org, workspace, requestBody,);
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

  /// Performs an HTTP 'DELETE /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceDeleteMailWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/email/{id}'
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
  Future<void> workspaceDeleteMail(String org, String workspace, String id,) async {
    final response = await workspaceDeleteMailWithHttpInfo(org, workspace, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceDeleteMailDraftWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id}'
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
  Future<void> workspaceDeleteMailDraft(String org, String workspace, String id,) async {
    final response = await workspaceDeleteMailDraftWithHttpInfo(org, workspace, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /v1/organizations/{org}/workspaces/{workspace}/mail/labels/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceDeleteMailLabelWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/labels/{id}'
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
  Future<void> workspaceDeleteMailLabel(String org, String workspace, String id,) async {
    final response = await workspaceDeleteMailLabelWithHttpInfo(org, workspace, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceGetMailWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/email/{id}'
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
  Future<Map<String, Object>?> workspaceGetMail(String org, String workspace, String id,) async {
    final response = await workspaceGetMailWithHttpInfo(org, workspace, id,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/mail/attachment/{messageId}/{attachmentId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] messageId (required):
  ///
  /// * [String] attachmentId (required):
  Future<Response> workspaceGetMailAttachmentWithHttpInfo(String org, String workspace, String messageId, String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/attachment/{messageId}/{attachmentId}'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{messageId}', messageId)
      .replaceAll('{attachmentId}', attachmentId);

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
  /// * [String] messageId (required):
  ///
  /// * [String] attachmentId (required):
  Future<Map<String, Object>?> workspaceGetMailAttachment(String org, String workspace, String messageId, String attachmentId,) async {
    final response = await workspaceGetMailAttachmentWithHttpInfo(org, workspace, messageId, attachmentId,);
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

  /// Workspace-scoped renderer-compat alias for mail/email/{id}.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceGetMailByIdWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/{id}'
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

  /// Workspace-scoped renderer-compat alias for mail/email/{id}.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Map<String, Object>?> workspaceGetMailById(String org, String workspace, String id,) async {
    final response = await workspaceGetMailByIdWithHttpInfo(org, workspace, id,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceGetMailDraftWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id}'
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
  Future<Map<String, Object>?> workspaceGetMailDraft(String org, String workspace, String id,) async {
    final response = await workspaceGetMailDraftWithHttpInfo(org, workspace, id,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/mail/thread/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceGetMailThreadWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/thread/{id}'
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
  Future<Map<String, Object>?> workspaceGetMailThread(String org, String workspace, String id,) async {
    final response = await workspaceGetMailThreadWithHttpInfo(org, workspace, id,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/mail/list' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListMailWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/list'
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
  Future<Map<String, Object>?> workspaceListMail(String org, String workspace,) async {
    final response = await workspaceListMailWithHttpInfo(org, workspace,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/mail/drafts' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListMailDraftsWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/drafts'
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
  Future<Map<String, Object>?> workspaceListMailDrafts(String org, String workspace,) async {
    final response = await workspaceListMailDraftsWithHttpInfo(org, workspace,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/mail/labels' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListMailLabelsWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/labels'
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
  Future<Map<String, Object>?> workspaceListMailLabels(String org, String workspace,) async {
    final response = await workspaceListMailLabelsWithHttpInfo(org, workspace,);
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

  /// Performs an HTTP 'PATCH /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspacePatchMailWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/email/{id}'
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
  Future<Map<String, Object>?> workspacePatchMail(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspacePatchMailWithHttpInfo(org, workspace, id, requestBody,);
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

  /// Performs an HTTP 'DELETE /v1/organizations/{org}/workspaces/{workspace}/mail/{messageId}/labels/{labelId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] messageId (required):
  ///
  /// * [String] labelId (required):
  Future<Response> workspaceRemoveMailMessageLabelWithHttpInfo(String org, String workspace, String messageId, String labelId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/{messageId}/labels/{labelId}'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{messageId}', messageId)
      .replaceAll('{labelId}', labelId);

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
  /// * [String] messageId (required):
  ///
  /// * [String] labelId (required):
  Future<void> workspaceRemoveMailMessageLabel(String org, String workspace, String messageId, String labelId,) async {
    final response = await workspaceRemoveMailMessageLabelWithHttpInfo(org, workspace, messageId, labelId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/mail/reply' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceReplyMailWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/reply'
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
  Future<Map<String, Object>?> workspaceReplyMail(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceReplyMailWithHttpInfo(org, workspace, requestBody,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/mail/search' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] q:
  Future<Response> workspaceSearchMailWithHttpInfo(String org, String workspace, { String? q, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/search'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] q:
  Future<Map<String, Object>?> workspaceSearchMail(String org, String workspace, { String? q, }) async {
    final response = await workspaceSearchMailWithHttpInfo(org, workspace,  q: q, );
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/mail/send' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceSendMailWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/send'
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
  Future<Map<String, Object>?> workspaceSendMail(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceSendMailWithHttpInfo(org, workspace, requestBody,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id}/send' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceSendMailDraftWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id}/send'
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
  Future<Map<String, Object>?> workspaceSendMailDraft(String org, String workspace, String id,) async {
    final response = await workspaceSendMailDraftWithHttpInfo(org, workspace, id,);
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

  /// Renderer-compat alias for /mail/send.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceSendMailEmailAliasWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/email'
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

  /// Renderer-compat alias for /mail/send.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceSendMailEmailAlias(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceSendMailEmailAliasWithHttpInfo(org, workspace, requestBody,);
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

  /// Performs an HTTP 'PUT /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceUpdateMailWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/email/{id}'
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
      'PUT',
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
  Future<Map<String, Object>?> workspaceUpdateMail(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspaceUpdateMailWithHttpInfo(org, workspace, id, requestBody,);
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

  /// Performs an HTTP 'PUT /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceUpdateMailDraftWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id}'
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
      'PUT',
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
  Future<Map<String, Object>?> workspaceUpdateMailDraft(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspaceUpdateMailDraftWithHttpInfo(org, workspace, id, requestBody,);
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

  /// Performs an HTTP 'PUT /v1/organizations/{org}/workspaces/{workspace}/mail/labels/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceUpdateMailLabelWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/mail/labels/{id}'
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
      'PUT',
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
  Future<Map<String, Object>?> workspaceUpdateMailLabel(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspaceUpdateMailLabelWithHttpInfo(org, workspace, id, requestBody,);
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
