//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class CalendarApi {
  CalendarApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a calendar event.
  ///
  /// Single-account create. `account_id` is required (no auto-resolve for write operations). Reminder array is mirrored into native tasks under the hood; conference data is auto-attached when `conference_type` is supplied. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateEventRequest] createEventRequest (required):
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> createCalendarEventWithHttpInfo(CreateEventRequest createEventRequest, { String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/calendar/events';

    // ignore: prefer_final_locals
    Object? postBody = createEventRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Create a calendar event.
  ///
  /// Single-account create. `account_id` is required (no auto-resolve for write operations). Reminder array is mirrored into native tasks under the hood; conference data is auto-attached when `conference_type` is supplied. 
  ///
  /// Parameters:
  ///
  /// * [CreateEventRequest] createEventRequest (required):
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<CreateCalendarEvent201Response?> createCalendarEvent(CreateEventRequest createEventRequest, { String? xWorkspaceID, }) async {
    final response = await createCalendarEventWithHttpInfo(createEventRequest,  xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateCalendarEvent201Response',) as CreateCalendarEvent201Response;
    
    }
    return null;
  }

  /// Delete an event.
  ///
  /// Hard delete (no soft-delete / trash). Cascades to any reminder tasks the platform created from this event. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Event id.
  ///
  /// * [String] accountId (required):
  ///   Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> deleteCalendarEventWithHttpInfo(String id, String accountId, { String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/calendar/events/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'account_id', accountId));

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

  /// Delete an event.
  ///
  /// Hard delete (no soft-delete / trash). Cascades to any reminder tasks the platform created from this event. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Event id.
  ///
  /// * [String] accountId (required):
  ///   Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<CalendarOperationResult?> deleteCalendarEvent(String id, String accountId, { String? xWorkspaceID, }) async {
    final response = await deleteCalendarEventWithHttpInfo(id, accountId,  xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarOperationResult',) as CalendarOperationResult;
    
    }
    return null;
  }

  /// Per-account capability flags.
  ///
  /// Returns the capabilities the provider declares for the given connected account. The renderer uses these to enable/disable form fields (recurrence picker, attendee inputs, etc.). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///   Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 
  Future<Response> getCalendarCapabilitiesWithHttpInfo(String accountId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/calendar/capabilities';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'account_id', accountId));

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

  /// Per-account capability flags.
  ///
  /// Returns the capabilities the provider declares for the given connected account. The renderer uses these to enable/disable form fields (recurrence picker, attendee inputs, etc.). 
  ///
  /// Parameters:
  ///
  /// * [String] accountId (required):
  ///   Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 
  Future<CalendarCapabilitiesResponse?> getCalendarCapabilities(String accountId,) async {
    final response = await getCalendarCapabilitiesWithHttpInfo(accountId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarCapabilitiesResponse',) as CalendarCapabilitiesResponse;
    
    }
    return null;
  }

  /// Fetch one event.
  ///
  /// Requires `?account_id=` to identify the source account. Response is the bare `Event` (not wrapped in CalendarOperationResult — distinct from the list/create/update shapes). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Event id.
  ///
  /// * [String] accountId (required):
  ///   Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<Response> getCalendarEventWithHttpInfo(String id, String accountId, { String? xWorkspaceID, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/calendar/events/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'account_id', accountId));

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

  /// Fetch one event.
  ///
  /// Requires `?account_id=` to identify the source account. Response is the bare `Event` (not wrapped in CalendarOperationResult — distinct from the list/create/update shapes). 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Event id.
  ///
  /// * [String] accountId (required):
  ///   Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  Future<SpatioEvent?> getCalendarEvent(String id, String accountId, { String? xWorkspaceID, }) async {
    final response = await getCalendarEventWithHttpInfo(id, accountId,  xWorkspaceID: xWorkspaceID, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SpatioEvent',) as SpatioEvent;
    
    }
    return null;
  }

  /// List calendar events across connected accounts.
  ///
  /// Fan-out list. Returns events across every connected calendar provider unless filtered by `account_ids[]` or `providers[]`. Supports the cross-platform repeated-or-comma-separated filter syntax (`?account_ids=a&account_ids=b` or `?account_ids=a,b`).  Time bounds (`timeMin` / `timeMax`) accept both RFC3339 and RFC3339Nano. The handler also accepts the snake_case `time_min` / `time_max` for direct curl callers; the spec models the camelCase form because that's what the renderer and SDKs use. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] accountIds:
  ///   Repeatable. Restrict to specific connected accounts.
  ///
  /// * [List<String>] providers:
  ///   Repeatable. Restrict to provider ids (`google-calendar`, etc.).
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [DateTime] timeMin:
  ///   Inclusive lower-bound time. RFC3339 or RFC3339Nano.
  ///
  /// * [DateTime] timeMax:
  ///   Inclusive upper-bound time.
  ///
  /// * [int] limit:
  ///   Max events to return per page (default 50).
  Future<Response> listCalendarEventsWithHttpInfo({ List<String>? accountIds, List<String>? providers, String? xWorkspaceID, DateTime? timeMin, DateTime? timeMax, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/calendar/events';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountIds != null) {
      queryParams.addAll(_queryParams('multi', 'account_ids', accountIds));
    }
    if (providers != null) {
      queryParams.addAll(_queryParams('multi', 'providers', providers));
    }
    if (timeMin != null) {
      queryParams.addAll(_queryParams('', 'timeMin', timeMin));
    }
    if (timeMax != null) {
      queryParams.addAll(_queryParams('', 'timeMax', timeMax));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// List calendar events across connected accounts.
  ///
  /// Fan-out list. Returns events across every connected calendar provider unless filtered by `account_ids[]` or `providers[]`. Supports the cross-platform repeated-or-comma-separated filter syntax (`?account_ids=a&account_ids=b` or `?account_ids=a,b`).  Time bounds (`timeMin` / `timeMax`) accept both RFC3339 and RFC3339Nano. The handler also accepts the snake_case `time_min` / `time_max` for direct curl callers; the spec models the camelCase form because that's what the renderer and SDKs use. 
  ///
  /// Parameters:
  ///
  /// * [List<String>] accountIds:
  ///   Repeatable. Restrict to specific connected accounts.
  ///
  /// * [List<String>] providers:
  ///   Repeatable. Restrict to provider ids (`google-calendar`, etc.).
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [DateTime] timeMin:
  ///   Inclusive lower-bound time. RFC3339 or RFC3339Nano.
  ///
  /// * [DateTime] timeMax:
  ///   Inclusive upper-bound time.
  ///
  /// * [int] limit:
  ///   Max events to return per page (default 50).
  Future<ListCalendarEvents200Response?> listCalendarEvents({ List<String>? accountIds, List<String>? providers, String? xWorkspaceID, DateTime? timeMin, DateTime? timeMax, int? limit, }) async {
    final response = await listCalendarEventsWithHttpInfo( accountIds: accountIds, providers: providers, xWorkspaceID: xWorkspaceID, timeMin: timeMin, timeMax: timeMax, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListCalendarEvents200Response',) as ListCalendarEvents200Response;
    
    }
    return null;
  }

  /// List supported calendar providers.
  ///
  /// Static list of provider ids the Calendar platform can connect to. Returned regardless of which providers the caller has actually authorized. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listCalendarProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/calendar/providers';

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

  /// List supported calendar providers.
  ///
  /// Static list of provider ids the Calendar platform can connect to. Returned regardless of which providers the caller has actually authorized. 
  Future<CalendarProvidersInfo?> listCalendarProviders() async {
    final response = await listCalendarProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarProvidersInfo',) as CalendarProvidersInfo;
    
    }
    return null;
  }

  /// Trigger a sync across connected calendar accounts.
  ///
  /// Enqueues sync jobs (one per connected calendar account) and returns immediately with the job ids. Pass `?wait=true` to block until all jobs complete (10-second polling budget); the response is then `200` with `waited: true` and a `timed_out` flag if any job didn't finish in time. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] wait:
  ///   Block until all sync jobs finish (10s timeout).
  Future<Response> syncCalendarWithHttpInfo({ bool? wait, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/calendar/sync';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (wait != null) {
      queryParams.addAll(_queryParams('', 'wait', wait));
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

  /// Trigger a sync across connected calendar accounts.
  ///
  /// Enqueues sync jobs (one per connected calendar account) and returns immediately with the job ids. Pass `?wait=true` to block until all jobs complete (10-second polling budget); the response is then `200` with `waited: true` and a `timed_out` flag if any job didn't finish in time. 
  ///
  /// Parameters:
  ///
  /// * [bool] wait:
  ///   Block until all sync jobs finish (10s timeout).
  Future<CalendarSyncResponse?> syncCalendar({ bool? wait, }) async {
    final response = await syncCalendarWithHttpInfo( wait: wait, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CalendarSyncResponse',) as CalendarSyncResponse;
    
    }
    return null;
  }

  /// Update an event (sparse).
  ///
  /// Partial update. `account_id` may be supplied in the body (preferred) or as `?account_id=` query param — the renderer's update path puts it in the URL while create puts it in the body. `updates` is a free-form map; the platform's capability gate rejects fields the provider doesn't support. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Event id.
  ///
  /// * [UpdateEventRequest] updateEventRequest (required):
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [String] accountId:
  ///   Optional account-id filter (snake_case).
  Future<Response> updateCalendarEventWithHttpInfo(String id, UpdateEventRequest updateEventRequest, { String? xWorkspaceID, String? accountId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/calendar/events/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateEventRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accountId != null) {
      queryParams.addAll(_queryParams('', 'account_id', accountId));
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

  /// Update an event (sparse).
  ///
  /// Partial update. `account_id` may be supplied in the body (preferred) or as `?account_id=` query param — the renderer's update path puts it in the URL while create puts it in the body. `updates` is a free-form map; the platform's capability gate rejects fields the provider doesn't support. 
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Event id.
  ///
  /// * [UpdateEventRequest] updateEventRequest (required):
  ///
  /// * [String] xWorkspaceID:
  ///   Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
  ///
  /// * [String] accountId:
  ///   Optional account-id filter (snake_case).
  Future<CreateCalendarEvent201Response?> updateCalendarEvent(String id, UpdateEventRequest updateEventRequest, { String? xWorkspaceID, String? accountId, }) async {
    final response = await updateCalendarEventWithHttpInfo(id, updateEventRequest,  xWorkspaceID: xWorkspaceID, accountId: accountId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateCalendarEvent201Response',) as CreateCalendarEvent201Response;
    
    }
    return null;
  }

  /// Workspace-scoped create-event (RBAC-protected).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceCreateCalendarEventWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/calendar/events'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

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

  /// Workspace-scoped create-event (RBAC-protected).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceCreateCalendarEvent(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceCreateCalendarEventWithHttpInfo(org, workspace, requestBody,);
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

  /// Performs an HTTP 'DELETE /v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceDeleteCalendarEventWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id}'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<void> workspaceDeleteCalendarEvent(String org, String workspace, String id,) async {
    final response = await workspaceDeleteCalendarEventWithHttpInfo(org, workspace, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Response> workspaceGetCalendarEventWithHttpInfo(String org, String workspace, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id}'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  Future<Map<String, Object>?> workspaceGetCalendarEvent(String org, String workspace, String id,) async {
    final response = await workspaceGetCalendarEventWithHttpInfo(org, workspace, id,);
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

  /// Workspace-scoped list-events (RBAC-protected).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListCalendarEventsWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/calendar/events'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

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

  /// Workspace-scoped list-events (RBAC-protected).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Map<String, Object>?> workspaceListCalendarEvents(String org, String workspace,) async {
    final response = await workspaceListCalendarEventsWithHttpInfo(org, workspace,);
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

  /// Workspace-scoped calendar providers.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListCalendarProvidersWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/calendar/providers'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

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

  /// Workspace-scoped calendar providers.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Map<String, Object>?> workspaceListCalendarProviders(String org, String workspace,) async {
    final response = await workspaceListCalendarProvidersWithHttpInfo(org, workspace,);
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

  /// Performs an HTTP 'PATCH /v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceUpdateCalendarEventWithHttpInfo(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id}'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceUpdateCalendarEvent(String org, String workspace, String id, Map<String, Object> requestBody,) async {
    final response = await workspaceUpdateCalendarEventWithHttpInfo(org, workspace, id, requestBody,);
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
