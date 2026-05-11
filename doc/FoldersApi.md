# spatio_sdk.api.FoldersApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createEmailFolder**](FoldersApi.md#createemailfolder) | **POST** /v1/folders | Create an email folder.
[**deleteEmailFolder**](FoldersApi.md#deleteemailfolder) | **DELETE** /v1/folders/{id} | Delete an email folder.
[**listEmailFolders**](FoldersApi.md#listemailfolders) | **GET** /v1/folders | List the caller's email folders.
[**listFolderEmails**](FoldersApi.md#listfolderemails) | **GET** /v1/folders/{id}/emails | List emails inside a folder.
[**moveEmailsToFolder**](FoldersApi.md#moveemailstofolder) | **POST** /v1/folders/{id}/emails | Move emails into a folder.
[**updateEmailFolder**](FoldersApi.md#updateemailfolder) | **PUT** /v1/folders/{id} | Update an email folder.


# **createEmailFolder**
> EmailFolder createEmailFolder(createEmailFolderRequest)

Create an email folder.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FoldersApi();
final createEmailFolderRequest = CreateEmailFolderRequest(); // CreateEmailFolderRequest | 

try {
    final result = api_instance.createEmailFolder(createEmailFolderRequest);
    print(result);
} catch (e) {
    print('Exception when calling FoldersApi->createEmailFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createEmailFolderRequest** | [**CreateEmailFolderRequest**](CreateEmailFolderRequest.md)|  | 

### Return type

[**EmailFolder**](EmailFolder.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmailFolder**
> deleteEmailFolder(id)

Delete an email folder.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FoldersApi();
final id = id_example; // String | 

try {
    api_instance.deleteEmailFolder(id);
} catch (e) {
    print('Exception when calling FoldersApi->deleteEmailFolder: $e\n');
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

# **listEmailFolders**
> EmailFolderListResponse listEmailFolders()

List the caller's email folders.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FoldersApi();

try {
    final result = api_instance.listEmailFolders();
    print(result);
} catch (e) {
    print('Exception when calling FoldersApi->listEmailFolders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EmailFolderListResponse**](EmailFolderListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFolderEmails**
> Map<String, Object> listFolderEmails(id)

List emails inside a folder.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FoldersApi();
final id = id_example; // String | 

try {
    final result = api_instance.listFolderEmails(id);
    print(result);
} catch (e) {
    print('Exception when calling FoldersApi->listFolderEmails: $e\n');
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

# **moveEmailsToFolder**
> Map<String, Object> moveEmailsToFolder(id, moveEmailsRequest)

Move emails into a folder.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FoldersApi();
final id = id_example; // String | 
final moveEmailsRequest = MoveEmailsRequest(); // MoveEmailsRequest | 

try {
    final result = api_instance.moveEmailsToFolder(id, moveEmailsRequest);
    print(result);
} catch (e) {
    print('Exception when calling FoldersApi->moveEmailsToFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **moveEmailsRequest** | [**MoveEmailsRequest**](MoveEmailsRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmailFolder**
> EmailFolder updateEmailFolder(id, updateEmailFolderRequest)

Update an email folder.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FoldersApi();
final id = id_example; // String | 
final updateEmailFolderRequest = UpdateEmailFolderRequest(); // UpdateEmailFolderRequest | 

try {
    final result = api_instance.updateEmailFolder(id, updateEmailFolderRequest);
    print(result);
} catch (e) {
    print('Exception when calling FoldersApi->updateEmailFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateEmailFolderRequest** | [**UpdateEmailFolderRequest**](UpdateEmailFolderRequest.md)|  | 

### Return type

[**EmailFolder**](EmailFolder.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

