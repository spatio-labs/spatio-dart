# spatio_sdk.api.FilesApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkDeleteFiles**](FilesApi.md#bulkdeletefiles) | **POST** /v1/files/delete | Delete multiple files in one call.
[**bulkMoveFiles**](FilesApi.md#bulkmovefiles) | **POST** /v1/files/move | Move multiple files to a target folder.
[**commitChunkedUpload**](FilesApi.md#commitchunkedupload) | **POST** /v1/files/upload/chunked/commit | Finalize a chunked-upload session and create the file row.
[**createFileFolder**](FilesApi.md#createfilefolder) | **POST** /v1/files/folders | Create a folder.
[**deleteFile**](FilesApi.md#deletefile) | **DELETE** /v1/files/{id} | Delete a file.
[**extractFileText**](FilesApi.md#extractfiletext) | **GET** /v1/files/{id}/extract-text | Extract text content from a PDF (or other supported file).
[**getChunkedFileManifest**](FilesApi.md#getchunkedfilemanifest) | **GET** /v1/files/{id}/manifest | Fetch the block manifest for a chunked-uploaded file.
[**getFile**](FilesApi.md#getfile) | **GET** /v1/files/{id} | Fetch one file's metadata.
[**getFileDownloadUrl**](FilesApi.md#getfiledownloadurl) | **GET** /v1/files/{id}/download | Mint a fresh signed download URL.
[**initChunkedUpload**](FilesApi.md#initchunkedupload) | **POST** /v1/files/upload/chunked/init | Begin a content-addressed chunked upload session.
[**listFileFolders**](FilesApi.md#listfilefolders) | **GET** /v1/files/folders | List folders across connected file providers.
[**listFiles**](FilesApi.md#listfiles) | **GET** /v1/files | List files across connected file providers.
[**listFilesAndFolders**](FilesApi.md#listfilesandfolders) | **GET** /v1/files/list | Aggregate list of files + folders for renderer file-browser views.
[**moveFile**](FilesApi.md#movefile) | **POST** /v1/files/{id}/move | Move a single file to a target folder.
[**searchFiles**](FilesApi.md#searchfiles) | **GET** /v1/files/search | Substring-match search across the caller's files.
[**updateFile**](FilesApi.md#updatefile) | **PATCH** /v1/files/{id} | Update a file's metadata (name, folder, custom fields).
[**uploadChunkedBlock**](FilesApi.md#uploadchunkedblock) | **POST** /v1/files/upload/chunked/blocks | Upload one block for an open chunked-upload session.
[**uploadFile**](FilesApi.md#uploadfile) | **POST** /v1/files/upload | Upload a file via multipart form.
[**uploadFileBase64**](FilesApi.md#uploadfilebase64) | **POST** /v1/files/upload/base64 | Upload a file via JSON with base64-encoded content.
[**workspaceCommitChunkedUpload**](FilesApi.md#workspacecommitchunkedupload) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/upload/chunked/commit | Workspace-scoped chunked-upload commit (RBAC-protected).
[**workspaceCreateFileFolder**](FilesApi.md#workspacecreatefilefolder) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/folders | Workspace-scoped create-folder (RBAC-protected).
[**workspaceDeleteFile**](FilesApi.md#workspacedeletefile) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/files/{id} | Workspace-scoped delete-file.
[**workspaceGetFile**](FilesApi.md#workspacegetfile) | **GET** /v1/organizations/{org}/workspaces/{workspace}/files/{id} | Workspace-scoped get-file.
[**workspaceGetFileDownload**](FilesApi.md#workspacegetfiledownload) | **GET** /v1/organizations/{org}/workspaces/{workspace}/files/{id}/download | Workspace-scoped signed-download URL.
[**workspaceGetFileManifest**](FilesApi.md#workspacegetfilemanifest) | **GET** /v1/organizations/{org}/workspaces/{workspace}/files/{id}/manifest | Workspace-scoped chunked-file manifest.
[**workspaceInitChunkedUpload**](FilesApi.md#workspaceinitchunkedupload) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/upload/chunked/init | Workspace-scoped chunked-upload init (RBAC-protected).
[**workspaceListFileFolders**](FilesApi.md#workspacelistfilefolders) | **GET** /v1/organizations/{org}/workspaces/{workspace}/files/folders | Workspace-scoped list-folders (RBAC-protected).
[**workspaceListFiles**](FilesApi.md#workspacelistfiles) | **GET** /v1/organizations/{org}/workspaces/{workspace}/files | Workspace-scoped list-files (RBAC-protected).
[**workspaceMoveFile**](FilesApi.md#workspacemovefile) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/{id}/move | Workspace-scoped move-file.
[**workspaceUpdateFile**](FilesApi.md#workspaceupdatefile) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/files/{id} | Workspace-scoped update-file.
[**workspaceUploadChunkedBlock**](FilesApi.md#workspaceuploadchunkedblock) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/upload/chunked/blocks | Workspace-scoped chunked-upload block (RBAC-protected).
[**workspaceUploadFile**](FilesApi.md#workspaceuploadfile) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/upload | Workspace-scoped multipart upload (RBAC-protected).
[**workspaceUploadFileBase64**](FilesApi.md#workspaceuploadfilebase64) | **POST** /v1/organizations/{org}/workspaces/{workspace}/files/upload/base64 | Workspace-scoped base64 upload (RBAC-protected).


# **bulkDeleteFiles**
> BulkFilesResponse bulkDeleteFiles(bulkDeleteFilesRequest)

Delete multiple files in one call.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final bulkDeleteFilesRequest = BulkDeleteFilesRequest(); // BulkDeleteFilesRequest | 

try {
    final result = api_instance.bulkDeleteFiles(bulkDeleteFilesRequest);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->bulkDeleteFiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkDeleteFilesRequest** | [**BulkDeleteFilesRequest**](BulkDeleteFilesRequest.md)|  | 

### Return type

[**BulkFilesResponse**](BulkFilesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkMoveFiles**
> BulkFilesResponse bulkMoveFiles(bulkMoveFilesRequest)

Move multiple files to a target folder.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final bulkMoveFilesRequest = BulkMoveFilesRequest(); // BulkMoveFilesRequest | 

try {
    final result = api_instance.bulkMoveFiles(bulkMoveFilesRequest);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->bulkMoveFiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkMoveFilesRequest** | [**BulkMoveFilesRequest**](BulkMoveFilesRequest.md)|  | 

### Return type

[**BulkFilesResponse**](BulkFilesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commitChunkedUpload**
> CommitChunkedUploadResponse commitChunkedUpload(commitChunkedUploadRequest)

Finalize a chunked-upload session and create the file row.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final commitChunkedUploadRequest = CommitChunkedUploadRequest(); // CommitChunkedUploadRequest | 

try {
    final result = api_instance.commitChunkedUpload(commitChunkedUploadRequest);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->commitChunkedUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commitChunkedUploadRequest** | [**CommitChunkedUploadRequest**](CommitChunkedUploadRequest.md)|  | 

### Return type

[**CommitChunkedUploadResponse**](CommitChunkedUploadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFileFolder**
> Folder createFileFolder(createFolderRequest, accountId, provider, xWorkspaceID)

Create a folder.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final createFolderRequest = CreateFolderRequest(); // CreateFolderRequest | 
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final provider = provider_example; // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.createFileFolder(createFolderRequest, accountId, provider, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->createFileFolder: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createFolderRequest** | [**CreateFolderRequest**](CreateFolderRequest.md)|  | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String**| Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**Folder**](Folder.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFile**
> deleteFile(id, accountId, xWorkspaceID)

Delete a file.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final id = id_example; // String | File id.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    api_instance.deleteFile(id, accountId, xWorkspaceID);
} catch (e) {
    print('Exception when calling FilesApi->deleteFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| File id. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **extractFileText**
> ExtractTextResult extractFileText(id, accountId, xWorkspaceID, pageStart, pageEnd, maxChars)

Extract text content from a PDF (or other supported file).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final id = id_example; // String | File id.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final pageStart = 56; // int | 
final pageEnd = 56; // int | 
final maxChars = 56; // int | Truncation limit; sets `truncated: true` when hit.

try {
    final result = api_instance.extractFileText(id, accountId, xWorkspaceID, pageStart, pageEnd, maxChars);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->extractFileText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| File id. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **pageStart** | **int**|  | [optional] 
 **pageEnd** | **int**|  | [optional] 
 **maxChars** | **int**| Truncation limit; sets `truncated: true` when hit. | [optional] 

### Return type

[**ExtractTextResult**](ExtractTextResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChunkedFileManifest**
> ChunkedFileManifest getChunkedFileManifest(id, accountId, xWorkspaceID)

Fetch the block manifest for a chunked-uploaded file.

Only meaningful for files uploaded via `upload/chunked/_*`. Files uploaded via `upload` or `upload/base64` return `404`. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final id = id_example; // String | File id.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.getChunkedFileManifest(id, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->getChunkedFileManifest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| File id. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**ChunkedFileManifest**](ChunkedFileManifest.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFile**
> SpatioFile getFile(id, accountId, xWorkspaceID)

Fetch one file's metadata.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final id = id_example; // String | File id.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.getFile(id, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->getFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| File id. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SpatioFile**](SpatioFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFileDownloadUrl**
> DownloadFileResponse getFileDownloadUrl(id, accountId, xWorkspaceID)

Mint a fresh signed download URL.

Returns a JSON envelope with a pre-signed URL pointing at the backing storage. Clients follow the URL — the platform does not stream bytes through itself. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final id = id_example; // String | File id.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.getFileDownloadUrl(id, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->getFileDownloadUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| File id. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**DownloadFileResponse**](DownloadFileResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initChunkedUpload**
> InitChunkedUploadResponse initChunkedUpload(initChunkedUploadRequest)

Begin a content-addressed chunked upload session.

Client computes per-block hashes ahead of time and submits the list. The server replies with which blocks need uploading vs. already-on-server (deduplicated). Subsequent calls upload the missing blocks via `uploadChunkedBlock`, then `commit`. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final initChunkedUploadRequest = InitChunkedUploadRequest(); // InitChunkedUploadRequest | 

try {
    final result = api_instance.initChunkedUpload(initChunkedUploadRequest);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->initChunkedUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **initChunkedUploadRequest** | [**InitChunkedUploadRequest**](InitChunkedUploadRequest.md)|  | 

### Return type

[**InitChunkedUploadResponse**](InitChunkedUploadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFileFolders**
> FolderListEnvelope listFileFolders(accountId, provider, xWorkspaceID, parentId, workspaceId, organizationId, limit, offset)

List folders across connected file providers.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final provider = provider_example; // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final parentId = parentId_example; // String | Filter to children of this folder. Omit for root.
final workspaceId = workspaceId_example; // String | 
final organizationId = organizationId_example; // String | 
final limit = 56; // int | 
final offset = 56; // int | 

try {
    final result = api_instance.listFileFolders(accountId, provider, xWorkspaceID, parentId, workspaceId, organizationId, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->listFileFolders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String**| Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **parentId** | **String**| Filter to children of this folder. Omit for root. | [optional] 
 **workspaceId** | **String**|  | [optional] 
 **organizationId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 50]
 **offset** | **int**|  | [optional] [default to 0]

### Return type

[**FolderListEnvelope**](FolderListEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFiles**
> FileListEnvelope listFiles(accountId, provider, xWorkspaceID, folderId, workspaceId, organizationId, limit, offset, sortBy, sortOrder)

List files across connected file providers.

Fan-out list. Returns files from every connected file provider unless filtered by `?accountId=` or `?provider=`. Folder contents are scoped via `?folderId=`; omit for account root. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final provider = provider_example; // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final folderId = folderId_example; // String | Filter to one folder. Omit for the account root.
final workspaceId = workspaceId_example; // String | 
final organizationId = organizationId_example; // String | 
final limit = 56; // int | 
final offset = 56; // int | 
final sortBy = sortBy_example; // String | Provider-dependent. Common values: `created_at`, `name`, `size`.
final sortOrder = sortOrder_example; // String | 

try {
    final result = api_instance.listFiles(accountId, provider, xWorkspaceID, folderId, workspaceId, organizationId, limit, offset, sortBy, sortOrder);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->listFiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String**| Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **folderId** | **String**| Filter to one folder. Omit for the account root. | [optional] 
 **workspaceId** | **String**|  | [optional] 
 **organizationId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 50]
 **offset** | **int**|  | [optional] [default to 0]
 **sortBy** | **String**| Provider-dependent. Common values: `created_at`, `name`, `size`. | [optional] [default to 'created_at']
 **sortOrder** | **String**|  | [optional] [default to 'DESC']

### Return type

[**FileListEnvelope**](FileListEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFilesAndFolders**
> FilesAndFoldersResponse listFilesAndFolders(accountId, provider, folderId, workspaceId, organizationId, limit, offset, sortBy, sortOrder)

Aggregate list of files + folders for renderer file-browser views.

Calls `listFiles` and `listFileFolders` in parallel and merges the results. Saves a round-trip when the UI shows both side-by-side. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final provider = provider_example; // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
final folderId = folderId_example; // String | Filter to one folder. Omit for the account root.
final workspaceId = workspaceId_example; // String | 
final organizationId = organizationId_example; // String | 
final limit = 56; // int | 
final offset = 56; // int | 
final sortBy = sortBy_example; // String | 
final sortOrder = sortOrder_example; // String | 

try {
    final result = api_instance.listFilesAndFolders(accountId, provider, folderId, workspaceId, organizationId, limit, offset, sortBy, sortOrder);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->listFilesAndFolders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String**| Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  | [optional] 
 **folderId** | **String**| Filter to one folder. Omit for the account root. | [optional] 
 **workspaceId** | **String**|  | [optional] 
 **organizationId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 50]
 **offset** | **int**|  | [optional] [default to 0]
 **sortBy** | **String**|  | [optional] 
 **sortOrder** | **String**|  | [optional] 

### Return type

[**FilesAndFoldersResponse**](FilesAndFoldersResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveFile**
> MoveFileResponse moveFile(id, moveFileRequest, accountId, xWorkspaceID)

Move a single file to a target folder.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final id = id_example; // String | File id.
final moveFileRequest = MoveFileRequest(); // MoveFileRequest | 
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.moveFile(id, moveFileRequest, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->moveFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| File id. | 
 **moveFileRequest** | [**MoveFileRequest**](MoveFileRequest.md)|  | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**MoveFileResponse**](MoveFileResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchFiles**
> SearchFilesResponse searchFiles(query, accountId, provider, folderId, workspaceId, organizationId, limit, offset)

Substring-match search across the caller's files.

In-memory search — the platform lists up to ~500 files and filters locally on `name` (case-insensitive substring). Not suitable for global search across very large file libraries. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final query = query_example; // String | 
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final provider = provider_example; // String | Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`. 
final folderId = folderId_example; // String | Filter to one folder. Omit for the account root.
final workspaceId = workspaceId_example; // String | 
final organizationId = organizationId_example; // String | 
final limit = 56; // int | 
final offset = 56; // int | 

try {
    final result = api_instance.searchFiles(query, accountId, provider, folderId, workspaceId, organizationId, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->searchFiles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**|  | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **provider** | **String**| Provider id (e.g. `native-notes`, `notion`). Selects every connected account for the provider. Mutually exclusive with `accountId`.  | [optional] 
 **folderId** | **String**| Filter to one folder. Omit for the account root. | [optional] 
 **workspaceId** | **String**|  | [optional] 
 **organizationId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] [default to 50]
 **offset** | **int**|  | [optional] [default to 0]

### Return type

[**SearchFilesResponse**](SearchFilesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFile**
> SpatioFile updateFile(id, updateFileRequest, accountId, xWorkspaceID)

Update a file's metadata (name, folder, custom fields).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final id = id_example; // String | File id.
final updateFileRequest = UpdateFileRequest(); // UpdateFileRequest | 
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.updateFile(id, updateFileRequest, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->updateFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| File id. | 
 **updateFileRequest** | [**UpdateFileRequest**](UpdateFileRequest.md)|  | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SpatioFile**](SpatioFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadChunkedBlock**
> UploadChunkedBlockResponse uploadChunkedBlock(sessionId, blockHash, block, blockIndex)

Upload one block for an open chunked-upload session.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final sessionId = sessionId_example; // String | 
final blockHash = blockHash_example; // String | 
final block = BINARY_DATA_HERE; // MultipartFile | 
final blockIndex = 56; // int | 

try {
    final result = api_instance.uploadChunkedBlock(sessionId, blockHash, block, blockIndex);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->uploadChunkedBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**|  | 
 **blockHash** | **String**|  | 
 **block** | **MultipartFile**|  | 
 **blockIndex** | **int**|  | [optional] 

### Return type

[**UploadChunkedBlockResponse**](UploadChunkedBlockResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadFile**
> SpatioFile uploadFile(file, folderId, workspaceId, organizationId, accountId)

Upload a file via multipart form.

Multipart upload. Form field `file` carries the binary; auxiliary form fields scope the upload (`folderId`, `workspaceId`, `organizationId`, `accountId`). Max body size is currently 100 MB. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final file = BINARY_DATA_HERE; // MultipartFile | File bytes (multipart form field name `file`).
final folderId = folderId_example; // String | 
final workspaceId = workspaceId_example; // String | 
final organizationId = organizationId_example; // String | 
final accountId = accountId_example; // String | 

try {
    final result = api_instance.uploadFile(file, folderId, workspaceId, organizationId, accountId);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->uploadFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| File bytes (multipart form field name `file`). | 
 **folderId** | **String**|  | [optional] 
 **workspaceId** | **String**|  | [optional] 
 **organizationId** | **String**|  | [optional] 
 **accountId** | **String**|  | [optional] 

### Return type

[**SpatioFile**](SpatioFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadFileBase64**
> SpatioFile uploadFileBase64(uploadFileBase64Request)

Upload a file via JSON with base64-encoded content.

Equivalent to `uploadFile` for clients that can't post multipart bodies (e.g. browser fetch with strict CSP). 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final uploadFileBase64Request = UploadFileBase64Request(); // UploadFileBase64Request | 

try {
    final result = api_instance.uploadFileBase64(uploadFileBase64Request);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->uploadFileBase64: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uploadFileBase64Request** | [**UploadFileBase64Request**](UploadFileBase64Request.md)|  | 

### Return type

[**SpatioFile**](SpatioFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCommitChunkedUpload**
> Map<String, Object> workspaceCommitChunkedUpload(org, workspace, requestBody)

Workspace-scoped chunked-upload commit (RBAC-protected).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCommitChunkedUpload(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceCommitChunkedUpload: $e\n');
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

# **workspaceCreateFileFolder**
> Map<String, Object> workspaceCreateFileFolder(org, workspace, requestBody)

Workspace-scoped create-folder (RBAC-protected).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreateFileFolder(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceCreateFileFolder: $e\n');
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

# **workspaceDeleteFile**
> workspaceDeleteFile(org, workspace, id)

Workspace-scoped delete-file.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    api_instance.workspaceDeleteFile(org, workspace, id);
} catch (e) {
    print('Exception when calling FilesApi->workspaceDeleteFile: $e\n');
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

# **workspaceGetFile**
> Map<String, Object> workspaceGetFile(org, workspace, id)

Workspace-scoped get-file.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetFile(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceGetFile: $e\n');
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

# **workspaceGetFileDownload**
> Map<String, Object> workspaceGetFileDownload(org, workspace, id)

Workspace-scoped signed-download URL.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetFileDownload(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceGetFileDownload: $e\n');
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

# **workspaceGetFileManifest**
> Map<String, Object> workspaceGetFileManifest(org, workspace, id)

Workspace-scoped chunked-file manifest.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetFileManifest(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceGetFileManifest: $e\n');
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

# **workspaceInitChunkedUpload**
> Map<String, Object> workspaceInitChunkedUpload(org, workspace, requestBody)

Workspace-scoped chunked-upload init (RBAC-protected).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceInitChunkedUpload(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceInitChunkedUpload: $e\n');
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

# **workspaceListFileFolders**
> Map<String, Object> workspaceListFileFolders(org, workspace)

Workspace-scoped list-folders (RBAC-protected).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListFileFolders(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceListFileFolders: $e\n');
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

# **workspaceListFiles**
> Map<String, Object> workspaceListFiles(org, workspace)

Workspace-scoped list-files (RBAC-protected).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListFiles(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceListFiles: $e\n');
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

# **workspaceMoveFile**
> Map<String, Object> workspaceMoveFile(org, workspace, id, requestBody)

Workspace-scoped move-file.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceMoveFile(org, workspace, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceMoveFile: $e\n');
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

# **workspaceUpdateFile**
> Map<String, Object> workspaceUpdateFile(org, workspace, id, requestBody)

Workspace-scoped update-file.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceUpdateFile(org, workspace, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceUpdateFile: $e\n');
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

# **workspaceUploadChunkedBlock**
> Map<String, Object> workspaceUploadChunkedBlock(org, workspace, body)

Workspace-scoped chunked-upload block (RBAC-protected).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final body = MultipartFile(); // MultipartFile | 

try {
    final result = api_instance.workspaceUploadChunkedBlock(org, workspace, body);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceUploadChunkedBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **body** | **MultipartFile**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUploadFile**
> Map<String, Object> workspaceUploadFile(org, workspace, file)

Workspace-scoped multipart upload (RBAC-protected).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final result = api_instance.workspaceUploadFile(org, workspace, file);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceUploadFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **file** | **MultipartFile**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUploadFileBase64**
> Map<String, Object> workspaceUploadFileBase64(org, workspace, requestBody)

Workspace-scoped base64 upload (RBAC-protected).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FilesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceUploadFileBase64(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling FilesApi->workspaceUploadFileBase64: $e\n');
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

