//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class RealtimeApi {
  RealtimeApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Exchange a bearer token for a short-lived Yjs collaboration JWT.
  ///
  /// The Yjs Cloudflare Worker that powers live document collaboration (`wss://realtime-collaboration.<account>.workers.dev`) only accepts platform-signed JWTs. Third-party clients holding an OAuth access token or PAT call this endpoint to mint a 5-minute collaboration JWT they can present to the worker.  The minted JWT inherits user + workspace identity from the presenting bearer token. Optionally scope it to a single room by supplying `room` in the request body. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IssueCollaborationTokenRequest] issueCollaborationTokenRequest:
  Future<Response> issueCollaborationTokenWithHttpInfo({ IssueCollaborationTokenRequest? issueCollaborationTokenRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/realtime/collaboration-token';

    // ignore: prefer_final_locals
    Object? postBody = issueCollaborationTokenRequest;

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

  /// Exchange a bearer token for a short-lived Yjs collaboration JWT.
  ///
  /// The Yjs Cloudflare Worker that powers live document collaboration (`wss://realtime-collaboration.<account>.workers.dev`) only accepts platform-signed JWTs. Third-party clients holding an OAuth access token or PAT call this endpoint to mint a 5-minute collaboration JWT they can present to the worker.  The minted JWT inherits user + workspace identity from the presenting bearer token. Optionally scope it to a single room by supplying `room` in the request body. 
  ///
  /// Parameters:
  ///
  /// * [IssueCollaborationTokenRequest] issueCollaborationTokenRequest:
  Future<IssueCollaborationToken200Response?> issueCollaborationToken({ IssueCollaborationTokenRequest? issueCollaborationTokenRequest, }) async {
    final response = await issueCollaborationTokenWithHttpInfo( issueCollaborationTokenRequest: issueCollaborationTokenRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IssueCollaborationToken200Response',) as IssueCollaborationToken200Response;
    
    }
    return null;
  }
}
