//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class PersonalAccessTokensApi {
  PersonalAccessTokensApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a new PAT. The full token is returned only once on creation; the API never reveals the secret again. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePATRequest] createPATRequest (required):
  Future<Response> createPersonalAccessTokenWithHttpInfo(CreatePATRequest createPATRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens';

    // ignore: prefer_final_locals
    Object? postBody = createPATRequest;

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

  /// Create a new PAT. The full token is returned only once on creation; the API never reveals the secret again. 
  ///
  /// Parameters:
  ///
  /// * [CreatePATRequest] createPATRequest (required):
  Future<CreatePATResponse?> createPersonalAccessToken(CreatePATRequest createPATRequest,) async {
    final response = await createPersonalAccessTokenWithHttpInfo(createPATRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreatePATResponse',) as CreatePATResponse;
    
    }
    return null;
  }

  /// List the scope strings PATs can be issued with.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAvailablePATScopesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens/scopes';

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

  /// List the scope strings PATs can be issued with.
  Future<PATScopesResponse?> listAvailablePATScopes() async {
    final response = await listAvailablePATScopesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PATScopesResponse',) as PATScopesResponse;
    
    }
    return null;
  }

  /// List the caller's personal access tokens (with available scopes).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listPersonalAccessTokensWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens';

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

  /// List the caller's personal access tokens (with available scopes).
  Future<PATListResponse?> listPersonalAccessTokens() async {
    final response = await listPersonalAccessTokensWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PATListResponse',) as PATListResponse;
    
    }
    return null;
  }

  /// Revoke a PAT.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> revokePersonalAccessTokenWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens/{id}'
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

  /// Revoke a PAT.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> revokePersonalAccessToken(String id,) async {
    final response = await revokePersonalAccessTokenWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Rename or re-describe a PAT (scopes are immutable).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdatePATRequest] updatePATRequest (required):
  Future<Response> updatePersonalAccessTokenWithHttpInfo(String id, UpdatePATRequest updatePATRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updatePATRequest;

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

  /// Rename or re-describe a PAT (scopes are immutable).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdatePATRequest] updatePATRequest (required):
  Future<PersonalAccessToken?> updatePersonalAccessToken(String id, UpdatePATRequest updatePATRequest,) async {
    final response = await updatePersonalAccessTokenWithHttpInfo(id, updatePATRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PersonalAccessToken',) as PersonalAccessToken;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/tokens' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceCreatePATWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/tokens'
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
  Future<Map<String, Object>?> workspaceCreatePAT(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceCreatePATWithHttpInfo(org, workspace, requestBody,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/tokens' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListPATsWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/tokens'
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
  Future<Map<String, Object>?> workspaceListPATs(String org, String workspace,) async {
    final response = await workspaceListPATsWithHttpInfo(org, workspace,);
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

  /// Performs an HTTP 'DELETE /v1/organizations/{org}/workspaces/{workspace}/tokens/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceRevokePATWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/tokens/{id}'
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
  Future<void> workspaceRevokePAT(String org, String workspace, String id,) async {
    final response = await workspaceRevokePATWithHttpInfo(org, workspace, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /v1/organizations/{org}/workspaces/{workspace}/tokens/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceUpdatePATWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/tokens/{id}'
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
  Future<Map<String, Object>?> workspaceUpdatePAT(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspaceUpdatePATWithHttpInfo(org, workspace, id, requestBody,);
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
