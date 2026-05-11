# spatio_sdk.api.CallsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCall**](CallsApi.md#createcall) | **POST** /v1/calls | Start a new call.
[**createMeetingRoom**](CallsApi.md#createmeetingroom) | **POST** /v1/calls/rooms | Create a persistent meeting room.
[**deleteCallRecording**](CallsApi.md#deletecallrecording) | **DELETE** /v1/calls/recordings/{recordingId} | Delete a recording.
[**endCall**](CallsApi.md#endcall) | **POST** /v1/calls/{id}/end | End a call (host only).
[**getBandwidthHistory**](CallsApi.md#getbandwidthhistory) | **GET** /v1/calls/bandwidth/history | Time-series bandwidth metrics.
[**getBandwidthSummary**](CallsApi.md#getbandwidthsummary) | **GET** /v1/calls/bandwidth/summary | Aggregate bandwidth metrics.
[**getCall**](CallsApi.md#getcall) | **GET** /v1/calls/{id} | Fetch a call.
[**getMeetingRoom**](CallsApi.md#getmeetingroom) | **GET** /v1/calls/rooms/{id} | Fetch a meeting room.
[**joinCall**](CallsApi.md#joincall) | **POST** /v1/calls/{id}/join | Join a call.
[**leaveCall**](CallsApi.md#leavecall) | **POST** /v1/calls/{id}/leave | Leave a call.
[**listActiveCalls**](CallsApi.md#listactivecalls) | **GET** /v1/calls | List active calls.
[**listCallRecordings**](CallsApi.md#listcallrecordings) | **GET** /v1/calls/{id}/recordings | List recordings for a call.
[**startCallRecording**](CallsApi.md#startcallrecording) | **POST** /v1/calls/{id}/recordings/start | Start a recording (host only).
[**stopCallRecording**](CallsApi.md#stopcallrecording) | **POST** /v1/calls/{id}/recordings/{recordingId}/stop | Stop an in-progress recording.
[**updateCallParticipantState**](CallsApi.md#updatecallparticipantstate) | **PATCH** /v1/calls/{id}/participant | Toggle participant audio/video/screen-share state.
[**workspaceCreateCall**](CallsApi.md#workspacecreatecall) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls | 
[**workspaceCreateMeetingRoom**](CallsApi.md#workspacecreatemeetingroom) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/rooms | 
[**workspaceDeleteCallRecording**](CallsApi.md#workspacedeletecallrecording) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/calls/recordings/{recordingId} | 
[**workspaceEndCall**](CallsApi.md#workspaceendcall) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/end | 
[**workspaceGetBandwidthHistory**](CallsApi.md#workspacegetbandwidthhistory) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls/bandwidth/history | 
[**workspaceGetBandwidthSummary**](CallsApi.md#workspacegetbandwidthsummary) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls/bandwidth/summary | 
[**workspaceGetCall**](CallsApi.md#workspacegetcall) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls/{id} | 
[**workspaceGetMeetingRoom**](CallsApi.md#workspacegetmeetingroom) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls/rooms/{id} | 
[**workspaceJoinCall**](CallsApi.md#workspacejoincall) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/join | 
[**workspaceLeaveCall**](CallsApi.md#workspaceleavecall) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/leave | 
[**workspaceListActiveCalls**](CallsApi.md#workspacelistactivecalls) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls | 
[**workspaceListCallRecordings**](CallsApi.md#workspacelistcallrecordings) | **GET** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/recordings | 
[**workspaceStartCallRecording**](CallsApi.md#workspacestartcallrecording) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/recordings/start | 
[**workspaceStopCallRecording**](CallsApi.md#workspacestopcallrecording) | **POST** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/recordings/{recordingId}/stop | 
[**workspaceUpdateCallParticipant**](CallsApi.md#workspaceupdatecallparticipant) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/calls/{id}/participant | 


# **createCall**
> SpatioCall createCall(createCallRequest)

Start a new call.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final createCallRequest = CreateCallRequest(); // CreateCallRequest | 

try {
    final result = api_instance.createCall(createCallRequest);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->createCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createCallRequest** | [**CreateCallRequest**](CreateCallRequest.md)|  | [optional] 

### Return type

[**SpatioCall**](SpatioCall.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMeetingRoom**
> MeetingRoom createMeetingRoom(createMeetingRoomRequest)

Create a persistent meeting room.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final createMeetingRoomRequest = CreateMeetingRoomRequest(); // CreateMeetingRoomRequest | 

try {
    final result = api_instance.createMeetingRoom(createMeetingRoomRequest);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->createMeetingRoom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createMeetingRoomRequest** | [**CreateMeetingRoomRequest**](CreateMeetingRoomRequest.md)|  | 

### Return type

[**MeetingRoom**](MeetingRoom.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCallRecording**
> deleteCallRecording(recordingId)

Delete a recording.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final recordingId = recordingId_example; // String | 

try {
    api_instance.deleteCallRecording(recordingId);
} catch (e) {
    print('Exception when calling CallsApi->deleteCallRecording: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **recordingId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **endCall**
> endCall(id)

End a call (host only).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final id = id_example; // String | 

try {
    api_instance.endCall(id);
} catch (e) {
    print('Exception when calling CallsApi->endCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBandwidthHistory**
> Map<String, Object> getBandwidthHistory()

Time-series bandwidth metrics.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();

try {
    final result = api_instance.getBandwidthHistory();
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->getBandwidthHistory: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBandwidthSummary**
> Map<String, Object> getBandwidthSummary()

Aggregate bandwidth metrics.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();

try {
    final result = api_instance.getBandwidthSummary();
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->getBandwidthSummary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCall**
> SpatioCall getCall(id)

Fetch a call.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getCall(id);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->getCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**SpatioCall**](SpatioCall.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMeetingRoom**
> MeetingRoom getMeetingRoom(id)

Fetch a meeting room.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getMeetingRoom(id);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->getMeetingRoom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**MeetingRoom**](MeetingRoom.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **joinCall**
> Map<String, Object> joinCall(id)

Join a call.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final id = id_example; // String | 

try {
    final result = api_instance.joinCall(id);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->joinCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leaveCall**
> leaveCall(id)

Leave a call.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final id = id_example; // String | 

try {
    api_instance.leaveCall(id);
} catch (e) {
    print('Exception when calling CallsApi->leaveCall: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listActiveCalls**
> CallListResponse listActiveCalls()

List active calls.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();

try {
    final result = api_instance.listActiveCalls();
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->listActiveCalls: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CallListResponse**](CallListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCallRecordings**
> CallRecordingListResponse listCallRecordings(id)

List recordings for a call.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final id = id_example; // String | 

try {
    final result = api_instance.listCallRecordings(id);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->listCallRecordings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CallRecordingListResponse**](CallRecordingListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startCallRecording**
> CallRecording startCallRecording(id)

Start a recording (host only).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final id = id_example; // String | 

try {
    final result = api_instance.startCallRecording(id);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->startCallRecording: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CallRecording**](CallRecording.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stopCallRecording**
> CallRecording stopCallRecording(id, recordingId)

Stop an in-progress recording.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final id = id_example; // String | 
final recordingId = recordingId_example; // String | 

try {
    final result = api_instance.stopCallRecording(id, recordingId);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->stopCallRecording: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **recordingId** | **String**|  | 

### Return type

[**CallRecording**](CallRecording.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCallParticipantState**
> Map<String, Object> updateCallParticipantState(id, updateParticipantStateRequest)

Toggle participant audio/video/screen-share state.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final id = id_example; // String | 
final updateParticipantStateRequest = UpdateParticipantStateRequest(); // UpdateParticipantStateRequest | 

try {
    final result = api_instance.updateCallParticipantState(id, updateParticipantStateRequest);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->updateCallParticipantState: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateParticipantStateRequest** | [**UpdateParticipantStateRequest**](UpdateParticipantStateRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateCall**
> Map<String, Object> workspaceCreateCall(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreateCall(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceCreateCall: $e\n');
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

# **workspaceCreateMeetingRoom**
> Map<String, Object> workspaceCreateMeetingRoom(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreateMeetingRoom(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceCreateMeetingRoom: $e\n');
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

# **workspaceDeleteCallRecording**
> workspaceDeleteCallRecording(org, workspace, recordingId)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final recordingId = recordingId_example; // String | 

try {
    api_instance.workspaceDeleteCallRecording(org, workspace, recordingId);
} catch (e) {
    print('Exception when calling CallsApi->workspaceDeleteCallRecording: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **recordingId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceEndCall**
> workspaceEndCall(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    api_instance.workspaceEndCall(org, workspace, id);
} catch (e) {
    print('Exception when calling CallsApi->workspaceEndCall: $e\n');
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

# **workspaceGetBandwidthHistory**
> Map<String, Object> workspaceGetBandwidthHistory(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceGetBandwidthHistory(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceGetBandwidthHistory: $e\n');
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

# **workspaceGetBandwidthSummary**
> Map<String, Object> workspaceGetBandwidthSummary(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceGetBandwidthSummary(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceGetBandwidthSummary: $e\n');
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

# **workspaceGetCall**
> Map<String, Object> workspaceGetCall(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetCall(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceGetCall: $e\n');
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

# **workspaceGetMeetingRoom**
> Map<String, Object> workspaceGetMeetingRoom(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetMeetingRoom(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceGetMeetingRoom: $e\n');
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

# **workspaceJoinCall**
> Map<String, Object> workspaceJoinCall(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceJoinCall(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceJoinCall: $e\n');
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

# **workspaceLeaveCall**
> workspaceLeaveCall(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    api_instance.workspaceLeaveCall(org, workspace, id);
} catch (e) {
    print('Exception when calling CallsApi->workspaceLeaveCall: $e\n');
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

# **workspaceListActiveCalls**
> Map<String, Object> workspaceListActiveCalls(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListActiveCalls(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceListActiveCalls: $e\n');
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

# **workspaceListCallRecordings**
> Map<String, Object> workspaceListCallRecordings(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceListCallRecordings(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceListCallRecordings: $e\n');
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

# **workspaceStartCallRecording**
> Map<String, Object> workspaceStartCallRecording(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceStartCallRecording(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceStartCallRecording: $e\n');
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

# **workspaceStopCallRecording**
> Map<String, Object> workspaceStopCallRecording(org, workspace, id, recordingId)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final recordingId = recordingId_example; // String | 

try {
    final result = api_instance.workspaceStopCallRecording(org, workspace, id, recordingId);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceStopCallRecording: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 
 **recordingId** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUpdateCallParticipant**
> Map<String, Object> workspaceUpdateCallParticipant(org, workspace, id, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CallsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceUpdateCallParticipant(org, workspace, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling CallsApi->workspaceUpdateCallParticipant: $e\n');
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

