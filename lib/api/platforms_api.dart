//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class PlatformsApi {
  PlatformsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add a connected account for a platform/provider pair.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  ///
  /// * [String] provider (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> addPlatformProviderAccountWithHttpInfo(String platformId, String provider, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/providers/{provider}/accounts'
      .replaceAll('{platformId}', platformId)
      .replaceAll('{provider}', provider);

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

  /// Add a connected account for a platform/provider pair.
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  ///
  /// * [String] provider (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> addPlatformProviderAccount(String platformId, String provider, Map<String, Object> requestBody,) async {
    final response = await addPlatformProviderAccountWithHttpInfo(platformId, provider, requestBody,);
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

  /// Create or update a secret value.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> createOrUpdatePlatformSecretWithHttpInfo(String platformId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/secrets'
      .replaceAll('{platformId}', platformId);

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

  /// Create or update a secret value.
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> createOrUpdatePlatformSecret(String platformId, Map<String, Object> requestBody,) async {
    final response = await createOrUpdatePlatformSecretWithHttpInfo(platformId, requestBody,);
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

  /// Delete a secret.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  ///
  /// * [String] name (required):
  Future<Response> deletePlatformSecretWithHttpInfo(String platformId, String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/secrets/{name}'
      .replaceAll('{platformId}', platformId)
      .replaceAll('{name}', name);

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

  /// Delete a secret.
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  ///
  /// * [String] name (required):
  Future<void> deletePlatformSecret(String platformId, String name,) async {
    final response = await deletePlatformSecretWithHttpInfo(platformId, name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Run an INSERT/UPDATE/DELETE statement against a platform's store.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> execPlatformDataWithHttpInfo(String platformId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/exec'
      .replaceAll('{platformId}', platformId);

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

  /// Run an INSERT/UPDATE/DELETE statement against a platform's store.
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> execPlatformData(String platformId, Map<String, Object> requestBody,) async {
    final response = await execPlatformDataWithHttpInfo(platformId, requestBody,);
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

  /// Export all secrets for a platform (values included). Caller must be the platform owner. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Response> exportPlatformSecretsWithHttpInfo(String platformId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/secrets/export'
      .replaceAll('{platformId}', platformId);

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

  /// Export all secrets for a platform (values included). Caller must be the platform owner. 
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Map<String, Object>?> exportPlatformSecrets(String platformId,) async {
    final response = await exportPlatformSecretsWithHttpInfo(platformId,);
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

  /// Generate a short-lived backend JWT a platform's worker can use to call back into platform-service. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Response> generatePlatformBackendTokenWithHttpInfo(String platformId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/backend-token'
      .replaceAll('{platformId}', platformId);

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

  /// Generate a short-lived backend JWT a platform's worker can use to call back into platform-service. 
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Map<String, Object>?> generatePlatformBackendToken(String platformId,) async {
    final response = await generatePlatformBackendTokenWithHttpInfo(platformId,);
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

  /// List the global platform catalog — every platform that exists, not just the ones the caller has installed. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getPlatformCatalogWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/catalog/platforms';

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

  /// List the global platform catalog — every platform that exists, not just the ones the caller has installed. 
  Future<Map<String, Object>?> getPlatformCatalog() async {
    final response = await getPlatformCatalogWithHttpInfo();
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

  /// Fetch a platform's manifest (capabilities, schema, UI metadata).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Response> getPlatformManifestWithHttpInfo(String platformId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/manifest'
      .replaceAll('{platformId}', platformId);

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

  /// Fetch a platform's manifest (capabilities, schema, UI metadata).
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Map<String, Object>?> getPlatformManifest(String platformId,) async {
    final response = await getPlatformManifestWithHttpInfo(platformId,);
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

  /// List accounts the caller has connected for a platform.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Response> listPlatformAccountsWithHttpInfo(String platformId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/accounts'
      .replaceAll('{platformId}', platformId);

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

  /// List accounts the caller has connected for a platform.
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Map<String, Object>?> listPlatformAccounts(String platformId,) async {
    final response = await listPlatformAccountsWithHttpInfo(platformId,);
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

  /// Discover supported providers + capabilities for a platform.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Response> listPlatformProvidersWithHttpInfo(String platformId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/providers'
      .replaceAll('{platformId}', platformId);

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

  /// Discover supported providers + capabilities for a platform.
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Map<String, Object>?> listPlatformProviders(String platformId,) async {
    final response = await listPlatformProvidersWithHttpInfo(platformId,);
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

  /// List secret keys (values redacted).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Response> listPlatformSecretsWithHttpInfo(String platformId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/secrets'
      .replaceAll('{platformId}', platformId);

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

  /// List secret keys (values redacted).
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Map<String, Object>?> listPlatformSecrets(String platformId,) async {
    final response = await listPlatformSecretsWithHttpInfo(platformId,);
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

  /// List tables in a platform's data store.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Response> listPlatformTablesWithHttpInfo(String platformId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/tables'
      .replaceAll('{platformId}', platformId);

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

  /// List tables in a platform's data store.
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Map<String, Object>?> listPlatformTables(String platformId,) async {
    final response = await listPlatformTablesWithHttpInfo(platformId,);
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

  /// List installed platforms for the sidebar.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listPlatformsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms';

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

  /// List installed platforms for the sidebar.
  Future<Map<String, Object>?> listPlatforms() async {
    final response = await listPlatformsWithHttpInfo();
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

  /// Run a SELECT query against a platform's data store.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> queryPlatformDataWithHttpInfo(String platformId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/query'
      .replaceAll('{platformId}', platformId);

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

  /// Run a SELECT query against a platform's data store.
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> queryPlatformData(String platformId, Map<String, Object> requestBody,) async {
    final response = await queryPlatformDataWithHttpInfo(platformId, requestBody,);
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

  /// Run pending migrations for a platform.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Response> runPlatformMigrationsWithHttpInfo(String platformId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/platforms/{platformId}/migrate'
      .replaceAll('{platformId}', platformId);

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

  /// Run pending migrations for a platform.
  ///
  /// Parameters:
  ///
  /// * [String] platformId (required):
  Future<Map<String, Object>?> runPlatformMigrations(String platformId,) async {
    final response = await runPlatformMigrationsWithHttpInfo(platformId,);
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
