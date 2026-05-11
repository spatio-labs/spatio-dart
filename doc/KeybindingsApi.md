# spatio_sdk.api.KeybindingsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteKeyBinding**](KeybindingsApi.md#deletekeybinding) | **DELETE** /v1/keybindings/{id} | Reset a binding to its platform default.
[**getDefaultKeyBindings**](KeybindingsApi.md#getdefaultkeybindings) | **GET** /v1/keybindings/defaults | Platform default key bindings (no user customizations applied).
[**listKeyBindings**](KeybindingsApi.md#listkeybindings) | **GET** /v1/keybindings | User's merged key bindings (defaults + customizations).
[**resetAllKeyBindings**](KeybindingsApi.md#resetallkeybindings) | **POST** /v1/keybindings/reset | Reset every customization to its platform default.
[**updateKeyBinding**](KeybindingsApi.md#updatekeybinding) | **PUT** /v1/keybindings/{id} | Create or update a user key-binding customization.
[**validateKeyBinding**](KeybindingsApi.md#validatekeybinding) | **POST** /v1/keybindings/validate | Check whether a proposed binding conflicts with existing ones.


# **deleteKeyBinding**
> deleteKeyBinding(id)

Reset a binding to its platform default.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = KeybindingsApi();
final id = id_example; // String | 

try {
    api_instance.deleteKeyBinding(id);
} catch (e) {
    print('Exception when calling KeybindingsApi->deleteKeyBinding: $e\n');
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

# **getDefaultKeyBindings**
> KeyBindingListResponse getDefaultKeyBindings()

Platform default key bindings (no user customizations applied).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = KeybindingsApi();

try {
    final result = api_instance.getDefaultKeyBindings();
    print(result);
} catch (e) {
    print('Exception when calling KeybindingsApi->getDefaultKeyBindings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**KeyBindingListResponse**](KeyBindingListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listKeyBindings**
> KeyBindingListResponse listKeyBindings()

User's merged key bindings (defaults + customizations).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = KeybindingsApi();

try {
    final result = api_instance.listKeyBindings();
    print(result);
} catch (e) {
    print('Exception when calling KeybindingsApi->listKeyBindings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**KeyBindingListResponse**](KeyBindingListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetAllKeyBindings**
> resetAllKeyBindings()

Reset every customization to its platform default.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = KeybindingsApi();

try {
    api_instance.resetAllKeyBindings();
} catch (e) {
    print('Exception when calling KeybindingsApi->resetAllKeyBindings: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateKeyBinding**
> KeyBinding updateKeyBinding(id, updateKeyBindingRequest)

Create or update a user key-binding customization.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = KeybindingsApi();
final id = id_example; // String | 
final updateKeyBindingRequest = UpdateKeyBindingRequest(); // UpdateKeyBindingRequest | 

try {
    final result = api_instance.updateKeyBinding(id, updateKeyBindingRequest);
    print(result);
} catch (e) {
    print('Exception when calling KeybindingsApi->updateKeyBinding: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateKeyBindingRequest** | [**UpdateKeyBindingRequest**](UpdateKeyBindingRequest.md)|  | 

### Return type

[**KeyBinding**](KeyBinding.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateKeyBinding**
> ValidateKeyBindingResponse validateKeyBinding(validateKeyBindingRequest)

Check whether a proposed binding conflicts with existing ones.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = KeybindingsApi();
final validateKeyBindingRequest = ValidateKeyBindingRequest(); // ValidateKeyBindingRequest | 

try {
    final result = api_instance.validateKeyBinding(validateKeyBindingRequest);
    print(result);
} catch (e) {
    print('Exception when calling KeybindingsApi->validateKeyBinding: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validateKeyBindingRequest** | [**ValidateKeyBindingRequest**](ValidateKeyBindingRequest.md)|  | 

### Return type

[**ValidateKeyBindingResponse**](ValidateKeyBindingResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

