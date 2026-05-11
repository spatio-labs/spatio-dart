//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class FilesApi {
  FilesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete multiple files in one call.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BulkDeleteFilesRequest] bulkDeleteFilesRequest (required):
  Future<Response> bulkDeleteFilesWithHttpInfo(BulkDeleteFilesRequest bulkDeleteFilesRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/delete';

    // ignore: prefer_final_locals
    Object? postBody = bulkDeleteFilesRequest;

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

  /// Delete multiple files in one call.
  ///
  /// Parameters:
  ///
  /// * [BulkDeleteFilesRequest] bulkDeleteFilesRequest (required):
  Future<BulkFilesResponse?> bulkDeleteFiles(BulkDeleteFilesRequest bulkDeleteFilesRequest,) async {
    final response = await bulkDeleteFilesWithHttpInfo(bulkDeleteFilesRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BulkFilesResponse',) as BulkFilesResponse;
    
    }
    return null;
  }

  /// Move multiple files to a target folder.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BulkMoveFilesRequest] bulkMoveFilesRequest (required):
  Future<Response> bulkMoveFilesWithHttpInfo(BulkMoveFilesRequest bulkMoveFilesRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/move';

    // ignore: prefer_final_locals
    Object? postBody = bulkMoveFilesRequest;

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

  /// Move multiple files to a target folder.
  ///
  /// Parameters:
  ///
  /// * [BulkMoveFilesRequest] bulkMoveFilesRequest (required):
  Future<BulkFilesResponse?> bulkMoveFiles(BulkMoveFilesRequest bulkMoveFilesRequest,) async {
    final response = await bulkMoveFilesWithHttpInfo(bulkMoveFilesRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BulkFilesResponse',) as BulkFilesResponse;
    
    }
    return null;
  }

  /// Finalize a chunked-upload session and create the file row.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CommitChunkedUploadRequest] commitChunkedUploadRequest (required):
  Future<Response> commitChunkedUploadWithHttpInfo(CommitChunkedUploadRequest commitChunkedUploadRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/upload/chunked/commit';

    // ignore: prefer_final_locals
    Object? postBody = commitChunkedUploadRequest;

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

  /// Finalize a chunked-upload session and create the file row.
  ///
  /// Parameters:
  ///
  /// * [CommitChunkedUploadRequest] commitChunkedUploadRequest (required):
  Future<CommitChunkedUploadResponse?> commitChunkedUpload(CommitChunkedUploadRequest commitChunkedUploadRequest,) async {
    final response = await commitChunkedUploadWithHttpInfo(commitChunkedUploadRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CommitChunkedUploadResponse',) as CommitChunkedUploadResponse;
    
    }
    return null;
  }

  /// Create a folder.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateFolderRequest] createFolderRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> createFileFolderWithHttpInfo(CreateFolderRequest createFolderRequest, { String? accountId, String? provider, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/folders';

    // ignore: prefer_final_locals
    Object? postBody = createFolderRequest;

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

  /// Create a folder.
  ///
  /// Parameters:
  ///
  /// * [CreateFolderRequest] createFolderRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Folder?> createFileFolder(CreateFolderRequest createFolderRequest, { String? accountId, String? provider, String? xWorkspaceID, }) async {
    final response = await createFileFolderWithHttpInfo(createFolderRequest,  accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Folder',) as Folder;
    
    }
    return null;
  }

  /// Delete a file.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> deleteFileWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/{id}'
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

  /// Delete a file.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<void> deleteFile(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await deleteFileWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Extract text content from a PDF (or other supported file).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [int] pageStart:
  ///
  /// * [int] pageEnd:
  ///
  /// * [int] maxChars:
  ///   Truncation limit; sets `truncated: true` when hit.
  Future<Response> extractFileTextWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, int? pageStart, int? pageEnd, int? maxChars, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/{id}/extract-text'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (pageStart != null) {
      queryParams.addAll(_queryParams('', 'pageStart', pageStart));
    }
    if (pageEnd != null) {
      queryParams.addAll(_queryParams('', 'pageEnd', pageEnd));
    }
    if (maxChars != null) {
      queryParams.addAll(_queryParams('', 'maxChars', maxChars));
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

  /// Extract text content from a PDF (or other supported file).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [int] pageStart:
  ///
  /// * [int] pageEnd:
  ///
  /// * [int] maxChars:
  ///   Truncation limit; sets `truncated: true` when hit.
  Future<ExtractTextResult?> extractFileText(String id, { String? accountId, String? xWorkspaceID, int? pageStart, int? pageEnd, int? maxChars, }) async {
    final response = await extractFileTextWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, pageStart: pageStart, pageEnd: pageEnd, maxChars: maxChars, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractTextResult',) as ExtractTextResult;
    
    }
    return null;
  }

  /// Fetch the block manifest for a chunked-uploaded file.
  ///
  /// Only meaningful for files uploaded via `upload/chunked/_*`. Files uploaded via `upload` or `upload/base64` return `404`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getChunkedFileManifestWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/{id}/manifest'
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

  /// Fetch the block manifest for a chunked-uploaded file.
  ///
  /// Only meaningful for files uploaded via `upload/chunked/_*`. Files uploaded via `upload` or `upload/base64` return `404`. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<ChunkedFileManifest?> getChunkedFileManifest(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getChunkedFileManifestWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ChunkedFileManifest',) as ChunkedFileManifest;
    
    }
    return null;
  }

  /// Fetch one file's metadata.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getFileWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/{id}'
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

  /// Fetch one file's metadata.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SpatioFile?> getFile(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getFileWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpatioFile',) as SpatioFile;
    
    }
    return null;
  }

  /// Mint a fresh signed download URL.
  ///
  /// Returns a JSON envelope with a pre-signed URL pointing at the backing storage. Clients follow the URL — the platform does not stream bytes through itself. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getFileDownloadUrlWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/{id}/download'
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

  /// Mint a fresh signed download URL.
  ///
  /// Returns a JSON envelope with a pre-signed URL pointing at the backing storage. Clients follow the URL — the platform does not stream bytes through itself. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<DownloadFileResponse?> getFileDownloadUrl(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getFileDownloadUrlWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DownloadFileResponse',) as DownloadFileResponse;
    
    }
    return null;
  }

  /// Begin a content-addressed chunked upload session.
  ///
  /// Client computes per-block hashes ahead of time and submits the list. The server replies with which blocks need uploading vs. already-on-server (deduplicated). Subsequent calls upload the missing blocks via `uploadChunkedBlock`, then `commit`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InitChunkedUploadRequest] initChunkedUploadRequest (required):
  Future<Response> initChunkedUploadWithHttpInfo(InitChunkedUploadRequest initChunkedUploadRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/upload/chunked/init';

    // ignore: prefer_final_locals
    Object? postBody = initChunkedUploadRequest;

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

  /// Begin a content-addressed chunked upload session.
  ///
  /// Client computes per-block hashes ahead of time and submits the list. The server replies with which blocks need uploading vs. already-on-server (deduplicated). Subsequent calls upload the missing blocks via `uploadChunkedBlock`, then `commit`. 
  ///
  /// Parameters:
  ///
  /// * [InitChunkedUploadRequest] initChunkedUploadRequest (required):
  Future<InitChunkedUploadResponse?> initChunkedUpload(InitChunkedUploadRequest initChunkedUploadRequest,) async {
    final response = await initChunkedUploadWithHttpInfo(initChunkedUploadRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InitChunkedUploadResponse',) as InitChunkedUploadResponse;
    
    }
    return null;
  }

  /// List folders across connected file providers.
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
  /// * [String] parentId:
  ///   Filter to children of this folder. Omit for root.
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] organizationId:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<Response> listFileFoldersWithHttpInfo({ String? accountId, String? provider, String? xWorkspaceID, String? parentId, String? workspaceId, String? organizationId, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/folders';

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
    if (parentId != null) {
      queryParams.addAll(_queryParams('', 'parentId', parentId));
    }
    if (workspaceId != null) {
      queryParams.addAll(_queryParams('', 'workspaceId', workspaceId));
    }
    if (organizationId != null) {
      queryParams.addAll(_queryParams('', 'organizationId', organizationId));
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

  /// List folders across connected file providers.
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
  /// * [String] parentId:
  ///   Filter to children of this folder. Omit for root.
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] organizationId:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<FolderListEnvelope?> listFileFolders({ String? accountId, String? provider, String? xWorkspaceID, String? parentId, String? workspaceId, String? organizationId, int? limit, int? offset, }) async {
    final response = await listFileFoldersWithHttpInfo( accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID, parentId: parentId, workspaceId: workspaceId, organizationId: organizationId, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FolderListEnvelope',) as FolderListEnvelope;
    
    }
    return null;
  }

  /// List files across connected file providers.
  ///
  /// Fan-out list. Returns files from every connected file provider unless filtered by `?accountId=` or `?provider=`. Folder contents are scoped via `?folderId=`; omit for account root. 
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
  /// * [String] folderId:
  ///   Filter to one folder. Omit for the account root.
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] organizationId:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  ///
  /// * [String] sortBy:
  ///   Provider-dependent. Common values: `created_at`, `name`, `size`.
  ///
  /// * [String] sortOrder:
  Future<Response> listFilesWithHttpInfo({ String? accountId, String? provider, String? xWorkspaceID, String? folderId, String? workspaceId, String? organizationId, int? limit, int? offset, String? sortBy, String? sortOrder, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files';

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
    if (folderId != null) {
      queryParams.addAll(_queryParams('', 'folderId', folderId));
    }
    if (workspaceId != null) {
      queryParams.addAll(_queryParams('', 'workspaceId', workspaceId));
    }
    if (organizationId != null) {
      queryParams.addAll(_queryParams('', 'organizationId', organizationId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sortOrder', sortOrder));
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

  /// List files across connected file providers.
  ///
  /// Fan-out list. Returns files from every connected file provider unless filtered by `?accountId=` or `?provider=`. Folder contents are scoped via `?folderId=`; omit for account root. 
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
  /// * [String] folderId:
  ///   Filter to one folder. Omit for the account root.
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] organizationId:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  ///
  /// * [String] sortBy:
  ///   Provider-dependent. Common values: `created_at`, `name`, `size`.
  ///
  /// * [String] sortOrder:
  Future<FileListEnvelope?> listFiles({ String? accountId, String? provider, String? xWorkspaceID, String? folderId, String? workspaceId, String? organizationId, int? limit, int? offset, String? sortBy, String? sortOrder, }) async {
    final response = await listFilesWithHttpInfo( accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID, folderId: folderId, workspaceId: workspaceId, organizationId: organizationId, limit: limit, offset: offset, sortBy: sortBy, sortOrder: sortOrder, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FileListEnvelope',) as FileListEnvelope;
    
    }
    return null;
  }

  /// Aggregate list of files + folders for renderer file-browser views.
  ///
  /// Calls `listFiles` and `listFileFolders` in parallel and merges the results. Saves a round-trip when the UI shows both side-by-side. 
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
  /// * [String] folderId:
  ///   Filter to one folder. Omit for the account root.
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] organizationId:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  ///
  /// * [String] sortBy:
  ///
  /// * [String] sortOrder:
  Future<Response> listFilesAndFoldersWithHttpInfo({ String? accountId, String? provider, String? folderId, String? workspaceId, String? organizationId, int? limit, int? offset, String? sortBy, String? sortOrder, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/list';

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
    if (folderId != null) {
      queryParams.addAll(_queryParams('', 'folderId', folderId));
    }
    if (workspaceId != null) {
      queryParams.addAll(_queryParams('', 'workspaceId', workspaceId));
    }
    if (organizationId != null) {
      queryParams.addAll(_queryParams('', 'organizationId', organizationId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }
    if (sortBy != null) {
      queryParams.addAll(_queryParams('', 'sortBy', sortBy));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sortOrder', sortOrder));
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

  /// Aggregate list of files + folders for renderer file-browser views.
  ///
  /// Calls `listFiles` and `listFileFolders` in parallel and merges the results. Saves a round-trip when the UI shows both side-by-side. 
  ///
  /// Parameters:
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] folderId:
  ///   Filter to one folder. Omit for the account root.
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] organizationId:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  ///
  /// * [String] sortBy:
  ///
  /// * [String] sortOrder:
  Future<FilesAndFoldersResponse?> listFilesAndFolders({ String? accountId, String? provider, String? folderId, String? workspaceId, String? organizationId, int? limit, int? offset, String? sortBy, String? sortOrder, }) async {
    final response = await listFilesAndFoldersWithHttpInfo( accountId: accountId, provider: provider, folderId: folderId, workspaceId: workspaceId, organizationId: organizationId, limit: limit, offset: offset, sortBy: sortBy, sortOrder: sortOrder, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FilesAndFoldersResponse',) as FilesAndFoldersResponse;
    
    }
    return null;
  }

  /// Move a single file to a target folder.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [MoveFileRequest] moveFileRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> moveFileWithHttpInfo(String id, MoveFileRequest moveFileRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/{id}/move'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = moveFileRequest;

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

  /// Move a single file to a target folder.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [MoveFileRequest] moveFileRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<MoveFileResponse?> moveFile(String id, MoveFileRequest moveFileRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await moveFileWithHttpInfo(id, moveFileRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MoveFileResponse',) as MoveFileResponse;
    
    }
    return null;
  }

  /// Substring-match search across the caller's files.
  ///
  /// In-memory search — the platform lists up to ~500 files and filters locally on `name` (case-insensitive substring). Not suitable for global search across very large file libraries. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] folderId:
  ///   Filter to one folder. Omit for the account root.
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] organizationId:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<Response> searchFilesWithHttpInfo(String query, { String? accountId, String? provider, String? folderId, String? workspaceId, String? organizationId, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/search';

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
      queryParams.addAll(_queryParams('', 'query', query));
    if (folderId != null) {
      queryParams.addAll(_queryParams('', 'folderId', folderId));
    }
    if (workspaceId != null) {
      queryParams.addAll(_queryParams('', 'workspaceId', workspaceId));
    }
    if (organizationId != null) {
      queryParams.addAll(_queryParams('', 'organizationId', organizationId));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
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

  /// Substring-match search across the caller's files.
  ///
  /// In-memory search — the platform lists up to ~500 files and filters locally on `name` (case-insensitive substring). Not suitable for global search across very large file libraries. 
  ///
  /// Parameters:
  ///
  /// * [String] query (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] folderId:
  ///   Filter to one folder. Omit for the account root.
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] organizationId:
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<SearchFilesResponse?> searchFiles(String query, { String? accountId, String? provider, String? folderId, String? workspaceId, String? organizationId, int? limit, int? offset, }) async {
    final response = await searchFilesWithHttpInfo(query,  accountId: accountId, provider: provider, folderId: folderId, workspaceId: workspaceId, organizationId: organizationId, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SearchFilesResponse',) as SearchFilesResponse;
    
    }
    return null;
  }

  /// Update a file's metadata (name, folder, custom fields).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [UpdateFileRequest] updateFileRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> updateFileWithHttpInfo(String id, UpdateFileRequest updateFileRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateFileRequest;

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

  /// Update a file's metadata (name, folder, custom fields).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   File id.
  ///
  /// * [UpdateFileRequest] updateFileRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SpatioFile?> updateFile(String id, UpdateFileRequest updateFileRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await updateFileWithHttpInfo(id, updateFileRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpatioFile',) as SpatioFile;
    
    }
    return null;
  }

  /// Upload one block for an open chunked-upload session.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  ///
  /// * [String] blockHash (required):
  ///
  /// * [MultipartFile] block (required):
  ///
  /// * [int] blockIndex:
  Future<Response> uploadChunkedBlockWithHttpInfo(String sessionId, String blockHash, MultipartFile block, { int? blockIndex, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/upload/chunked/blocks';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (sessionId != null) {
      hasFields = true;
      mp.fields[r'sessionId'] = parameterToString(sessionId);
    }
    if (blockHash != null) {
      hasFields = true;
      mp.fields[r'blockHash'] = parameterToString(blockHash);
    }
    if (blockIndex != null) {
      hasFields = true;
      mp.fields[r'blockIndex'] = parameterToString(blockIndex);
    }
    if (block != null) {
      hasFields = true;
      mp.fields[r'block'] = block.field;
      mp.files.add(block);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Upload one block for an open chunked-upload session.
  ///
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  ///
  /// * [String] blockHash (required):
  ///
  /// * [MultipartFile] block (required):
  ///
  /// * [int] blockIndex:
  Future<UploadChunkedBlockResponse?> uploadChunkedBlock(String sessionId, String blockHash, MultipartFile block, { int? blockIndex, }) async {
    final response = await uploadChunkedBlockWithHttpInfo(sessionId, blockHash, block,  blockIndex: blockIndex, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UploadChunkedBlockResponse',) as UploadChunkedBlockResponse;
    
    }
    return null;
  }

  /// Upload a file via multipart form.
  ///
  /// Multipart upload. Form field `file` carries the binary; auxiliary form fields scope the upload (`folderId`, `workspaceId`, `organizationId`, `accountId`). Max body size is currently 100 MB. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   File bytes (multipart form field name `file`).
  ///
  /// * [String] folderId:
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] organizationId:
  ///
  /// * [String] accountId:
  Future<Response> uploadFileWithHttpInfo(MultipartFile file, { String? folderId, String? workspaceId, String? organizationId, String? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/upload';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (folderId != null) {
      hasFields = true;
      mp.fields[r'folderId'] = parameterToString(folderId);
    }
    if (workspaceId != null) {
      hasFields = true;
      mp.fields[r'workspaceId'] = parameterToString(workspaceId);
    }
    if (organizationId != null) {
      hasFields = true;
      mp.fields[r'organizationId'] = parameterToString(organizationId);
    }
    if (accountId != null) {
      hasFields = true;
      mp.fields[r'accountId'] = parameterToString(accountId);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Upload a file via multipart form.
  ///
  /// Multipart upload. Form field `file` carries the binary; auxiliary form fields scope the upload (`folderId`, `workspaceId`, `organizationId`, `accountId`). Max body size is currently 100 MB. 
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   File bytes (multipart form field name `file`).
  ///
  /// * [String] folderId:
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] organizationId:
  ///
  /// * [String] accountId:
  Future<SpatioFile?> uploadFile(MultipartFile file, { String? folderId, String? workspaceId, String? organizationId, String? accountId, }) async {
    final response = await uploadFileWithHttpInfo(file,  folderId: folderId, workspaceId: workspaceId, organizationId: organizationId, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpatioFile',) as SpatioFile;
    
    }
    return null;
  }

  /// Upload a file via JSON with base64-encoded content.
  ///
  /// Equivalent to `uploadFile` for clients that can't post multipart bodies (e.g. browser fetch with strict CSP). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UploadFileBase64Request] uploadFileBase64Request (required):
  Future<Response> uploadFileBase64WithHttpInfo(UploadFileBase64Request uploadFileBase64Request,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/files/upload/base64';

    // ignore: prefer_final_locals
    Object? postBody = uploadFileBase64Request;

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

  /// Upload a file via JSON with base64-encoded content.
  ///
  /// Equivalent to `uploadFile` for clients that can't post multipart bodies (e.g. browser fetch with strict CSP). 
  ///
  /// Parameters:
  ///
  /// * [UploadFileBase64Request] uploadFileBase64Request (required):
  Future<SpatioFile?> uploadFileBase64(UploadFileBase64Request uploadFileBase64Request,) async {
    final response = await uploadFileBase64WithHttpInfo(uploadFileBase64Request,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpatioFile',) as SpatioFile;
    
    }
    return null;
  }

  /// Workspace-scoped chunked-upload commit (RBAC-protected).
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
  Future<Response> workspaceCommitChunkedUploadWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/upload/chunked/commit'
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

  /// Workspace-scoped chunked-upload commit (RBAC-protected).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceCommitChunkedUpload(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceCommitChunkedUploadWithHttpInfo(org, workspace, requestBody,);
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

  /// Workspace-scoped create-folder (RBAC-protected).
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
  Future<Response> workspaceCreateFileFolderWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/folders'
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

  /// Workspace-scoped create-folder (RBAC-protected).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceCreateFileFolder(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceCreateFileFolderWithHttpInfo(org, workspace, requestBody,);
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

  /// Workspace-scoped delete-file.
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
  Future<Response> workspaceDeleteFileWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/{id}'
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

  /// Workspace-scoped delete-file.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<void> workspaceDeleteFile(String org, String workspace, String id,) async {
    final response = await workspaceDeleteFileWithHttpInfo(org, workspace, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Workspace-scoped get-file.
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
  Future<Response> workspaceGetFileWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/{id}'
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

  /// Workspace-scoped get-file.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Map<String, Object>?> workspaceGetFile(String org, String workspace, String id,) async {
    final response = await workspaceGetFileWithHttpInfo(org, workspace, id,);
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

  /// Workspace-scoped signed-download URL.
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
  Future<Response> workspaceGetFileDownloadWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/{id}/download'
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

  /// Workspace-scoped signed-download URL.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Map<String, Object>?> workspaceGetFileDownload(String org, String workspace, String id,) async {
    final response = await workspaceGetFileDownloadWithHttpInfo(org, workspace, id,);
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

  /// Workspace-scoped chunked-file manifest.
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
  Future<Response> workspaceGetFileManifestWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/{id}/manifest'
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

  /// Workspace-scoped chunked-file manifest.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Map<String, Object>?> workspaceGetFileManifest(String org, String workspace, String id,) async {
    final response = await workspaceGetFileManifestWithHttpInfo(org, workspace, id,);
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

  /// Workspace-scoped chunked-upload init (RBAC-protected).
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
  Future<Response> workspaceInitChunkedUploadWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/upload/chunked/init'
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

  /// Workspace-scoped chunked-upload init (RBAC-protected).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceInitChunkedUpload(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceInitChunkedUploadWithHttpInfo(org, workspace, requestBody,);
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

  /// Workspace-scoped list-folders (RBAC-protected).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListFileFoldersWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/folders'
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

  /// Workspace-scoped list-folders (RBAC-protected).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Map<String, Object>?> workspaceListFileFolders(String org, String workspace,) async {
    final response = await workspaceListFileFoldersWithHttpInfo(org, workspace,);
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

  /// Workspace-scoped list-files (RBAC-protected).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListFilesWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files'
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

  /// Workspace-scoped list-files (RBAC-protected).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Map<String, Object>?> workspaceListFiles(String org, String workspace,) async {
    final response = await workspaceListFilesWithHttpInfo(org, workspace,);
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

  /// Workspace-scoped move-file.
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
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceMoveFileWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/{id}/move'
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

  /// Workspace-scoped move-file.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceMoveFile(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspaceMoveFileWithHttpInfo(org, workspace, id, requestBody,);
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

  /// Workspace-scoped update-file.
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
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceUpdateFileWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/{id}'
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

  /// Workspace-scoped update-file.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceUpdateFile(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspaceUpdateFileWithHttpInfo(org, workspace, id, requestBody,);
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

  /// Workspace-scoped chunked-upload block (RBAC-protected).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [MultipartFile] body (required):
  Future<Response> workspaceUploadChunkedBlockWithHttpInfo(String org, String workspace, MultipartFile body,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/upload/chunked/blocks'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

    // ignore: prefer_final_locals
    Object? postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/octet-stream'];


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

  /// Workspace-scoped chunked-upload block (RBAC-protected).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [MultipartFile] body (required):
  Future<Map<String, Object>?> workspaceUploadChunkedBlock(String org, String workspace, MultipartFile body,) async {
    final response = await workspaceUploadChunkedBlockWithHttpInfo(org, workspace, body,);
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

  /// Workspace-scoped multipart upload (RBAC-protected).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [MultipartFile] file:
  Future<Response> workspaceUploadFileWithHttpInfo(String org, String workspace, { MultipartFile? file, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/upload'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Workspace-scoped multipart upload (RBAC-protected).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [MultipartFile] file:
  Future<Map<String, Object>?> workspaceUploadFile(String org, String workspace, { MultipartFile? file, }) async {
    final response = await workspaceUploadFileWithHttpInfo(org, workspace,  file: file, );
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

  /// Workspace-scoped base64 upload (RBAC-protected).
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
  Future<Response> workspaceUploadFileBase64WithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/files/upload/base64'
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

  /// Workspace-scoped base64 upload (RBAC-protected).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceUploadFileBase64(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceUploadFileBase64WithHttpInfo(org, workspace, requestBody,);
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
