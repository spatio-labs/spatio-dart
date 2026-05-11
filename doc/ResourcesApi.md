# spatio_sdk.api.ResourcesApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listResourcePermissionGrants**](ResourcesApi.md#listresourcepermissiongrants) | **GET** /v1/resources/{platform}/{resourceId}/permissions | List access grants on a resource (per-resource ACL).
[**revokeResourcePermissionGrant**](ResourcesApi.md#revokeresourcepermissiongrant) | **DELETE** /v1/resources/{platform}/{resourceId}/permissions/{grantId} | Revoke an access grant.
[**setResourcePermissionGrant**](ResourcesApi.md#setresourcepermissiongrant) | **POST** /v1/resources/{platform}/{resourceId}/permissions | Create or update an access grant.


# **listResourcePermissionGrants**
> Map<String, Object> listResourcePermissionGrants(platform, resourceId)

List access grants on a resource (per-resource ACL).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ResourcesApi();
final platform = platform_example; // String | 
final resourceId = resourceId_example; // String | 

try {
    final result = api_instance.listResourcePermissionGrants(platform, resourceId);
    print(result);
} catch (e) {
    print('Exception when calling ResourcesApi->listResourcePermissionGrants: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **String**|  | 
 **resourceId** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeResourcePermissionGrant**
> revokeResourcePermissionGrant(platform, resourceId, grantId)

Revoke an access grant.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ResourcesApi();
final platform = platform_example; // String | 
final resourceId = resourceId_example; // String | 
final grantId = grantId_example; // String | 

try {
    api_instance.revokeResourcePermissionGrant(platform, resourceId, grantId);
} catch (e) {
    print('Exception when calling ResourcesApi->revokeResourcePermissionGrant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **String**|  | 
 **resourceId** | **String**|  | 
 **grantId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setResourcePermissionGrant**
> Map<String, Object> setResourcePermissionGrant(platform, resourceId, requestBody)

Create or update an access grant.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ResourcesApi();
final platform = platform_example; // String | 
final resourceId = resourceId_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.setResourcePermissionGrant(platform, resourceId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling ResourcesApi->setResourcePermissionGrant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **String**|  | 
 **resourceId** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

