# spatio_sdk.api.InboxApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInboxCounts**](InboxApi.md#getinboxcounts) | **GET** /v1/inbox/counts | Per-bucket unread counts.
[**listInbox**](InboxApi.md#listinbox) | **GET** /v1/inbox | Unified inbox feed across mail, channel mentions, DMs, system notifications.
[**markInboxItemRead**](InboxApi.md#markinboxitemread) | **PATCH** /v1/inbox/{id}/read | Mark a single inbox item as read.
[**workspaceGetInboxCounts**](InboxApi.md#workspacegetinboxcounts) | **GET** /v1/organizations/{org}/workspaces/{workspace}/inbox/counts | 
[**workspaceListInbox**](InboxApi.md#workspacelistinbox) | **GET** /v1/organizations/{org}/workspaces/{workspace}/inbox | 
[**workspaceMarkInboxItemRead**](InboxApi.md#workspacemarkinboxitemread) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/inbox/{id}/read | 


# **getInboxCounts**
> InboxCounts getInboxCounts()

Per-bucket unread counts.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboxApi();

try {
    final result = api_instance.getInboxCounts();
    print(result);
} catch (e) {
    print('Exception when calling InboxApi->getInboxCounts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InboxCounts**](InboxCounts.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listInbox**
> InboxListResponse listInbox(category, unreadOnly, limit)

Unified inbox feed across mail, channel mentions, DMs, system notifications.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboxApi();
final category = category_example; // String | 
final unreadOnly = true; // bool | 
final limit = 56; // int | 

try {
    final result = api_instance.listInbox(category, unreadOnly, limit);
    print(result);
} catch (e) {
    print('Exception when calling InboxApi->listInbox: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **String**|  | [optional] 
 **unreadOnly** | **bool**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**InboxListResponse**](InboxListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markInboxItemRead**
> markInboxItemRead(id)

Mark a single inbox item as read.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboxApi();
final id = id_example; // String | 

try {
    api_instance.markInboxItemRead(id);
} catch (e) {
    print('Exception when calling InboxApi->markInboxItemRead: $e\n');
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

# **workspaceGetInboxCounts**
> Map<String, Object> workspaceGetInboxCounts(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboxApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceGetInboxCounts(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling InboxApi->workspaceGetInboxCounts: $e\n');
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

# **workspaceListInbox**
> Map<String, Object> workspaceListInbox(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboxApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListInbox(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling InboxApi->workspaceListInbox: $e\n');
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

# **workspaceMarkInboxItemRead**
> workspaceMarkInboxItemRead(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InboxApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    api_instance.workspaceMarkInboxItemRead(org, workspace, id);
} catch (e) {
    print('Exception when calling InboxApi->workspaceMarkInboxItemRead: $e\n');
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

