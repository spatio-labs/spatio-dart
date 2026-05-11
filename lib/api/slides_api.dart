//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class SlidesApi {
  SlidesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a presentation.
  ///
  /// Creates a new deck under the target account. Target resolution mirrors `POST /v1/notes` and `/v1/sheets`: body `accountId` → `?accountId=` → body `provider` → `?provider=` → caller's single connected account (errors with `ambiguous_account` otherwise). The new deck is auto-seeded with one blank slide so the renderer has something to display immediately. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePresentationRequest] createPresentationRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> createPresentationWithHttpInfo(CreatePresentationRequest createPresentationRequest, { String? accountId, String? provider, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides';

    // ignore: prefer_final_locals
    Object? postBody = createPresentationRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Create a presentation.
  ///
  /// Creates a new deck under the target account. Target resolution mirrors `POST /v1/notes` and `/v1/sheets`: body `accountId` → `?accountId=` → body `provider` → `?provider=` → caller's single connected account (errors with `ambiguous_account` otherwise). The new deck is auto-seeded with one blank slide so the renderer has something to display immediately. 
  ///
  /// Parameters:
  ///
  /// * [CreatePresentationRequest] createPresentationRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Presentation?> createPresentation(CreatePresentationRequest createPresentationRequest, { String? accountId, String? provider, String? xWorkspaceID, }) async {
    final response = await createPresentationWithHttpInfo(createPresentationRequest,  accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Presentation',) as Presentation;
    
    }
    return null;
  }

  /// Insert a slide.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [CreateSlideRequest] createSlideRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> createSlideWithHttpInfo(String id, CreateSlideRequest createSlideRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/slides'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createSlideRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Insert a slide.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [CreateSlideRequest] createSlideRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Slide?> createSlide(String id, CreateSlideRequest createSlideRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await createSlideWithHttpInfo(id, createSlideRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Slide',) as Slide;
    
    }
    return null;
  }

  /// Add a canvas element (text/shape/image) to a slide.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [CreateSlideElementRequest] createSlideElementRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> createSlideElementWithHttpInfo(String id, String slideId, CreateSlideElementRequest createSlideElementRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/slides/{slideId}/elements'
      .replaceAll('{id}', id)
      .replaceAll('{slideId}', slideId);

    // ignore: prefer_final_locals
    Object? postBody = createSlideElementRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Add a canvas element (text/shape/image) to a slide.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [CreateSlideElementRequest] createSlideElementRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SlideElement?> createSlideElement(String id, String slideId, CreateSlideElementRequest createSlideElementRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await createSlideElementWithHttpInfo(id, slideId, createSlideElementRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SlideElement',) as SlideElement;
    
    }
    return null;
  }

  /// Delete a presentation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> deletePresentationWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Delete a presentation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SuccessFlag?> deletePresentation(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await deletePresentationWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessFlag',) as SuccessFlag;
    
    }
    return null;
  }

  /// Delete a slide.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> deleteSlideWithHttpInfo(String id, String slideId, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/slides/{slideId}'
      .replaceAll('{id}', id)
      .replaceAll('{slideId}', slideId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Delete a slide.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SuccessFlag?> deleteSlide(String id, String slideId, { String? accountId, String? xWorkspaceID, }) async {
    final response = await deleteSlideWithHttpInfo(id, slideId,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessFlag',) as SuccessFlag;
    
    }
    return null;
  }

  /// Delete a slide element.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] elementId (required):
  ///   Slide-element id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> deleteSlideElementWithHttpInfo(String id, String slideId, String elementId, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/slides/{slideId}/elements/{elementId}'
      .replaceAll('{id}', id)
      .replaceAll('{slideId}', slideId)
      .replaceAll('{elementId}', elementId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Delete a slide element.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] elementId (required):
  ///   Slide-element id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SuccessFlag?> deleteSlideElement(String id, String slideId, String elementId, { String? accountId, String? xWorkspaceID, }) async {
    final response = await deleteSlideElementWithHttpInfo(id, slideId, elementId,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SuccessFlag',) as SuccessFlag;
    
    }
    return null;
  }

  /// Disable public sharing.
  ///
  /// Owner-only. Subsequent public viewer requests 404.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> disablePresentationShareWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/share'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Disable public sharing.
  ///
  /// Owner-only. Subsequent public viewer requests 404.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<void> disablePresentationShare(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await disablePresentationShareWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Enable (or update password on) public sharing.
  ///
  /// Owner-only. With `setPassword: false` (or empty body), flips the deck public without changing the password. With `setPassword: true`, applies `password` (empty clears). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [EnableShareRequest] enableShareRequest:
  Future<Response> enablePresentationShareWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, EnableShareRequest? enableShareRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/share'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = enableShareRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Enable (or update password on) public sharing.
  ///
  /// Owner-only. With `setPassword: false` (or empty body), flips the deck public without changing the password. With `setPassword: true`, applies `password` (empty clears). 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [EnableShareRequest] enableShareRequest:
  Future<ShareSettings?> enablePresentationShare(String id, { String? accountId, String? xWorkspaceID, EnableShareRequest? enableShareRequest, }) async {
    final response = await enablePresentationShareWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, enableShareRequest: enableShareRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShareSettings',) as ShareSettings;
    
    }
    return null;
  }

  /// Render the presentation as a PDF.
  ///
  /// Proxies to the Spatio export sidecar (Playwright). Two response modes selected via `?storage=`:    - `stream` (default) — response body is the PDF binary     (`application/pdf`).   - `r2` — uploads the rendered PDF to R2 storage and returns     a JSON envelope with a 24-hour signed URL.  Returns `503 Service Unavailable` when the export sidecar is not configured (dev fallback to the client-side exporter). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [String] storage:
  ///
  /// * [String] filename:
  ///   Sanitized base name for the downloaded PDF.
  ///
  /// * [ExportPDFRequest] exportPDFRequest:
  Future<Response> exportPresentationPdfWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, String? storage, String? filename, ExportPDFRequest? exportPDFRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/export/pdf'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = exportPDFRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (storage != null) {
      queryParams.addAll(_queryParams('', 'storage', storage));
    }
    if (filename != null) {
      queryParams.addAll(_queryParams('', 'filename', filename));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Render the presentation as a PDF.
  ///
  /// Proxies to the Spatio export sidecar (Playwright). Two response modes selected via `?storage=`:    - `stream` (default) — response body is the PDF binary     (`application/pdf`).   - `r2` — uploads the rendered PDF to R2 storage and returns     a JSON envelope with a 24-hour signed URL.  Returns `503 Service Unavailable` when the export sidecar is not configured (dev fallback to the client-side exporter). 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [String] storage:
  ///
  /// * [String] filename:
  ///   Sanitized base name for the downloaded PDF.
  ///
  /// * [ExportPDFRequest] exportPDFRequest:
  Future<MultipartFile?> exportPresentationPdf(String id, { String? accountId, String? xWorkspaceID, String? storage, String? filename, ExportPDFRequest? exportPDFRequest, }) async {
    final response = await exportPresentationPdfWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, storage: storage, filename: filename, exportPDFRequest: exportPDFRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Render the presentation as a PowerPoint (.pptx) file.
  ///
  /// Proxies to the Spatio export sidecar (Playwright + pptxgenjs). Each slide is screenshotted at 2× device-pixel ratio and wrapped into a PowerPoint .pptx as a full-bleed image. Visual fidelity is preserved exactly — what renders in Spatio renders identically in PowerPoint, Keynote, Google Slides — at the cost of in-PowerPoint editability of slide content. Users edit slide content back in Spatio (the source of truth), not inside PowerPoint.  Two response modes selected via `?storage=`:    - `stream` (default) — response body is the PPTX binary     (`application/vnd.openxmlformats-officedocument.presentationml.presentation`).   - `r2` — uploads the rendered PPTX to R2 storage and returns     a JSON envelope with a 24-hour signed URL.  Returns `503 Service Unavailable` when the export sidecar is not configured. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [String] storage:
  ///
  /// * [String] filename:
  ///   Sanitized base name for the downloaded PPTX.
  ///
  /// * [ExportPDFRequest] exportPDFRequest:
  Future<Response> exportPresentationPptxWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, String? storage, String? filename, ExportPDFRequest? exportPDFRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/export/pptx'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = exportPDFRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (storage != null) {
      queryParams.addAll(_queryParams('', 'storage', storage));
    }
    if (filename != null) {
      queryParams.addAll(_queryParams('', 'filename', filename));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Render the presentation as a PowerPoint (.pptx) file.
  ///
  /// Proxies to the Spatio export sidecar (Playwright + pptxgenjs). Each slide is screenshotted at 2× device-pixel ratio and wrapped into a PowerPoint .pptx as a full-bleed image. Visual fidelity is preserved exactly — what renders in Spatio renders identically in PowerPoint, Keynote, Google Slides — at the cost of in-PowerPoint editability of slide content. Users edit slide content back in Spatio (the source of truth), not inside PowerPoint.  Two response modes selected via `?storage=`:    - `stream` (default) — response body is the PPTX binary     (`application/vnd.openxmlformats-officedocument.presentationml.presentation`).   - `r2` — uploads the rendered PPTX to R2 storage and returns     a JSON envelope with a 24-hour signed URL.  Returns `503 Service Unavailable` when the export sidecar is not configured. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [String] storage:
  ///
  /// * [String] filename:
  ///   Sanitized base name for the downloaded PPTX.
  ///
  /// * [ExportPDFRequest] exportPDFRequest:
  Future<MultipartFile?> exportPresentationPptx(String id, { String? accountId, String? xWorkspaceID, String? storage, String? filename, ExportPDFRequest? exportPDFRequest, }) async {
    final response = await exportPresentationPptxWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, storage: storage, filename: filename, exportPDFRequest: exportPDFRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Fetch one presentation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getPresentationWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// Fetch one presentation.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Presentation?> getPresentation(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getPresentationWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Presentation',) as Presentation;
    
    }
    return null;
  }

  /// Fetch share settings for a presentation.
  ///
  /// Owner-only. Mirror of `GET /v1/notes/{id}/share` — same shape, same fields. Returns the current public-share configuration, including the share token and computed public viewer URL when the deck is currently public. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getPresentationShareSettingsWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/share'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// Fetch share settings for a presentation.
  ///
  /// Owner-only. Mirror of `GET /v1/notes/{id}/share` — same shape, same fields. Returns the current public-share configuration, including the share token and computed public viewer URL when the deck is currently public. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<ShareSettings?> getPresentationShareSettings(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getPresentationShareSettingsWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShareSettings',) as ShareSettings;
    
    }
    return null;
  }

  /// Fetch a publicly shared presentation.
  ///
  /// Unauthenticated. Mirror of `GET /public/notes/{token}`. The share token is the credential. For password-protected decks the password is supplied via `?password=`; the response distinguishes \"no password supplied\" from \"wrong password\" so the viewer can render the right prompt. Unknown tokens and disabled-share decks both return `404` to prevent enumeration. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Opaque public-share token.
  ///
  /// * [String] password:
  ///   Optional viewer password.
  Future<Response> getPublicPresentationWithHttpInfo(String token, { String? password, }) async {
    // ignore: prefer_const_declarations
    final path = r'/public/slides/{token}'
      .replaceAll('{token}', token);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (password != null) {
      queryParams.addAll(_queryParams('', 'password', password));
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

  /// Fetch a publicly shared presentation.
  ///
  /// Unauthenticated. Mirror of `GET /public/notes/{token}`. The share token is the credential. For password-protected decks the password is supplied via `?password=`; the response distinguishes \"no password supplied\" from \"wrong password\" so the viewer can render the right prompt. Unknown tokens and disabled-share decks both return `404` to prevent enumeration. 
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  ///   Opaque public-share token.
  ///
  /// * [String] password:
  ///   Optional viewer password.
  Future<Map<String, Object>?> getPublicPresentation(String token, { String? password, }) async {
    final response = await getPublicPresentationWithHttpInfo(token,  password: password, );
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

  /// Fetch one slide.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getSlideWithHttpInfo(String id, String slideId, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/slides/{slideId}'
      .replaceAll('{id}', id)
      .replaceAll('{slideId}', slideId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// Fetch one slide.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Slide?> getSlide(String id, String slideId, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getSlideWithHttpInfo(id, slideId,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Slide',) as Slide;
    
    }
    return null;
  }

  /// Fetch one slide element.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] elementId (required):
  ///   Slide-element id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getSlideElementWithHttpInfo(String id, String slideId, String elementId, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/slides/{slideId}/elements/{elementId}'
      .replaceAll('{id}', id)
      .replaceAll('{slideId}', slideId)
      .replaceAll('{elementId}', elementId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// Fetch one slide element.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] elementId (required):
  ///   Slide-element id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SlideElement?> getSlideElement(String id, String slideId, String elementId, { String? accountId, String? xWorkspaceID, }) async {
    final response = await getSlideElementWithHttpInfo(id, slideId, elementId,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SlideElement',) as SlideElement;
    
    }
    return null;
  }

  /// List presentations across connected accounts.
  ///
  /// Fan-out list. Returns every presentation visible to the caller across every connected slides provider. Pass `?accountId=` or `?provider=` to scope to a single source. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<Response> listPresentationsWithHttpInfo({ String? accountId, String? provider, String? xWorkspaceID, int? limit, int? offset, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (offset != null) {
      queryParams.addAll(_queryParams('', 'offset', offset));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// List presentations across connected accounts.
  ///
  /// Fan-out list. Returns every presentation visible to the caller across every connected slides provider. Pass `?accountId=` or `?provider=` to scope to a single source. 
  ///
  /// Parameters:
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] provider:
  ///   Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [int] limit:
  ///
  /// * [int] offset:
  Future<PresentationListEnvelope?> listPresentations({ String? accountId, String? provider, String? xWorkspaceID, int? limit, int? offset, }) async {
    final response = await listPresentationsWithHttpInfo( accountId: accountId, provider: provider, xWorkspaceID: xWorkspaceID, limit: limit, offset: offset, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PresentationListEnvelope',) as PresentationListEnvelope;
    
    }
    return null;
  }

  /// List the canvas elements on a slide.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> listSlideElementsWithHttpInfo(String id, String slideId, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/slides/{slideId}/elements'
      .replaceAll('{id}', id)
      .replaceAll('{slideId}', slideId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// List the canvas elements on a slide.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SlideElementList?> listSlideElements(String id, String slideId, { String? accountId, String? xWorkspaceID, }) async {
    final response = await listSlideElementsWithHttpInfo(id, slideId,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SlideElementList',) as SlideElementList;
    
    }
    return null;
  }

  /// List slides in a presentation.
  ///
  /// Single-account list. Returns slides in the order set by their `position` field. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> listSlidesInPresentationWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/slides'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
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

  /// List slides in a presentation.
  ///
  /// Single-account list. Returns slides in the order set by their `position` field. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SlideList?> listSlidesInPresentation(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await listSlidesInPresentationWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SlideList',) as SlideList;
    
    }
    return null;
  }

  /// Rotate the share token, invalidating outstanding URLs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> rotatePresentationShareTokenWithHttpInfo(String id, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/share/rotate'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Rotate the share token, invalidating outstanding URLs.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<ShareSettings?> rotatePresentationShareToken(String id, { String? accountId, String? xWorkspaceID, }) async {
    final response = await rotatePresentationShareTokenWithHttpInfo(id,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ShareSettings',) as ShareSettings;
    
    }
    return null;
  }

  /// Update presentation metadata (partial).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [UpdatePresentationRequest] updatePresentationRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> updatePresentationWithHttpInfo(String id, UpdatePresentationRequest updatePresentationRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updatePresentationRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Update presentation metadata (partial).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [UpdatePresentationRequest] updatePresentationRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Presentation?> updatePresentation(String id, UpdatePresentationRequest updatePresentationRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await updatePresentationWithHttpInfo(id, updatePresentationRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Presentation',) as Presentation;
    
    }
    return null;
  }

  /// Update a slide (partial).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [UpdateSlideRequest] updateSlideRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> updateSlideWithHttpInfo(String id, String slideId, UpdateSlideRequest updateSlideRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/slides/{slideId}'
      .replaceAll('{id}', id)
      .replaceAll('{slideId}', slideId);

    // ignore: prefer_final_locals
    Object? postBody = updateSlideRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Update a slide (partial).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [UpdateSlideRequest] updateSlideRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Slide?> updateSlide(String id, String slideId, UpdateSlideRequest updateSlideRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await updateSlideWithHttpInfo(id, slideId, updateSlideRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Slide',) as Slide;
    
    }
    return null;
  }

  /// Update a slide element (partial).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] elementId (required):
  ///   Slide-element id.
  ///
  /// * [UpdateSlideElementRequest] updateSlideElementRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> updateSlideElementWithHttpInfo(String id, String slideId, String elementId, UpdateSlideElementRequest updateSlideElementRequest, { String? accountId, String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/slides/{id}/slides/{slideId}/elements/{elementId}'
      .replaceAll('{id}', id)
      .replaceAll('{slideId}', slideId)
      .replaceAll('{elementId}', elementId);

    // ignore: prefer_final_locals
    Object? postBody = updateSlideElementRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'accountId', accountId));
    }

    if (xWorkspaceID != null) {
      headerParams[r'X-Workspace-ID'] = parameterToString(xWorkspaceID);
    }

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

  /// Update a slide element (partial).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Presentation id.
  ///
  /// * [String] slideId (required):
  ///   Slide id within the presentation.
  ///
  /// * [String] elementId (required):
  ///   Slide-element id.
  ///
  /// * [UpdateSlideElementRequest] updateSlideElementRequest (required):
  ///
  /// * [String] accountId:
  ///   Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SlideElement?> updateSlideElement(String id, String slideId, String elementId, UpdateSlideElementRequest updateSlideElementRequest, { String? accountId, String? xWorkspaceID, }) async {
    final response = await updateSlideElementWithHttpInfo(id, slideId, elementId, updateSlideElementRequest,  accountId: accountId, xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SlideElement',) as SlideElement;
    
    }
    return null;
  }
}
