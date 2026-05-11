# spatio_sdk.api.PersonalAccessTokensApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPersonalAccessToken**](PersonalAccessTokensApi.md#createpersonalaccesstoken) | **POST** /v1/tokens | Create a new PAT. The full token is returned only once on creation; the API never reveals the secret again. 
[**listAvailablePATScopes**](PersonalAccessTokensApi.md#listavailablepatscopes) | **GET** /v1/tokens/scopes | List the scope strings PATs can be issued with.
[**listPersonalAccessTokens**](PersonalAccessTokensApi.md#listpersonalaccesstokens) | **GET** /v1/tokens | List the caller's personal access tokens (with available scopes).
[**revokePersonalAccessToken**](PersonalAccessTokensApi.md#revokepersonalaccesstoken) | **DELETE** /v1/tokens/{id} | Revoke a PAT.
[**updatePersonalAccessToken**](PersonalAccessTokensApi.md#updatepersonalaccesstoken) | **PATCH** /v1/tokens/{id} | Rename or re-describe a PAT (scopes are immutable).
[**workspaceCreatePAT**](PersonalAccessTokensApi.md#workspacecreatepat) | **POST** /v1/organizations/{org}/workspaces/{workspace}/tokens | 
[**workspaceListPATs**](PersonalAccessTokensApi.md#workspacelistpats) | **GET** /v1/organizations/{org}/workspaces/{workspace}/tokens | 
[**workspaceRevokePAT**](PersonalAccessTokensApi.md#workspacerevokepat) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/tokens/{id} | 
[**workspaceUpdatePAT**](PersonalAccessTokensApi.md#workspaceupdatepat) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/tokens/{id} | 


# **createPersonalAccessToken**
> CreatePATResponse createPersonalAccessToken(createPATRequest)

Create a new PAT. The full token is returned only once on creation; the API never reveals the secret again. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PersonalAccessTokensApi();
final createPATRequest = CreatePATRequest(); // CreatePATRequest | 

try {
    final result = api_instance.createPersonalAccessToken(createPATRequest);
    print(result);
} catch (e) {
    print('Exception when calling PersonalAccessTokensApi->createPersonalAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPATRequest** | [**CreatePATRequest**](CreatePATRequest.md)|  | 

### Return type

[**CreatePATResponse**](CreatePATResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAvailablePATScopes**
> PATScopesResponse listAvailablePATScopes()

List the scope strings PATs can be issued with.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PersonalAccessTokensApi();

try {
    final result = api_instance.listAvailablePATScopes();
    print(result);
} catch (e) {
    print('Exception when calling PersonalAccessTokensApi->listAvailablePATScopes: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PATScopesResponse**](PATScopesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPersonalAccessTokens**
> PATListResponse listPersonalAccessTokens()

List the caller's personal access tokens (with available scopes).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PersonalAccessTokensApi();

try {
    final result = api_instance.listPersonalAccessTokens();
    print(result);
} catch (e) {
    print('Exception when calling PersonalAccessTokensApi->listPersonalAccessTokens: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PATListResponse**](PATListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokePersonalAccessToken**
> revokePersonalAccessToken(id)

Revoke a PAT.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PersonalAccessTokensApi();
final id = id_example; // String | 

try {
    api_instance.revokePersonalAccessToken(id);
} catch (e) {
    print('Exception when calling PersonalAccessTokensApi->revokePersonalAccessToken: $e\n');
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

# **updatePersonalAccessToken**
> PersonalAccessToken updatePersonalAccessToken(id, updatePATRequest)

Rename or re-describe a PAT (scopes are immutable).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PersonalAccessTokensApi();
final id = id_example; // String | 
final updatePATRequest = UpdatePATRequest(); // UpdatePATRequest | 

try {
    final result = api_instance.updatePersonalAccessToken(id, updatePATRequest);
    print(result);
} catch (e) {
    print('Exception when calling PersonalAccessTokensApi->updatePersonalAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updatePATRequest** | [**UpdatePATRequest**](UpdatePATRequest.md)|  | 

### Return type

[**PersonalAccessToken**](PersonalAccessToken.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreatePAT**
> Map<String, Object> workspaceCreatePAT(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PersonalAccessTokensApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreatePAT(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling PersonalAccessTokensApi->workspaceCreatePAT: $e\n');
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

# **workspaceListPATs**
> Map<String, Object> workspaceListPATs(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PersonalAccessTokensApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListPATs(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling PersonalAccessTokensApi->workspaceListPATs: $e\n');
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

# **workspaceRevokePAT**
> workspaceRevokePAT(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PersonalAccessTokensApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    api_instance.workspaceRevokePAT(org, workspace, id);
} catch (e) {
    print('Exception when calling PersonalAccessTokensApi->workspaceRevokePAT: $e\n');
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

# **workspaceUpdatePAT**
> Map<String, Object> workspaceUpdatePAT(org, workspace, id, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = PersonalAccessTokensApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceUpdatePAT(org, workspace, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling PersonalAccessTokensApi->workspaceUpdatePAT: $e\n');
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

