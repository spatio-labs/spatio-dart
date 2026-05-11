# spatio_sdk.api.WorkspacesApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptWorkspaceInvitation**](WorkspacesApi.md#acceptworkspaceinvitation) | **POST** /v1/invitations/{token}/accept | Accept a workspace invitation by token. The signed-in user's email must match the invitation. Organization-token accept lives at `POST /v1/organizations/{org}/accept-invitation`. 
[**addWorkspaceMember**](WorkspacesApi.md#addworkspacemember) | **POST** /v1/workspaces/{workspaceId}/members | Add a member directly (skips invitation flow).
[**createWorkspace**](WorkspacesApi.md#createworkspace) | **POST** /v1/workspaces | Create a workspace. Requires `organizationId` in the body — bare \"personal\" workspaces aren't supported on the public API. 
[**createWorkspaceInvitation**](WorkspacesApi.md#createworkspaceinvitation) | **POST** /v1/workspaces/{workspaceId}/invitations | Invite a user to a workspace.
[**getPublicInvitation**](WorkspacesApi.md#getpublicinvitation) | **GET** /invitations/{token} | Fetch invitation details by token (unauthenticated). Used by the renderer to show invitation context before the user signs in. 
[**getWorkspace**](WorkspacesApi.md#getworkspace) | **GET** /v1/workspaces/{workspaceId} | Fetch a single workspace by id.
[**listMyWorkspaces**](WorkspacesApi.md#listmyworkspaces) | **GET** /v1/workspaces | List the caller's workspaces (across organizations).
[**listWorkspaceInvitations**](WorkspacesApi.md#listworkspaceinvitations) | **GET** /v1/workspaces/{workspaceId}/invitations | List pending workspace invitations.
[**listWorkspaceMembers**](WorkspacesApi.md#listworkspacemembers) | **GET** /v1/workspaces/{workspaceId}/members | List members of a workspace.
[**removeWorkspaceMember**](WorkspacesApi.md#removeworkspacemember) | **DELETE** /v1/workspaces/{workspaceId}/members/{memberId} | Remove a member from the workspace.
[**revokeWorkspaceInvitation**](WorkspacesApi.md#revokeworkspaceinvitation) | **DELETE** /v1/workspaces/{workspaceId}/invitations/{invitationId} | Revoke a pending workspace invitation.
[**updateWorkspace**](WorkspacesApi.md#updateworkspace) | **PATCH** /v1/workspaces/{workspaceId} | Update workspace metadata.
[**updateWorkspaceMember**](WorkspacesApi.md#updateworkspacemember) | **PATCH** /v1/workspaces/{workspaceId}/members/{memberId} | Update a member's role.


# **acceptWorkspaceInvitation**
> Map<String, Object> acceptWorkspaceInvitation(token)

Accept a workspace invitation by token. The signed-in user's email must match the invitation. Organization-token accept lives at `POST /v1/organizations/{org}/accept-invitation`. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final token = token_example; // String | 

try {
    final result = api_instance.acceptWorkspaceInvitation(token);
    print(result);
} catch (e) {
    print('Exception when calling WorkspacesApi->acceptWorkspaceInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addWorkspaceMember**
> Map<String, Object> addWorkspaceMember(workspaceId, addWorkspaceMemberRequest)

Add a member directly (skips invitation flow).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final workspaceId = workspaceId_example; // String | 
final addWorkspaceMemberRequest = AddWorkspaceMemberRequest(); // AddWorkspaceMemberRequest | 

try {
    final result = api_instance.addWorkspaceMember(workspaceId, addWorkspaceMemberRequest);
    print(result);
} catch (e) {
    print('Exception when calling WorkspacesApi->addWorkspaceMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | 
 **addWorkspaceMemberRequest** | [**AddWorkspaceMemberRequest**](AddWorkspaceMemberRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkspace**
> WorkspaceEnvelope createWorkspace(createWorkspaceRequest)

Create a workspace. Requires `organizationId` in the body — bare \"personal\" workspaces aren't supported on the public API. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final createWorkspaceRequest = CreateWorkspaceRequest(); // CreateWorkspaceRequest | 

try {
    final result = api_instance.createWorkspace(createWorkspaceRequest);
    print(result);
} catch (e) {
    print('Exception when calling WorkspacesApi->createWorkspace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createWorkspaceRequest** | [**CreateWorkspaceRequest**](CreateWorkspaceRequest.md)|  | 

### Return type

[**WorkspaceEnvelope**](WorkspaceEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWorkspaceInvitation**
> WorkspaceInvitation createWorkspaceInvitation(workspaceId, createWorkspaceInvitationRequest)

Invite a user to a workspace.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final workspaceId = workspaceId_example; // String | 
final createWorkspaceInvitationRequest = CreateWorkspaceInvitationRequest(); // CreateWorkspaceInvitationRequest | 

try {
    final result = api_instance.createWorkspaceInvitation(workspaceId, createWorkspaceInvitationRequest);
    print(result);
} catch (e) {
    print('Exception when calling WorkspacesApi->createWorkspaceInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | 
 **createWorkspaceInvitationRequest** | [**CreateWorkspaceInvitationRequest**](CreateWorkspaceInvitationRequest.md)|  | 

### Return type

[**WorkspaceInvitation**](WorkspaceInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPublicInvitation**
> PublicInvitationPayload getPublicInvitation(token)

Fetch invitation details by token (unauthenticated). Used by the renderer to show invitation context before the user signs in. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final token = token_example; // String | 

try {
    final result = api_instance.getPublicInvitation(token);
    print(result);
} catch (e) {
    print('Exception when calling WorkspacesApi->getPublicInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**PublicInvitationPayload**](PublicInvitationPayload.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspace**
> WorkspaceEnvelope getWorkspace(workspaceId)

Fetch a single workspace by id.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final workspaceId = workspaceId_example; // String | 

try {
    final result = api_instance.getWorkspace(workspaceId);
    print(result);
} catch (e) {
    print('Exception when calling WorkspacesApi->getWorkspace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | 

### Return type

[**WorkspaceEnvelope**](WorkspaceEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMyWorkspaces**
> WorkspaceListResponse listMyWorkspaces()

List the caller's workspaces (across organizations).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();

try {
    final result = api_instance.listMyWorkspaces();
    print(result);
} catch (e) {
    print('Exception when calling WorkspacesApi->listMyWorkspaces: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**WorkspaceListResponse**](WorkspaceListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaceInvitations**
> WorkspaceInvitationListResponse listWorkspaceInvitations(workspaceId)

List pending workspace invitations.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final workspaceId = workspaceId_example; // String | 

try {
    final result = api_instance.listWorkspaceInvitations(workspaceId);
    print(result);
} catch (e) {
    print('Exception when calling WorkspacesApi->listWorkspaceInvitations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | 

### Return type

[**WorkspaceInvitationListResponse**](WorkspaceInvitationListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWorkspaceMembers**
> WorkspaceMemberListResponse listWorkspaceMembers(workspaceId)

List members of a workspace.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final workspaceId = workspaceId_example; // String | 

try {
    final result = api_instance.listWorkspaceMembers(workspaceId);
    print(result);
} catch (e) {
    print('Exception when calling WorkspacesApi->listWorkspaceMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | 

### Return type

[**WorkspaceMemberListResponse**](WorkspaceMemberListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeWorkspaceMember**
> removeWorkspaceMember(workspaceId, memberId)

Remove a member from the workspace.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final workspaceId = workspaceId_example; // String | 
final memberId = memberId_example; // String | 

try {
    api_instance.removeWorkspaceMember(workspaceId, memberId);
} catch (e) {
    print('Exception when calling WorkspacesApi->removeWorkspaceMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | 
 **memberId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeWorkspaceInvitation**
> revokeWorkspaceInvitation(workspaceId, invitationId)

Revoke a pending workspace invitation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final workspaceId = workspaceId_example; // String | 
final invitationId = invitationId_example; // String | 

try {
    api_instance.revokeWorkspaceInvitation(workspaceId, invitationId);
} catch (e) {
    print('Exception when calling WorkspacesApi->revokeWorkspaceInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | 
 **invitationId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkspace**
> WorkspaceEnvelope updateWorkspace(workspaceId, updateWorkspaceRequest)

Update workspace metadata.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final workspaceId = workspaceId_example; // String | 
final updateWorkspaceRequest = UpdateWorkspaceRequest(); // UpdateWorkspaceRequest | 

try {
    final result = api_instance.updateWorkspace(workspaceId, updateWorkspaceRequest);
    print(result);
} catch (e) {
    print('Exception when calling WorkspacesApi->updateWorkspace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | 
 **updateWorkspaceRequest** | [**UpdateWorkspaceRequest**](UpdateWorkspaceRequest.md)|  | 

### Return type

[**WorkspaceEnvelope**](WorkspaceEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWorkspaceMember**
> Map<String, Object> updateWorkspaceMember(workspaceId, memberId, updateWorkspaceMemberRequest)

Update a member's role.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = WorkspacesApi();
final workspaceId = workspaceId_example; // String | 
final memberId = memberId_example; // String | 
final updateWorkspaceMemberRequest = UpdateWorkspaceMemberRequest(); // UpdateWorkspaceMemberRequest | 

try {
    final result = api_instance.updateWorkspaceMember(workspaceId, memberId, updateWorkspaceMemberRequest);
    print(result);
} catch (e) {
    print('Exception when calling WorkspacesApi->updateWorkspaceMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | 
 **memberId** | **String**|  | 
 **updateWorkspaceMemberRequest** | [**UpdateWorkspaceMemberRequest**](UpdateWorkspaceMemberRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

