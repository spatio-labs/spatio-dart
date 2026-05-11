//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class AccountApi {
  AccountApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Change or set the account password.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ChangePasswordRequest] changePasswordRequest (required):
  Future<Response> changePasswordWithHttpInfo(ChangePasswordRequest changePasswordRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/security/password';

    // ignore: prefer_final_locals
    Object? postBody = changePasswordRequest;

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

  /// Change or set the account password.
  ///
  /// Parameters:
  ///
  /// * [ChangePasswordRequest] changePasswordRequest (required):
  Future<void> changePassword(ChangePasswordRequest changePasswordRequest,) async {
    final response = await changePasswordWithHttpInfo(changePasswordRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Atomic check + increment on the agent-task counter (one slot per turn).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> consumeAgentTaskWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/usage/consume-agent-task';

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

  /// Atomic check + increment on the agent-task counter (one slot per turn).
  Future<ConsumeAgentTaskResponse?> consumeAgentTask() async {
    final response = await consumeAgentTaskWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConsumeAgentTaskResponse',) as ConsumeAgentTaskResponse;
    
    }
    return null;
  }

  /// The caller's subscription tier and status.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAccountPlanWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/plan';

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

  /// The caller's subscription tier and status.
  Future<AccountPlan?> getAccountPlan() async {
    final response = await getAccountPlanWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountPlan',) as AccountPlan;
    
    }
    return null;
  }

  /// Capability + quota envelope for the caller's tier.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAccountTierWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/tier';

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

  /// Capability + quota envelope for the caller's tier.
  Future<AccountTierDetails?> getAccountTier() async {
    final response = await getAccountTierWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountTierDetails',) as AccountTierDetails;
    
    }
    return null;
  }

  /// Today's usage counters across notes, sheets, slides, files, tasks, mail, API.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAccountUsageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/usage';

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

  /// Today's usage counters across notes, sheets, slides, files, tasks, mail, API.
  Future<AccountUsage?> getAccountUsage() async {
    final response = await getAccountUsageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccountUsage',) as AccountUsage;
    
    }
    return null;
  }

  /// Free-trial agent-task counter snapshot. Read-only; does NOT consume a slot. Use POST `/v1/account/usage/consume-agent-task` atomically per turn to gate a tool-using turn. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAgentTaskUsageWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/usage/agent-tasks';

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

  /// Free-trial agent-task counter snapshot. Read-only; does NOT consume a slot. Use POST `/v1/account/usage/consume-agent-task` atomically per turn to gate a tool-using turn. 
  Future<AgentTaskUsage?> getAgentTaskUsage() async {
    final response = await getAgentTaskUsageWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentTaskUsage',) as AgentTaskUsage;
    
    }
    return null;
  }

  /// List the linked sign-in methods (password + OAuth providers).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSignInMethodsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/security/sign-in-methods';

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

  /// List the linked sign-in methods (password + OAuth providers).
  Future<SignInMethods?> getSignInMethods() async {
    final response = await getSignInMethodsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SignInMethods',) as SignInMethods;
    
    }
    return null;
  }

  /// List the OAuth clients the calling user has granted access to.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listConnectedAppsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/connected-apps';

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

  /// List the OAuth clients the calling user has granted access to.
  Future<ConnectedAppsListResponse?> listConnectedApps() async {
    final response = await listConnectedAppsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectedAppsListResponse',) as ConnectedAppsListResponse;
    
    }
    return null;
  }

  /// List active sessions for the caller.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listSessionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/security/sessions';

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

  /// List active sessions for the caller.
  Future<SessionListResponse?> listSessions() async {
    final response = await listSessionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SessionListResponse',) as SessionListResponse;
    
    }
    return null;
  }

  /// Revoke a connected app and all of its active tokens.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  Future<Response> revokeConnectedAppWithHttpInfo(String clientId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/connected-apps/{client_id}'
      .replaceAll('{client_id}', clientId);

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

  /// Revoke a connected app and all of its active tokens.
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  Future<void> revokeConnectedApp(String clientId,) async {
    final response = await revokeConnectedAppWithHttpInfo(clientId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revoke every session except the caller's current one.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> revokeOtherSessionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/security/sessions/revoke-others';

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

  /// Revoke every session except the caller's current one.
  Future<RevokeOtherSessionsResponse?> revokeOtherSessions() async {
    final response = await revokeOtherSessionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RevokeOtherSessionsResponse',) as RevokeOtherSessionsResponse;
    
    }
    return null;
  }

  /// Revoke a specific session.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> revokeSessionWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/account/security/sessions/{id}'
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

  /// Revoke a specific session.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> revokeSession(String id,) async {
    final response = await revokeSessionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
