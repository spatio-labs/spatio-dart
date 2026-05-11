//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class FoldersApi {
  FoldersApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an email folder.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateEmailFolderRequest] createEmailFolderRequest (required):
  Future<Response> createEmailFolderWithHttpInfo(CreateEmailFolderRequest createEmailFolderRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/folders';

    // ignore: prefer_final_locals
    Object? postBody = createEmailFolderRequest;

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

  /// Create an email folder.
  ///
  /// Parameters:
  ///
  /// * [CreateEmailFolderRequest] createEmailFolderRequest (required):
  Future<EmailFolder?> createEmailFolder(CreateEmailFolderRequest createEmailFolderRequest,) async {
    final response = await createEmailFolderWithHttpInfo(createEmailFolderRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailFolder',) as EmailFolder;
    
    }
    return null;
  }

  /// Delete an email folder.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteEmailFolderWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/folders/{id}'
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

  /// Delete an email folder.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteEmailFolder(String id,) async {
    final response = await deleteEmailFolderWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List the caller's email folders.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listEmailFoldersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/folders';

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

  /// List the caller's email folders.
  Future<EmailFolderListResponse?> listEmailFolders() async {
    final response = await listEmailFoldersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailFolderListResponse',) as EmailFolderListResponse;
    
    }
    return null;
  }

  /// List emails inside a folder.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> listFolderEmailsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/folders/{id}/emails'
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

  /// List emails inside a folder.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Map<String, Object>?> listFolderEmails(String id,) async {
    final response = await listFolderEmailsWithHttpInfo(id,);
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

  /// Move emails into a folder.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MoveEmailsRequest] moveEmailsRequest (required):
  Future<Response> moveEmailsToFolderWithHttpInfo(String id, MoveEmailsRequest moveEmailsRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/folders/{id}/emails'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = moveEmailsRequest;

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

  /// Move emails into a folder.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [MoveEmailsRequest] moveEmailsRequest (required):
  Future<Map<String, Object>?> moveEmailsToFolder(String id, MoveEmailsRequest moveEmailsRequest,) async {
    final response = await moveEmailsToFolderWithHttpInfo(id, moveEmailsRequest,);
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

  /// Update an email folder.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateEmailFolderRequest] updateEmailFolderRequest (required):
  Future<Response> updateEmailFolderWithHttpInfo(String id, UpdateEmailFolderRequest updateEmailFolderRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/folders/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateEmailFolderRequest;

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

  /// Update an email folder.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateEmailFolderRequest] updateEmailFolderRequest (required):
  Future<EmailFolder?> updateEmailFolder(String id, UpdateEmailFolderRequest updateEmailFolderRequest,) async {
    final response = await updateEmailFolderWithHttpInfo(id, updateEmailFolderRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailFolder',) as EmailFolder;
    
    }
    return null;
  }
}
