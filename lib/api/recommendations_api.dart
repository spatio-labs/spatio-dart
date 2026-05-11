//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class RecommendationsApi {
  RecommendationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a recommendation (hard delete; status-update is preferred).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteRecommendationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/recommendations/{id}'
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

  /// Delete a recommendation (hard delete; status-update is preferred).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteRecommendation(String id,) async {
    final response = await deleteRecommendationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch one recommendation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getRecommendationWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/recommendations/{id}'
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

  /// Fetch one recommendation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Recommendation?> getRecommendation(String id,) async {
    final response = await getRecommendationWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Recommendation',) as Recommendation;
    
    }
    return null;
  }

  /// List recommendations for a workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] status:
  ///
  /// * [int] limit:
  Future<Response> listRecommendationsWithHttpInfo({ String? workspaceId, String? status, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/recommendations';

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
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// List recommendations for a workspace.
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId:
  ///
  /// * [String] status:
  ///
  /// * [int] limit:
  Future<RecommendationListResponse?> listRecommendations({ String? workspaceId, String? status, int? limit, }) async {
    final response = await listRecommendationsWithHttpInfo( workspaceId: workspaceId, status: status, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecommendationListResponse',) as RecommendationListResponse;
    
    }
    return null;
  }

  /// Agent-side propose endpoint (the `spatio_recommendations propose` MCP tool calls this).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ProposeRecommendationRequest] proposeRecommendationRequest (required):
  Future<Response> proposeRecommendationWithHttpInfo(ProposeRecommendationRequest proposeRecommendationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/recommendations';

    // ignore: prefer_final_locals
    Object? postBody = proposeRecommendationRequest;

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

  /// Agent-side propose endpoint (the `spatio_recommendations propose` MCP tool calls this).
  ///
  /// Parameters:
  ///
  /// * [ProposeRecommendationRequest] proposeRecommendationRequest (required):
  Future<Recommendation?> proposeRecommendation(ProposeRecommendationRequest proposeRecommendationRequest,) async {
    final response = await proposeRecommendationWithHttpInfo(proposeRecommendationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Recommendation',) as Recommendation;
    
    }
    return null;
  }

  /// Accept or dismiss a recommendation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateRecommendationStatusRequest] updateRecommendationStatusRequest (required):
  Future<Response> updateRecommendationStatusWithHttpInfo(String id, UpdateRecommendationStatusRequest updateRecommendationStatusRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/recommendations/{id}/status'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateRecommendationStatusRequest;

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

  /// Accept or dismiss a recommendation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateRecommendationStatusRequest] updateRecommendationStatusRequest (required):
  Future<Recommendation?> updateRecommendationStatus(String id, UpdateRecommendationStatusRequest updateRecommendationStatusRequest,) async {
    final response = await updateRecommendationStatusWithHttpInfo(id, updateRecommendationStatusRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Recommendation',) as Recommendation;
    
    }
    return null;
  }
}
