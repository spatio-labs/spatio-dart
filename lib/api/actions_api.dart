//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class ActionsApi {
  ActionsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Renderer-side execute alias. The canonical endpoint is `POST /v1/agent/actions/execute`; this path delegates to the same handler. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ExecuteActionRequest] executeActionRequest (required):
  Future<Response> executeActionWithHttpInfo(ExecuteActionRequest executeActionRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/actions/execute';

    // ignore: prefer_final_locals
    Object? postBody = executeActionRequest;

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

  /// Renderer-side execute alias. The canonical endpoint is `POST /v1/agent/actions/execute`; this path delegates to the same handler. 
  ///
  /// Parameters:
  ///
  /// * [ExecuteActionRequest] executeActionRequest (required):
  Future<ExecuteActionResponse?> executeAction(ExecuteActionRequest executeActionRequest,) async {
    final response = await executeActionWithHttpInfo(executeActionRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExecuteActionResponse',) as ExecuteActionResponse;
    
    }
    return null;
  }

  /// Fetch a single core action by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getCoreActionWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/actions/core/{id}'
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

  /// Fetch a single core action by id.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<CoreAction?> getCoreAction(String id,) async {
    final response = await getCoreActionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CoreAction',) as CoreAction;
    
    }
    return null;
  }

  /// List every action the agent platform exposes.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAvailableActionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/actions/available';

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

  /// List every action the agent platform exposes.
  Future<List<ActionDescriptor>?> listAvailableActions() async {
    final response = await listAvailableActionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ActionDescriptor>') as List)
        .cast<ActionDescriptor>()
        .toList(growable: false);

    }
    return null;
  }

  /// List renderer-curated \"core actions\" (command-palette + keybindings backing).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listCoreActionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/actions/core';

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

  /// List renderer-curated \"core actions\" (command-palette + keybindings backing).
  Future<CoreActionListResponse?> listCoreActions() async {
    final response = await listCoreActionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CoreActionListResponse',) as CoreActionListResponse;
    
    }
    return null;
  }

  /// Core actions filtered to one platform.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  Future<Response> listCoreActionsByPlatformWithHttpInfo(String platform,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/actions/core/platform/{platform}'
      .replaceAll('{platform}', platform);

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

  /// Core actions filtered to one platform.
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  Future<CoreActionListResponse?> listCoreActionsByPlatform(String platform,) async {
    final response = await listCoreActionsByPlatformWithHttpInfo(platform,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CoreActionListResponse',) as CoreActionListResponse;
    
    }
    return null;
  }

  /// List actions tagged for a specific platform (notes, mail, ...).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  Future<Response> listPlatformActionsWithHttpInfo(String platform,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/actions/platform/{platform}'
      .replaceAll('{platform}', platform);

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

  /// List actions tagged for a specific platform (notes, mail, ...).
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  Future<List<ActionDescriptor>?> listPlatformActions(String platform,) async {
    final response = await listPlatformActionsWithHttpInfo(platform,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ActionDescriptor>') as List)
        .cast<ActionDescriptor>()
        .toList(growable: false);

    }
    return null;
  }
}
