//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:spatio_sdk/api.dart';
import 'package:test/test.dart';


/// tests for CalendarApi
void main() {
  // final instance = CalendarApi();

  group('tests for CalendarApi', () {
    // Create a calendar event.
    //
    // Single-account create. `account_id` is required (no auto-resolve for write operations). Reminder array is mirrored into native tasks under the hood; conference data is auto-attached when `conference_type` is supplied. 
    //
    //Future<CreateCalendarEvent201Response> createCalendarEvent(CreateEventRequest createEventRequest, { String xWorkspaceID }) async
    test('test createCalendarEvent', () async {
      // TODO
    });

    // Delete an event.
    //
    // Hard delete (no soft-delete / trash). Cascades to any reminder tasks the platform created from this event. 
    //
    //Future<CalendarOperationResult> deleteCalendarEvent(String id, String accountId, { String xWorkspaceID }) async
    test('test deleteCalendarEvent', () async {
      // TODO
    });

    // Per-account capability flags.
    //
    // Returns the capabilities the provider declares for the given connected account. The renderer uses these to enable/disable form fields (recurrence picker, attendee inputs, etc.). 
    //
    //Future<CalendarCapabilitiesResponse> getCalendarCapabilities(String accountId) async
    test('test getCalendarCapabilities', () async {
      // TODO
    });

    // Fetch one event.
    //
    // Requires `?account_id=` to identify the source account. Response is the bare `Event` (not wrapped in CalendarOperationResult — distinct from the list/create/update shapes). 
    //
    //Future<SpatioEvent> getCalendarEvent(String id, String accountId, { String xWorkspaceID }) async
    test('test getCalendarEvent', () async {
      // TODO
    });

    // List calendar events across connected accounts.
    //
    // Fan-out list. Returns events across every connected calendar provider unless filtered by `account_ids[]` or `providers[]`. Supports the cross-platform repeated-or-comma-separated filter syntax (`?account_ids=a&account_ids=b` or `?account_ids=a,b`).  Time bounds (`timeMin` / `timeMax`) accept both RFC3339 and RFC3339Nano. The handler also accepts the snake_case `time_min` / `time_max` for direct curl callers; the spec models the camelCase form because that's what the renderer and SDKs use. 
    //
    //Future<ListCalendarEvents200Response> listCalendarEvents({ List<String> accountIds, List<String> providers, String xWorkspaceID, DateTime timeMin, DateTime timeMax, int limit }) async
    test('test listCalendarEvents', () async {
      // TODO
    });

    // List supported calendar providers.
    //
    // Static list of provider ids the Calendar platform can connect to. Returned regardless of which providers the caller has actually authorized. 
    //
    //Future<CalendarProvidersInfo> listCalendarProviders() async
    test('test listCalendarProviders', () async {
      // TODO
    });

    // Trigger a sync across connected calendar accounts.
    //
    // Enqueues sync jobs (one per connected calendar account) and returns immediately with the job ids. Pass `?wait=true` to block until all jobs complete (10-second polling budget); the response is then `200` with `waited: true` and a `timed_out` flag if any job didn't finish in time. 
    //
    //Future<CalendarSyncResponse> syncCalendar({ bool wait }) async
    test('test syncCalendar', () async {
      // TODO
    });

    // Update an event (sparse).
    //
    // Partial update. `account_id` may be supplied in the body (preferred) or as `?account_id=` query param — the renderer's update path puts it in the URL while create puts it in the body. `updates` is a free-form map; the platform's capability gate rejects fields the provider doesn't support. 
    //
    //Future<CreateCalendarEvent201Response> updateCalendarEvent(String id, UpdateEventRequest updateEventRequest, { String xWorkspaceID, String accountId }) async
    test('test updateCalendarEvent', () async {
      // TODO
    });

    // Workspace-scoped create-event (RBAC-protected).
    //
    //Future<Map<String, Object>> workspaceCreateCalendarEvent(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCreateCalendarEvent', () async {
      // TODO
    });

    //Future workspaceDeleteCalendarEvent(String org, String workspace, String id) async
    test('test workspaceDeleteCalendarEvent', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetCalendarEvent(String org, String workspace, String id) async
    test('test workspaceGetCalendarEvent', () async {
      // TODO
    });

    // Workspace-scoped list-events (RBAC-protected).
    //
    //Future<Map<String, Object>> workspaceListCalendarEvents(String org, String workspace) async
    test('test workspaceListCalendarEvents', () async {
      // TODO
    });

    // Workspace-scoped calendar providers.
    //
    //Future<Map<String, Object>> workspaceListCalendarProviders(String org, String workspace) async
    test('test workspaceListCalendarProviders', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceUpdateCalendarEvent(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceUpdateCalendarEvent', () async {
      // TODO
    });

  });
}
