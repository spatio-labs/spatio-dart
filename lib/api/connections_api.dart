//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class ConnectionsApi {
  ConnectionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Disconnect a connected account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DisconnectConnectionRequest] disconnectConnectionRequest (required):
  Future<Response> disconnectConnectionWithHttpInfo(DisconnectConnectionRequest disconnectConnectionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connections/disconnect';

    // ignore: prefer_final_locals
    Object? postBody = disconnectConnectionRequest;

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

  /// Disconnect a connected account.
  ///
  /// Parameters:
  ///
  /// * [DisconnectConnectionRequest] disconnectConnectionRequest (required):
  Future<Map<String, Object>?> disconnectConnection(DisconnectConnectionRequest disconnectConnectionRequest,) async {
    final response = await disconnectConnectionWithHttpInfo(disconnectConnectionRequest,);
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

  /// Begin an OAuth install for a connection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InstallConnectionRequest] installConnectionRequest (required):
  Future<Response> installConnectionWithHttpInfo(InstallConnectionRequest installConnectionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connections/install';

    // ignore: prefer_final_locals
    Object? postBody = installConnectionRequest;

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

  /// Begin an OAuth install for a connection.
  ///
  /// Parameters:
  ///
  /// * [InstallConnectionRequest] installConnectionRequest (required):
  Future<Map<String, Object>?> installConnection(InstallConnectionRequest installConnectionRequest,) async {
    final response = await installConnectionWithHttpInfo(installConnectionRequest,);
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

  /// List the caller's multi-provider accounts.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAccountsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/accounts';

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

  /// List the caller's multi-provider accounts.
  Future<AccountListResponse?> listAccounts() async {
    final response = await listAccountsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountListResponse',) as AccountListResponse;
    
    }
    return null;
  }

  /// List supported integrations + their connection state. Legacy path; `/v1/connections/list` is the preferred alias. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listConnectionIntegrationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connections/integrations';

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

  /// List supported integrations + their connection state. Legacy path; `/v1/connections/list` is the preferred alias. 
  Future<ConnectionListResponse?> listConnectionIntegrations() async {
    final response = await listConnectionIntegrationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectionListResponse',) as ConnectionListResponse;
    
    }
    return null;
  }

  /// List supported integrations + their connection state.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listConnectionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connections/list';

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

  /// List supported integrations + their connection state.
  Future<ConnectionListResponse?> listConnections() async {
    final response = await listConnectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectionListResponse',) as ConnectionListResponse;
    
    }
    return null;
  }

  /// List the caller's connected accounts.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listUserConnectionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connections/user';

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

  /// List the caller's connected accounts.
  Future<ConnectionAccountListResponse?> listUserConnections() async {
    final response = await listUserConnectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectionAccountListResponse',) as ConnectionAccountListResponse;
    
    }
    return null;
  }

  /// Force a refresh of a connection's OAuth tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefreshConnectionRequest] refreshConnectionRequest (required):
  Future<Response> refreshConnectionWithHttpInfo(RefreshConnectionRequest refreshConnectionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/connections/refresh';

    // ignore: prefer_final_locals
    Object? postBody = refreshConnectionRequest;

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

  /// Force a refresh of a connection's OAuth tokens.
  ///
  /// Parameters:
  ///
  /// * [RefreshConnectionRequest] refreshConnectionRequest (required):
  Future<Map<String, Object>?> refreshConnection(RefreshConnectionRequest refreshConnectionRequest,) async {
    final response = await refreshConnectionWithHttpInfo(refreshConnectionRequest,);
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

  /// Remove an account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  Future<Response> removeAccountWithHttpInfo(String accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/accounts/{accountId}'
      .replaceAll('{accountId}', accountId);

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

  /// Remove an account.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  Future<void> removeAccount(String accountId,) async {
    final response = await removeAccountWithHttpInfo(accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Resolve an account by provider/identifier.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] provider:
  ///
  /// * [String] email:
  Future<Response> resolveAccountWithHttpInfo({ String? provider, String? email, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/accounts/resolve';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }
    if (email != null) {
      queryParams.addAll(_queryParams('', 'email', email));
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

  /// Resolve an account by provider/identifier.
  ///
  /// Parameters:
  ///
  /// * [String] provider:
  ///
  /// * [String] email:
  Future<Map<String, Object>?> resolveAccount({ String? provider, String? email, }) async {
    final response = await resolveAccountWithHttpInfo( provider: provider, email: email, );
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

  /// Force a sync against the upstream provider.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  Future<Response> syncAccountWithHttpInfo(String accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/accounts/{accountId}/sync'
      .replaceAll('{accountId}', accountId);

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

  /// Force a sync against the upstream provider.
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  Future<Map<String, Object>?> syncAccount(String accountId,) async {
    final response = await syncAccountWithHttpInfo(accountId,);
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

  /// Update account metadata (label, etc.).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [UpdateAccountRequest] updateAccountRequest (required):
  Future<Response> updateAccountWithHttpInfo(String accountId, UpdateAccountRequest updateAccountRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/accounts/{accountId}'
      .replaceAll('{accountId}', accountId);

    // ignore: prefer_final_locals
    Object? postBody = updateAccountRequest;

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

  /// Update account metadata (label, etc.).
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///
  /// * [UpdateAccountRequest] updateAccountRequest (required):
  Future<Map<String, Object>?> updateAccount(String accountId, UpdateAccountRequest updateAccountRequest,) async {
    final response = await updateAccountWithHttpInfo(accountId, updateAccountRequest,);
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
