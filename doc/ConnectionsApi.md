# spatio_sdk.api.ConnectionsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**disconnectConnection**](ConnectionsApi.md#disconnectconnection) | **POST** /v1/connections/disconnect | Disconnect a connected account.
[**installConnection**](ConnectionsApi.md#installconnection) | **POST** /v1/connections/install | Begin an OAuth install for a connection.
[**listAccounts**](ConnectionsApi.md#listaccounts) | **GET** /v1/accounts | List the caller's multi-provider accounts.
[**listConnectionIntegrations**](ConnectionsApi.md#listconnectionintegrations) | **GET** /v1/connections/integrations | List supported integrations + their connection state. Legacy path; `/v1/connections/list` is the preferred alias. 
[**listConnections**](ConnectionsApi.md#listconnections) | **GET** /v1/connections/list | List supported integrations + their connection state.
[**listUserConnections**](ConnectionsApi.md#listuserconnections) | **GET** /v1/connections/user | List the caller's connected accounts.
[**refreshConnection**](ConnectionsApi.md#refreshconnection) | **POST** /v1/connections/refresh | Force a refresh of a connection's OAuth tokens.
[**removeAccount**](ConnectionsApi.md#removeaccount) | **DELETE** /v1/accounts/{accountId} | Remove an account.
[**resolveAccount**](ConnectionsApi.md#resolveaccount) | **GET** /v1/accounts/resolve | Resolve an account by provider/identifier.
[**syncAccount**](ConnectionsApi.md#syncaccount) | **POST** /v1/accounts/{accountId}/sync | Force a sync against the upstream provider.
[**updateAccount**](ConnectionsApi.md#updateaccount) | **PATCH** /v1/accounts/{accountId} | Update account metadata (label, etc.).


# **disconnectConnection**
> Map<String, Object> disconnectConnection(disconnectConnectionRequest)

Disconnect a connected account.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConnectionsApi();
final disconnectConnectionRequest = DisconnectConnectionRequest(); // DisconnectConnectionRequest | 

try {
    final result = api_instance.disconnectConnection(disconnectConnectionRequest);
    print(result);
} catch (e) {
    print('Exception when calling ConnectionsApi->disconnectConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **disconnectConnectionRequest** | [**DisconnectConnectionRequest**](DisconnectConnectionRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **installConnection**
> Map<String, Object> installConnection(installConnectionRequest)

Begin an OAuth install for a connection.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConnectionsApi();
final installConnectionRequest = InstallConnectionRequest(); // InstallConnectionRequest | 

try {
    final result = api_instance.installConnection(installConnectionRequest);
    print(result);
} catch (e) {
    print('Exception when calling ConnectionsApi->installConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **installConnectionRequest** | [**InstallConnectionRequest**](InstallConnectionRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccounts**
> AccountListResponse listAccounts()

List the caller's multi-provider accounts.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConnectionsApi();

try {
    final result = api_instance.listAccounts();
    print(result);
} catch (e) {
    print('Exception when calling ConnectionsApi->listAccounts: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AccountListResponse**](AccountListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConnectionIntegrations**
> ConnectionListResponse listConnectionIntegrations()

List supported integrations + their connection state. Legacy path; `/v1/connections/list` is the preferred alias. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConnectionsApi();

try {
    final result = api_instance.listConnectionIntegrations();
    print(result);
} catch (e) {
    print('Exception when calling ConnectionsApi->listConnectionIntegrations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConnectionListResponse**](ConnectionListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConnections**
> ConnectionListResponse listConnections()

List supported integrations + their connection state.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConnectionsApi();

try {
    final result = api_instance.listConnections();
    print(result);
} catch (e) {
    print('Exception when calling ConnectionsApi->listConnections: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConnectionListResponse**](ConnectionListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserConnections**
> ConnectionAccountListResponse listUserConnections()

List the caller's connected accounts.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConnectionsApi();

try {
    final result = api_instance.listUserConnections();
    print(result);
} catch (e) {
    print('Exception when calling ConnectionsApi->listUserConnections: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConnectionAccountListResponse**](ConnectionAccountListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshConnection**
> Map<String, Object> refreshConnection(refreshConnectionRequest)

Force a refresh of a connection's OAuth tokens.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConnectionsApi();
final refreshConnectionRequest = RefreshConnectionRequest(); // RefreshConnectionRequest | 

try {
    final result = api_instance.refreshConnection(refreshConnectionRequest);
    print(result);
} catch (e) {
    print('Exception when calling ConnectionsApi->refreshConnection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshConnectionRequest** | [**RefreshConnectionRequest**](RefreshConnectionRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAccount**
> removeAccount(accountId)

Remove an account.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConnectionsApi();
final accountId = accountId_example; // String | 

try {
    api_instance.removeAccount(accountId);
} catch (e) {
    print('Exception when calling ConnectionsApi->removeAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resolveAccount**
> Map<String, Object> resolveAccount(provider, email)

Resolve an account by provider/identifier.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConnectionsApi();
final provider = provider_example; // String | 
final email = email_example; // String | 

try {
    final result = api_instance.resolveAccount(provider, email);
    print(result);
} catch (e) {
    print('Exception when calling ConnectionsApi->resolveAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **String**|  | [optional] 
 **email** | **String**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **syncAccount**
> Map<String, Object> syncAccount(accountId)

Force a sync against the upstream provider.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConnectionsApi();
final accountId = accountId_example; // String | 

try {
    final result = api_instance.syncAccount(accountId);
    print(result);
} catch (e) {
    print('Exception when calling ConnectionsApi->syncAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccount**
> Map<String, Object> updateAccount(accountId, updateAccountRequest)

Update account metadata (label, etc.).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConnectionsApi();
final accountId = accountId_example; // String | 
final updateAccountRequest = UpdateAccountRequest(); // UpdateAccountRequest | 

try {
    final result = api_instance.updateAccount(accountId, updateAccountRequest);
    print(result);
} catch (e) {
    print('Exception when calling ConnectionsApi->updateAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | 
 **updateAccountRequest** | [**UpdateAccountRequest**](UpdateAccountRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

