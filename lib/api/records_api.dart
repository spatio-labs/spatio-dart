//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class RecordsApi {
  RecordsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateRecordRequest] createRecordRequest (required):
  Future<Response> createRecordWithHttpInfo(CreateRecordRequest createRecordRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/records';

    // ignore: prefer_final_locals
    Object? postBody = createRecordRequest;

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

  /// Create a record.
  ///
  /// Parameters:
  ///
  /// * [CreateRecordRequest] createRecordRequest (required):
  Future<Record?> createRecord(CreateRecordRequest createRecordRequest,) async {
    final response = await createRecordWithHttpInfo(createRecordRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Record',) as Record;
    
    }
    return null;
  }

  /// Create a record type (org-scoped).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateRecordTypeRequest] createRecordTypeRequest (required):
  Future<Response> createRecordTypeWithHttpInfo(CreateRecordTypeRequest createRecordTypeRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/records/types';

    // ignore: prefer_final_locals
    Object? postBody = createRecordTypeRequest;

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

  /// Create a record type (org-scoped).
  ///
  /// Parameters:
  ///
  /// * [CreateRecordTypeRequest] createRecordTypeRequest (required):
  Future<RecordType?> createRecordType(CreateRecordTypeRequest createRecordTypeRequest,) async {
    final response = await createRecordTypeWithHttpInfo(createRecordTypeRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecordType',) as RecordType;
    
    }
    return null;
  }

  /// Delete a record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteRecordWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/records/{id}'
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

  /// Delete a record.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteRecord(String id,) async {
    final response = await deleteRecordWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch a record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getRecordWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/records/{id}'
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

  /// Fetch a record.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Record?> getRecord(String id,) async {
    final response = await getRecordWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Record',) as Record;
    
    }
    return null;
  }

  /// List record types for an organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<Response> listRecordTypesWithHttpInfo(String organizationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/records/types';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'organization_id', organizationId));

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

  /// List record types for an organization.
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<RecordTypeListResponse?> listRecordTypes(String organizationId,) async {
    final response = await listRecordTypesWithHttpInfo(organizationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecordTypeListResponse',) as RecordTypeListResponse;
    
    }
    return null;
  }

  /// List records for an organization. `organization_id` query param is required (handler returns 400 otherwise). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] recordTypeId:
  ///
  /// * [int] limit:
  Future<Response> listRecordsWithHttpInfo(String organizationId, { String? recordTypeId, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/records';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'organization_id', organizationId));
    if (recordTypeId != null) {
      queryParams.addAll(_queryParams('', 'record_type_id', recordTypeId));
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

  /// List records for an organization. `organization_id` query param is required (handler returns 400 otherwise). 
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  ///
  /// * [String] recordTypeId:
  ///
  /// * [int] limit:
  Future<RecordListResponse?> listRecords(String organizationId, { String? recordTypeId, int? limit, }) async {
    final response = await listRecordsWithHttpInfo(organizationId,  recordTypeId: recordTypeId, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecordListResponse',) as RecordListResponse;
    
    }
    return null;
  }

  /// Update a record.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateRecordRequest] updateRecordRequest (required):
  Future<Response> updateRecordWithHttpInfo(String id, UpdateRecordRequest updateRecordRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/records/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateRecordRequest;

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

  /// Update a record.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateRecordRequest] updateRecordRequest (required):
  Future<Record?> updateRecord(String id, UpdateRecordRequest updateRecordRequest,) async {
    final response = await updateRecordWithHttpInfo(id, updateRecordRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Record',) as Record;
    
    }
    return null;
  }

  /// Update a record type.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateRecordTypeRequest] updateRecordTypeRequest (required):
  Future<Response> updateRecordTypeWithHttpInfo(String id, UpdateRecordTypeRequest updateRecordTypeRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/records/types/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateRecordTypeRequest;

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

  /// Update a record type.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateRecordTypeRequest] updateRecordTypeRequest (required):
  Future<RecordType?> updateRecordType(String id, UpdateRecordTypeRequest updateRecordTypeRequest,) async {
    final response = await updateRecordTypeWithHttpInfo(id, updateRecordTypeRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RecordType',) as RecordType;
    
    }
    return null;
  }
}
