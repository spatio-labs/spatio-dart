# spatio_sdk.api.TerminalApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTerminalSession**](TerminalApi.md#createterminalsession) | **POST** /v1/terminal/sessions | Create a terminal session record. PTY bytes flow renderer ↔ local-agent over IPC and never traverse this API. 
[**deleteTerminalSession**](TerminalApi.md#deleteterminalsession) | **DELETE** /v1/terminal/sessions/{id} | Delete a terminal session record.
[**getTerminalSession**](TerminalApi.md#getterminalsession) | **GET** /v1/terminal/sessions/{id} | Fetch a terminal session.
[**listTerminalSessions**](TerminalApi.md#listterminalsessions) | **GET** /v1/terminal/sessions | List the caller's terminal sessions (metadata only — no PTY bytes).
[**updateTerminalSession**](TerminalApi.md#updateterminalsession) | **PATCH** /v1/terminal/sessions/{id} | Update terminal session metadata (title, cwd, etc.).


# **createTerminalSession**
> Map<String, Object> createTerminalSession(requestBody)

Create a terminal session record. PTY bytes flow renderer ↔ local-agent over IPC and never traverse this API. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TerminalApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.createTerminalSession(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TerminalApi->createTerminalSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTerminalSession**
> deleteTerminalSession(id)

Delete a terminal session record.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TerminalApi();
final id = id_example; // String | 

try {
    api_instance.deleteTerminalSession(id);
} catch (e) {
    print('Exception when calling TerminalApi->deleteTerminalSession: $e\n');
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

# **getTerminalSession**
> Map<String, Object> getTerminalSession(id)

Fetch a terminal session.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TerminalApi();
final id = id_example; // String | 

try {
    final result = api_instance.getTerminalSession(id);
    print(result);
} catch (e) {
    print('Exception when calling TerminalApi->getTerminalSession: $e\n');
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

# **listTerminalSessions**
> Map<String, Object> listTerminalSessions()

List the caller's terminal sessions (metadata only — no PTY bytes).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TerminalApi();

try {
    final result = api_instance.listTerminalSessions();
    print(result);
} catch (e) {
    print('Exception when calling TerminalApi->listTerminalSessions: $e\n');
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

# **updateTerminalSession**
> Map<String, Object> updateTerminalSession(id, requestBody)

Update terminal session metadata (title, cwd, etc.).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = TerminalApi();
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.updateTerminalSession(id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling TerminalApi->updateTerminalSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

