# spatio_sdk.api.NotificationsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getNotificationPreferences**](NotificationsApi.md#getnotificationpreferences) | **GET** /v1/notifications/preferences | Read the caller's notification preferences.
[**updateNotificationPreferences**](NotificationsApi.md#updatenotificationpreferences) | **PATCH** /v1/notifications/preferences | Update notification preferences.


# **getNotificationPreferences**
> Map<String, Object> getNotificationPreferences()

Read the caller's notification preferences.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NotificationsApi();

try {
    final result = api_instance.getNotificationPreferences();
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->getNotificationPreferences: $e\n');
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

# **updateNotificationPreferences**
> Map<String, Object> updateNotificationPreferences(requestBody)

Update notification preferences.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NotificationsApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.updateNotificationPreferences(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling NotificationsApi->updateNotificationPreferences: $e\n');
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

