# spatio_sdk.api.CalendarApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCalendarEvent**](CalendarApi.md#createcalendarevent) | **POST** /v1/calendar/events | Create a calendar event.
[**deleteCalendarEvent**](CalendarApi.md#deletecalendarevent) | **DELETE** /v1/calendar/events/{id} | Delete an event.
[**getCalendarCapabilities**](CalendarApi.md#getcalendarcapabilities) | **GET** /v1/calendar/capabilities | Per-account capability flags.
[**getCalendarEvent**](CalendarApi.md#getcalendarevent) | **GET** /v1/calendar/events/{id} | Fetch one event.
[**listCalendarEvents**](CalendarApi.md#listcalendarevents) | **GET** /v1/calendar/events | List calendar events across connected accounts.
[**listCalendarProviders**](CalendarApi.md#listcalendarproviders) | **GET** /v1/calendar/providers | List supported calendar providers.
[**syncCalendar**](CalendarApi.md#synccalendar) | **POST** /v1/calendar/sync | Trigger a sync across connected calendar accounts.
[**updateCalendarEvent**](CalendarApi.md#updatecalendarevent) | **PATCH** /v1/calendar/events/{id} | Update an event (sparse).
[**workspaceCreateCalendarEvent**](CalendarApi.md#workspacecreatecalendarevent) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calendar/events | Workspace-scoped create-event (RBAC-protected).
[**workspaceDeleteCalendarEvent**](CalendarApi.md#workspacedeletecalendarevent) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id} | 
[**workspaceGetCalendarEvent**](CalendarApi.md#workspacegetcalendarevent) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id} | 
[**workspaceListCalendarEvents**](CalendarApi.md#workspacelistcalendarevents) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calendar/events | Workspace-scoped list-events (RBAC-protected).
[**workspaceListCalendarProviders**](CalendarApi.md#workspacelistcalendarproviders) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calendar/providers | Workspace-scoped calendar providers.
[**workspaceUpdateCalendarEvent**](CalendarApi.md#workspaceupdatecalendarevent) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/calendar/events/{id} | 


# **createCalendarEvent**
> CreateCalendarEvent201Response createCalendarEvent(createEventRequest, xWorkspaceID)

Create a calendar event.

Single-account create. `account_id` is required (no auto-resolve for write operations). Reminder array is mirrored into native tasks under the hood; conference data is auto-attached when `conference_type` is supplied. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final createEventRequest = CreateEventRequest(); // CreateEventRequest | 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.createCalendarEvent(createEventRequest, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->createCalendarEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEventRequest** | [**CreateEventRequest**](CreateEventRequest.md)|  | 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**CreateCalendarEvent201Response**](CreateCalendarEvent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCalendarEvent**
> CalendarOperationResult deleteCalendarEvent(id, accountId, xWorkspaceID)

Delete an event.

Hard delete (no soft-delete / trash). Cascades to any reminder tasks the platform created from this event. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final id = id_example; // String | Event id.
final accountId = accountId_example; // String | Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.deleteCalendarEvent(id, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->deleteCalendarEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Event id. | 
 **accountId** | **String**| Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations.  | 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**CalendarOperationResult**](CalendarOperationResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarCapabilities**
> CalendarCapabilitiesResponse getCalendarCapabilities(accountId)

Per-account capability flags.

Returns the capabilities the provider declares for the given connected account. The renderer uses these to enable/disable form fields (recurrence picker, attendee inputs, etc.). 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final accountId = accountId_example; // String | Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 

try {
    final result = api_instance.getCalendarCapabilities(accountId);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->getCalendarCapabilities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations.  | 

### Return type

[**CalendarCapabilitiesResponse**](CalendarCapabilitiesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCalendarEvent**
> SpatioEvent getCalendarEvent(id, accountId, xWorkspaceID)

Fetch one event.

Requires `?account_id=` to identify the source account. Response is the bare `Event` (not wrapped in CalendarOperationResult — distinct from the list/create/update shapes). 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final id = id_example; // String | Event id.
final accountId = accountId_example; // String | Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.getCalendarEvent(id, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->getCalendarEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Event id. | 
 **accountId** | **String**| Connected-account id (snake_case in this platform — the rest of the SpatioAPI uses `accountId`). Required for single-event operations.  | 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SpatioEvent**](SpatioEvent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCalendarEvents**
> ListCalendarEvents200Response listCalendarEvents(accountIds, providers, xWorkspaceID, timeMin, timeMax, limit)

List calendar events across connected accounts.

Fan-out list. Returns events across every connected calendar provider unless filtered by `account_ids[]` or `providers[]`. Supports the cross-platform repeated-or-comma-separated filter syntax (`?account_ids=a&account_ids=b` or `?account_ids=a,b`).  Time bounds (`timeMin` / `timeMax`) accept both RFC3339 and RFC3339Nano. The handler also accepts the snake_case `time_min` / `time_max` for direct curl callers; the spec models the camelCase form because that's what the renderer and SDKs use. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final accountIds = []; // List<String> | Repeatable. Restrict to specific connected accounts.
final providers = []; // List<String> | Repeatable. Restrict to provider ids (`google-calendar`, etc.).
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final timeMin = 2013-10-20T19:20:30+01:00; // DateTime | Inclusive lower-bound time. RFC3339 or RFC3339Nano.
final timeMax = 2013-10-20T19:20:30+01:00; // DateTime | Inclusive upper-bound time.
final limit = 56; // int | Max events to return per page (default 50).

try {
    final result = api_instance.listCalendarEvents(accountIds, providers, xWorkspaceID, timeMin, timeMax, limit);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->listCalendarEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountIds** | [**List<String>**](String.md)| Repeatable. Restrict to specific connected accounts. | [optional] [default to const []]
 **providers** | [**List<String>**](String.md)| Repeatable. Restrict to provider ids (`google-calendar`, etc.). | [optional] [default to const []]
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **timeMin** | **DateTime**| Inclusive lower-bound time. RFC3339 or RFC3339Nano. | [optional] 
 **timeMax** | **DateTime**| Inclusive upper-bound time. | [optional] 
 **limit** | **int**| Max events to return per page (default 50). | [optional] [default to 50]

### Return type

[**ListCalendarEvents200Response**](ListCalendarEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCalendarProviders**
> CalendarProvidersInfo listCalendarProviders()

List supported calendar providers.

Static list of provider ids the Calendar platform can connect to. Returned regardless of which providers the caller has actually authorized. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();

try {
    final result = api_instance.listCalendarProviders();
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->listCalendarProviders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CalendarProvidersInfo**](CalendarProvidersInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncCalendar**
> CalendarSyncResponse syncCalendar(wait)

Trigger a sync across connected calendar accounts.

Enqueues sync jobs (one per connected calendar account) and returns immediately with the job ids. Pass `?wait=true` to block until all jobs complete (10-second polling budget); the response is then `200` with `waited: true` and a `timed_out` flag if any job didn't finish in time. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final wait = true; // bool | Block until all sync jobs finish (10s timeout).

try {
    final result = api_instance.syncCalendar(wait);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->syncCalendar: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wait** | **bool**| Block until all sync jobs finish (10s timeout). | [optional] [default to false]

### Return type

[**CalendarSyncResponse**](CalendarSyncResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCalendarEvent**
> CreateCalendarEvent201Response updateCalendarEvent(id, updateEventRequest, xWorkspaceID, accountId)

Update an event (sparse).

Partial update. `account_id` may be supplied in the body (preferred) or as `?account_id=` query param — the renderer's update path puts it in the URL while create puts it in the body. `updates` is a free-form map; the platform's capability gate rejects fields the provider doesn't support. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final id = id_example; // String | Event id.
final updateEventRequest = UpdateEventRequest(); // UpdateEventRequest | 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final accountId = accountId_example; // String | Optional account-id filter (snake_case).

try {
    final result = api_instance.updateCalendarEvent(id, updateEventRequest, xWorkspaceID, accountId);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->updateCalendarEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Event id. | 
 **updateEventRequest** | [**UpdateEventRequest**](UpdateEventRequest.md)|  | 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **accountId** | **String**| Optional account-id filter (snake_case). | [optional] 

### Return type

[**CreateCalendarEvent201Response**](CreateCalendarEvent201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateCalendarEvent**
> Map<String, Object> workspaceCreateCalendarEvent(org, workspace, requestBody)

Workspace-scoped create-event (RBAC-protected).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreateCalendarEvent(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->workspaceCreateCalendarEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceDeleteCalendarEvent**
> workspaceDeleteCalendarEvent(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    api_instance.workspaceDeleteCalendarEvent(org, workspace, id);
} catch (e) {
    print('Exception when calling CalendarApi->workspaceDeleteCalendarEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetCalendarEvent**
> Map<String, Object> workspaceGetCalendarEvent(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetCalendarEvent(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->workspaceGetCalendarEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListCalendarEvents**
> Map<String, Object> workspaceListCalendarEvents(org, workspace)

Workspace-scoped list-events (RBAC-protected).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListCalendarEvents(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->workspaceListCalendarEvents: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListCalendarProviders**
> Map<String, Object> workspaceListCalendarProviders(org, workspace)

Workspace-scoped calendar providers.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListCalendarProviders(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->workspaceListCalendarProviders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUpdateCalendarEvent**
> Map<String, Object> workspaceUpdateCalendarEvent(org, workspace, id, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CalendarApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceUpdateCalendarEvent(org, workspace, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling CalendarApi->workspaceUpdateCalendarEvent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

