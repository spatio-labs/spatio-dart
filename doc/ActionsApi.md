# spatio_sdk.api.ActionsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executeAction**](ActionsApi.md#executeaction) | **POST** /v1/actions/execute | Renderer-side execute alias. The canonical endpoint is `POST /v1/agent/actions/execute`; this path delegates to the same handler. 
[**getCoreAction**](ActionsApi.md#getcoreaction) | **GET** /v1/actions/core/{id} | Fetch a single core action by id.
[**listAvailableActions**](ActionsApi.md#listavailableactions) | **GET** /v1/actions/available | List every action the agent platform exposes.
[**listCoreActions**](ActionsApi.md#listcoreactions) | **GET** /v1/actions/core | List renderer-curated \"core actions\" (command-palette + keybindings backing).
[**listCoreActionsByPlatform**](ActionsApi.md#listcoreactionsbyplatform) | **GET** /v1/actions/core/platform/{platform} | Core actions filtered to one platform.
[**listPlatformActions**](ActionsApi.md#listplatformactions) | **GET** /v1/actions/platform/{platform} | List actions tagged for a specific platform (notes, mail, ...).


# **executeAction**
> ExecuteActionResponse executeAction(executeActionRequest)

Renderer-side execute alias. The canonical endpoint is `POST /v1/agent/actions/execute`; this path delegates to the same handler. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ActionsApi();
final executeActionRequest = ExecuteActionRequest(); // ExecuteActionRequest | 

try {
    final result = api_instance.executeAction(executeActionRequest);
    print(result);
} catch (e) {
    print('Exception when calling ActionsApi->executeAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **executeActionRequest** | [**ExecuteActionRequest**](ExecuteActionRequest.md)|  | 

### Return type

[**ExecuteActionResponse**](ExecuteActionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCoreAction**
> CoreAction getCoreAction(id)

Fetch a single core action by id.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ActionsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getCoreAction(id);
    print(result);
} catch (e) {
    print('Exception when calling ActionsApi->getCoreAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**CoreAction**](CoreAction.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAvailableActions**
> List<ActionDescriptor> listAvailableActions()

List every action the agent platform exposes.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ActionsApi();

try {
    final result = api_instance.listAvailableActions();
    print(result);
} catch (e) {
    print('Exception when calling ActionsApi->listAvailableActions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ActionDescriptor>**](ActionDescriptor.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCoreActions**
> CoreActionListResponse listCoreActions()

List renderer-curated \"core actions\" (command-palette + keybindings backing).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ActionsApi();

try {
    final result = api_instance.listCoreActions();
    print(result);
} catch (e) {
    print('Exception when calling ActionsApi->listCoreActions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CoreActionListResponse**](CoreActionListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCoreActionsByPlatform**
> CoreActionListResponse listCoreActionsByPlatform(platform)

Core actions filtered to one platform.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ActionsApi();
final platform = platform_example; // String | 

try {
    final result = api_instance.listCoreActionsByPlatform(platform);
    print(result);
} catch (e) {
    print('Exception when calling ActionsApi->listCoreActionsByPlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **String**|  | 

### Return type

[**CoreActionListResponse**](CoreActionListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPlatformActions**
> List<ActionDescriptor> listPlatformActions(platform)

List actions tagged for a specific platform (notes, mail, ...).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ActionsApi();
final platform = platform_example; // String | 

try {
    final result = api_instance.listPlatformActions(platform);
    print(result);
} catch (e) {
    print('Exception when calling ActionsApi->listPlatformActions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **String**|  | 

### Return type

[**List<ActionDescriptor>**](ActionDescriptor.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

