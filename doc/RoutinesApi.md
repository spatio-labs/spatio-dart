# spatio_sdk.api.RoutinesApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**claimRoutineRun**](RoutinesApi.md#claimroutinerun) | **POST** /v1/routines/runs/{id}/claim | Worker claims a queued run.
[**completeRoutineRun**](RoutinesApi.md#completeroutinerun) | **POST** /v1/routines/runs/{id}/complete | Worker marks a run complete.
[**createRoutine**](RoutinesApi.md#createroutine) | **POST** /v1/routines | Create a routine.
[**deleteRoutine**](RoutinesApi.md#deleteroutine) | **DELETE** /v1/routines/{id} | Delete a routine.
[**getRoutine**](RoutinesApi.md#getroutine) | **GET** /v1/routines/{id} | Fetch a routine.
[**listRoutineRuns**](RoutinesApi.md#listroutineruns) | **GET** /v1/routines/{id}/runs | List runs for a routine.
[**listRoutines**](RoutinesApi.md#listroutines) | **GET** /v1/routines | List routines for the caller's workspace.
[**runRoutineNow**](RoutinesApi.md#runroutinenow) | **POST** /v1/routines/{id}/run-now | Trigger an ad-hoc run.
[**updateRoutine**](RoutinesApi.md#updateroutine) | **PATCH** /v1/routines/{id} | Update a routine.
[**updateRoutineRunProgress**](RoutinesApi.md#updateroutinerunprogress) | **POST** /v1/routines/runs/{id}/progress | Worker reports progress.


# **claimRoutineRun**
> RoutineRun claimRoutineRun(id)

Worker claims a queued run.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoutinesApi();
final id = id_example; // String | 

try {
    final result = api_instance.claimRoutineRun(id);
    print(result);
} catch (e) {
    print('Exception when calling RoutinesApi->claimRoutineRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**RoutineRun**](RoutineRun.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **completeRoutineRun**
> RoutineRun completeRoutineRun(id, routineRunCompleteRequest)

Worker marks a run complete.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoutinesApi();
final id = id_example; // String | 
final routineRunCompleteRequest = RoutineRunCompleteRequest(); // RoutineRunCompleteRequest | 

try {
    final result = api_instance.completeRoutineRun(id, routineRunCompleteRequest);
    print(result);
} catch (e) {
    print('Exception when calling RoutinesApi->completeRoutineRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **routineRunCompleteRequest** | [**RoutineRunCompleteRequest**](RoutineRunCompleteRequest.md)|  | 

### Return type

[**RoutineRun**](RoutineRun.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRoutine**
> Routine createRoutine(createRoutineRequest)

Create a routine.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoutinesApi();
final createRoutineRequest = CreateRoutineRequest(); // CreateRoutineRequest | 

try {
    final result = api_instance.createRoutine(createRoutineRequest);
    print(result);
} catch (e) {
    print('Exception when calling RoutinesApi->createRoutine: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRoutineRequest** | [**CreateRoutineRequest**](CreateRoutineRequest.md)|  | 

### Return type

[**Routine**](Routine.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRoutine**
> deleteRoutine(id)

Delete a routine.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoutinesApi();
final id = id_example; // String | 

try {
    api_instance.deleteRoutine(id);
} catch (e) {
    print('Exception when calling RoutinesApi->deleteRoutine: $e\n');
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

# **getRoutine**
> Routine getRoutine(id)

Fetch a routine.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoutinesApi();
final id = id_example; // String | 

try {
    final result = api_instance.getRoutine(id);
    print(result);
} catch (e) {
    print('Exception when calling RoutinesApi->getRoutine: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Routine**](Routine.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRoutineRuns**
> RoutineRunListResponse listRoutineRuns(id)

List runs for a routine.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoutinesApi();
final id = id_example; // String | 

try {
    final result = api_instance.listRoutineRuns(id);
    print(result);
} catch (e) {
    print('Exception when calling RoutinesApi->listRoutineRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**RoutineRunListResponse**](RoutineRunListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRoutines**
> RoutineListResponse listRoutines(workspaceId, status)

List routines for the caller's workspace.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoutinesApi();
final workspaceId = workspaceId_example; // String | 
final status = status_example; // String | 

try {
    final result = api_instance.listRoutines(workspaceId, status);
    print(result);
} catch (e) {
    print('Exception when calling RoutinesApi->listRoutines: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 

### Return type

[**RoutineListResponse**](RoutineListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **runRoutineNow**
> RoutineRun runRoutineNow(id)

Trigger an ad-hoc run.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoutinesApi();
final id = id_example; // String | 

try {
    final result = api_instance.runRoutineNow(id);
    print(result);
} catch (e) {
    print('Exception when calling RoutinesApi->runRoutineNow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**RoutineRun**](RoutineRun.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRoutine**
> Routine updateRoutine(id, updateRoutineRequest)

Update a routine.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoutinesApi();
final id = id_example; // String | 
final updateRoutineRequest = UpdateRoutineRequest(); // UpdateRoutineRequest | 

try {
    final result = api_instance.updateRoutine(id, updateRoutineRequest);
    print(result);
} catch (e) {
    print('Exception when calling RoutinesApi->updateRoutine: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateRoutineRequest** | [**UpdateRoutineRequest**](UpdateRoutineRequest.md)|  | 

### Return type

[**Routine**](Routine.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRoutineRunProgress**
> RoutineRun updateRoutineRunProgress(id, routineRunProgressRequest)

Worker reports progress.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RoutinesApi();
final id = id_example; // String | 
final routineRunProgressRequest = RoutineRunProgressRequest(); // RoutineRunProgressRequest | 

try {
    final result = api_instance.updateRoutineRunProgress(id, routineRunProgressRequest);
    print(result);
} catch (e) {
    print('Exception when calling RoutinesApi->updateRoutineRunProgress: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **routineRunProgressRequest** | [**RoutineRunProgressRequest**](RoutineRunProgressRequest.md)|  | 

### Return type

[**RoutineRun**](RoutineRun.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

