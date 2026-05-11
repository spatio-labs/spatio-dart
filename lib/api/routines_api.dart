//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class RoutinesApi {
  RoutinesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Worker claims a queued run.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> claimRoutineRunWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/routines/runs/{id}/claim'
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

  /// Worker claims a queued run.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<RoutineRun?> claimRoutineRun(String id,) async {
    final response = await claimRoutineRunWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoutineRun',) as RoutineRun;
    
    }
    return null;
  }

  /// Worker marks a run complete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [RoutineRunCompleteRequest] routineRunCompleteRequest (required):
  Future<Response> completeRoutineRunWithHttpInfo(String id, RoutineRunCompleteRequest routineRunCompleteRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/routines/runs/{id}/complete'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = routineRunCompleteRequest;

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

  /// Worker marks a run complete.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [RoutineRunCompleteRequest] routineRunCompleteRequest (required):
  Future<RoutineRun?> completeRoutineRun(String id, RoutineRunCompleteRequest routineRunCompleteRequest,) async {
    final response = await completeRoutineRunWithHttpInfo(id, routineRunCompleteRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoutineRun',) as RoutineRun;
    
    }
    return null;
  }

  /// Create a routine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateRoutineRequest] createRoutineRequest (required):
  Future<Response> createRoutineWithHttpInfo(CreateRoutineRequest createRoutineRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/routines';

    // ignore: prefer_final_locals
    Object? postBody = createRoutineRequest;

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

  /// Create a routine.
  ///
  /// Parameters:
  ///
  /// * [CreateRoutineRequest] createRoutineRequest (required):
  Future<Routine?> createRoutine(CreateRoutineRequest createRoutineRequest,) async {
    final response = await createRoutineWithHttpInfo(createRoutineRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Routine',) as Routine;
    
    }
    return null;
  }

  /// Delete a routine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteRoutineWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/routines/{id}'
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

  /// Delete a routine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteRoutine(String id,) async {
    final response = await deleteRoutineWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch a routine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getRoutineWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/routines/{id}'
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

  /// Fetch a routine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Routine?> getRoutine(String id,) async {
    final response = await getRoutineWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Routine',) as Routine;
    
    }
    return null;
  }

  /// List runs for a routine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> listRoutineRunsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/routines/{id}/runs'
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

  /// List runs for a routine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<RoutineRunListResponse?> listRoutineRuns(String id,) async {
    final response = await listRoutineRunsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoutineRunListResponse',) as RoutineRunListResponse;
    
    }
    return null;
  }

  /// List routines for the caller's workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] status:
  Future<Response> listRoutinesWithHttpInfo({ String? workspaceId, String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/routines';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (workspaceId != null) {
      queryParams.addAll(_queryParams('', 'workspaceId', workspaceId));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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

  /// List routines for the caller's workspace.
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] status:
  Future<RoutineListResponse?> listRoutines({ String? workspaceId, String? status, }) async {
    final response = await listRoutinesWithHttpInfo( workspaceId: workspaceId, status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoutineListResponse',) as RoutineListResponse;
    
    }
    return null;
  }

  /// Trigger an ad-hoc run.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> runRoutineNowWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/routines/{id}/run-now'
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

  /// Trigger an ad-hoc run.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<RoutineRun?> runRoutineNow(String id,) async {
    final response = await runRoutineNowWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoutineRun',) as RoutineRun;
    
    }
    return null;
  }

  /// Update a routine.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateRoutineRequest] updateRoutineRequest (required):
  Future<Response> updateRoutineWithHttpInfo(String id, UpdateRoutineRequest updateRoutineRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/routines/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateRoutineRequest;

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

  /// Update a routine.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateRoutineRequest] updateRoutineRequest (required):
  Future<Routine?> updateRoutine(String id, UpdateRoutineRequest updateRoutineRequest,) async {
    final response = await updateRoutineWithHttpInfo(id, updateRoutineRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Routine',) as Routine;
    
    }
    return null;
  }

  /// Worker reports progress.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [RoutineRunProgressRequest] routineRunProgressRequest (required):
  Future<Response> updateRoutineRunProgressWithHttpInfo(String id, RoutineRunProgressRequest routineRunProgressRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/routines/runs/{id}/progress'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = routineRunProgressRequest;

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

  /// Worker reports progress.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [RoutineRunProgressRequest] routineRunProgressRequest (required):
  Future<RoutineRun?> updateRoutineRunProgress(String id, RoutineRunProgressRequest routineRunProgressRequest,) async {
    final response = await updateRoutineRunProgressWithHttpInfo(id, routineRunProgressRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RoutineRun',) as RoutineRun;
    
    }
    return null;
  }
}
