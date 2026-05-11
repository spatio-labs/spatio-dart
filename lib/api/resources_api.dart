//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class ResourcesApi {
  ResourcesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// List access grants on a resource (per-resource ACL).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///
  /// * [String] resourceId (required):
  Future<Response> listResourcePermissionGrantsWithHttpInfo(String platform, String resourceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/resources/{platform}/{resourceId}/permissions'
      .replaceAll('{platform}', platform)
      .replaceAll('{resourceId}', resourceId);

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

  /// List access grants on a resource (per-resource ACL).
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///
  /// * [String] resourceId (required):
  Future<Map<String, Object>?> listResourcePermissionGrants(String platform, String resourceId,) async {
    final response = await listResourcePermissionGrantsWithHttpInfo(platform, resourceId,);
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

  /// Revoke an access grant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///
  /// * [String] resourceId (required):
  ///
  /// * [String] grantId (required):
  Future<Response> revokeResourcePermissionGrantWithHttpInfo(String platform, String resourceId, String grantId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/resources/{platform}/{resourceId}/permissions/{grantId}'
      .replaceAll('{platform}', platform)
      .replaceAll('{resourceId}', resourceId)
      .replaceAll('{grantId}', grantId);

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

  /// Revoke an access grant.
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///
  /// * [String] resourceId (required):
  ///
  /// * [String] grantId (required):
  Future<void> revokeResourcePermissionGrant(String platform, String resourceId, String grantId,) async {
    final response = await revokeResourcePermissionGrantWithHttpInfo(platform, resourceId, grantId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create or update an access grant.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///
  /// * [String] resourceId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> setResourcePermissionGrantWithHttpInfo(String platform, String resourceId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/resources/{platform}/{resourceId}/permissions'
      .replaceAll('{platform}', platform)
      .replaceAll('{resourceId}', resourceId);

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

  /// Create or update an access grant.
  ///
  /// Parameters:
  ///
  /// * [String] platform (required):
  ///
  /// * [String] resourceId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> setResourcePermissionGrant(String platform, String resourceId, Map<String, Object> requestBody,) async {
    final response = await setResourcePermissionGrantWithHttpInfo(platform, resourceId, requestBody,);
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
