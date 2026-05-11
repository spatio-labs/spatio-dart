# spatio_sdk.api.AppsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApp**](AppsApi.md#createapp) | **POST** /v1/apps | Register a prototype app (project_path is the on-disk root).
[**deleteApp**](AppsApi.md#deleteapp) | **DELETE** /v1/apps/{id} | Delete an app.
[**deleteAppFile**](AppsApi.md#deleteappfile) | **DELETE** /v1/apps/{id}/file | Delete one file inside the app's project directory.
[**getApp**](AppsApi.md#getapp) | **GET** /v1/apps/{id} | Fetch an app.
[**listAppFiles**](AppsApi.md#listappfiles) | **GET** /v1/apps/{id}/files | List files inside the app's project directory.
[**listApps**](AppsApi.md#listapps) | **GET** /v1/apps | List the caller's prototype apps.
[**readAppFile**](AppsApi.md#readappfile) | **GET** /v1/apps/{id}/file | Read one file inside the app's project directory. Path is traversal-checked; returns 400 if it escapes project root. 
[**updateApp**](AppsApi.md#updateapp) | **PATCH** /v1/apps/{id} | Update an app.
[**workspaceCreateApp**](AppsApi.md#workspacecreateapp) | **POST** /v1/organizations/{org}/workspaces/{workspace}/apps | 
[**workspaceDeleteApp**](AppsApi.md#workspacedeleteapp) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/apps/{id} | 
[**workspaceGetApp**](AppsApi.md#workspacegetapp) | **GET** /v1/organizations/{org}/workspaces/{workspace}/apps/{id} | 
[**workspaceListApps**](AppsApi.md#workspacelistapps) | **GET** /v1/organizations/{org}/workspaces/{workspace}/apps | 
[**workspaceUpdateApp**](AppsApi.md#workspaceupdateapp) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/apps/{id} | 
[**writeAppFile**](AppsApi.md#writeappfile) | **POST** /v1/apps/{id}/file | Write one file inside the app's project directory.


# **createApp**
> App createApp(createAppRequest)

Register a prototype app (project_path is the on-disk root).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final createAppRequest = CreateAppRequest(); // CreateAppRequest | 

try {
    final result = api_instance.createApp(createAppRequest);
    print(result);
} catch (e) {
    print('Exception when calling AppsApi->createApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAppRequest** | [**CreateAppRequest**](CreateAppRequest.md)|  | 

### Return type

[**App**](App.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteApp**
> deleteApp(id)

Delete an app.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final id = id_example; // String | 

try {
    api_instance.deleteApp(id);
} catch (e) {
    print('Exception when calling AppsApi->deleteApp: $e\n');
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

# **deleteAppFile**
> deleteAppFile(id, path)

Delete one file inside the app's project directory.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final id = id_example; // String | 
final path = path_example; // String | 

try {
    api_instance.deleteAppFile(id, path);
} catch (e) {
    print('Exception when calling AppsApi->deleteAppFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **path** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getApp**
> App getApp(id)

Fetch an app.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getApp(id);
    print(result);
} catch (e) {
    print('Exception when calling AppsApi->getApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**App**](App.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAppFiles**
> AppFileListResponse listAppFiles(id, path)

List files inside the app's project directory.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final id = id_example; // String | 
final path = path_example; // String | 

try {
    final result = api_instance.listAppFiles(id, path);
    print(result);
} catch (e) {
    print('Exception when calling AppsApi->listAppFiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **path** | **String**|  | [optional] 

### Return type

[**AppFileListResponse**](AppFileListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listApps**
> AppListResponse listApps()

List the caller's prototype apps.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();

try {
    final result = api_instance.listApps();
    print(result);
} catch (e) {
    print('Exception when calling AppsApi->listApps: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AppListResponse**](AppListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readAppFile**
> AppFileContentResponse readAppFile(id, path)

Read one file inside the app's project directory. Path is traversal-checked; returns 400 if it escapes project root. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final id = id_example; // String | 
final path = path_example; // String | 

try {
    final result = api_instance.readAppFile(id, path);
    print(result);
} catch (e) {
    print('Exception when calling AppsApi->readAppFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **path** | **String**|  | 

### Return type

[**AppFileContentResponse**](AppFileContentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateApp**
> App updateApp(id, updateAppRequest)

Update an app.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final id = id_example; // String | 
final updateAppRequest = UpdateAppRequest(); // UpdateAppRequest | 

try {
    final result = api_instance.updateApp(id, updateAppRequest);
    print(result);
} catch (e) {
    print('Exception when calling AppsApi->updateApp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateAppRequest** | [**UpdateAppRequest**](UpdateAppRequest.md)|  | 

### Return type

[**App**](App.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateApp**
> Map<String, Object> workspaceCreateApp(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreateApp(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling AppsApi->workspaceCreateApp: $e\n');
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

# **workspaceDeleteApp**
> workspaceDeleteApp(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    api_instance.workspaceDeleteApp(org, workspace, id);
} catch (e) {
    print('Exception when calling AppsApi->workspaceDeleteApp: $e\n');
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

# **workspaceGetApp**
> Map<String, Object> workspaceGetApp(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetApp(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling AppsApi->workspaceGetApp: $e\n');
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

# **workspaceListApps**
> Map<String, Object> workspaceListApps(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListApps(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling AppsApi->workspaceListApps: $e\n');
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

# **workspaceUpdateApp**
> Map<String, Object> workspaceUpdateApp(org, workspace, id, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceUpdateApp(org, workspace, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling AppsApi->workspaceUpdateApp: $e\n');
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

# **writeAppFile**
> writeAppFile(id, writeAppFileRequest)

Write one file inside the app's project directory.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AppsApi();
final id = id_example; // String | 
final writeAppFileRequest = WriteAppFileRequest(); // WriteAppFileRequest | 

try {
    api_instance.writeAppFile(id, writeAppFileRequest);
} catch (e) {
    print('Exception when calling AppsApi->writeAppFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **writeAppFileRequest** | [**WriteAppFileRequest**](WriteAppFileRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

