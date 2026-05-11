# spatio_sdk.api.OrganizationsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acceptOrganizationInvitation**](OrganizationsApi.md#acceptorganizationinvitation) | **POST** /v1/organizations/{org}/accept-invitation | Accept an invitation to this organization.
[**addOrganizationMember**](OrganizationsApi.md#addorganizationmember) | **POST** /v1/organizations/{org}/members | Add a member directly (skips invitation flow).
[**createOrganization**](OrganizationsApi.md#createorganization) | **POST** /v1/organizations | Create an organization.
[**createOrganizationConcept**](OrganizationsApi.md#createorganizationconcept) | **POST** /v1/organizations/{org}/concepts | Create an org-brain concept (admin+ only).
[**createOrganizationCustomRole**](OrganizationsApi.md#createorganizationcustomrole) | **POST** /v1/organizations/{org}/roles | Create a custom role (admin+ only).
[**createOrganizationInvitation**](OrganizationsApi.md#createorganizationinvitation) | **POST** /v1/organizations/{org}/invitations | Invite a user to the organization.
[**createOrganizationWorkspace**](OrganizationsApi.md#createorganizationworkspace) | **POST** /v1/organizations/{org}/workspaces | Create a workspace inside an organization.
[**deleteOrganization**](OrganizationsApi.md#deleteorganization) | **DELETE** /v1/organizations/{org} | Delete an organization.
[**deleteOrganizationConcept**](OrganizationsApi.md#deleteorganizationconcept) | **DELETE** /v1/organizations/{org}/concepts/{slug} | Delete a concept (admin+ only).
[**deleteOrganizationCustomRole**](OrganizationsApi.md#deleteorganizationcustomrole) | **DELETE** /v1/organizations/{org}/roles/{roleId} | Delete a custom role (admin+ only).
[**deleteOrganizationLogo**](OrganizationsApi.md#deleteorganizationlogo) | **DELETE** /v1/organizations/{org}/logo | Delete the organization logo.
[**getOrganization**](OrganizationsApi.md#getorganization) | **GET** /v1/organizations/{org} | Fetch a single organization.
[**getOrganizationConcept**](OrganizationsApi.md#getorganizationconcept) | **GET** /v1/organizations/{org}/concepts/{slug} | Fetch a concept.
[**listMyOrganizations**](OrganizationsApi.md#listmyorganizations) | **GET** /v1/organizations | List the caller's organizations.
[**listOrganizationAuditLog**](OrganizationsApi.md#listorganizationauditlog) | **GET** /v1/organizations/{org}/audit-log | Read the organization audit log (admin / billing-admin only).
[**listOrganizationConcepts**](OrganizationsApi.md#listorganizationconcepts) | **GET** /v1/organizations/{org}/concepts | List org-brain concepts (curated knowledge surfaced to agents).
[**listOrganizationCustomRoles**](OrganizationsApi.md#listorganizationcustomroles) | **GET** /v1/organizations/{org}/roles | List custom roles defined on the organization.
[**listOrganizationInvitations**](OrganizationsApi.md#listorganizationinvitations) | **GET** /v1/organizations/{org}/invitations | List pending invitations for an organization.
[**listOrganizationMembers**](OrganizationsApi.md#listorganizationmembers) | **GET** /v1/organizations/{org}/members | List members of an organization.
[**listOrganizationWorkspaces**](OrganizationsApi.md#listorganizationworkspaces) | **GET** /v1/organizations/{org}/workspaces | List workspaces in an organization.
[**removeOrganizationMember**](OrganizationsApi.md#removeorganizationmember) | **DELETE** /v1/organizations/{org}/members/{memberId} | Remove a member from the organization.
[**resendOrganizationInvitation**](OrganizationsApi.md#resendorganizationinvitation) | **POST** /v1/organizations/{org}/invitations/{invitationId}/resend | Revoke and reissue an invitation with a fresh token.
[**revokeOrganizationInvitation**](OrganizationsApi.md#revokeorganizationinvitation) | **DELETE** /v1/organizations/{org}/invitations/{invitationId} | Revoke a pending invitation.
[**updateOrganization**](OrganizationsApi.md#updateorganization) | **PATCH** /v1/organizations/{org} | Update organization metadata.
[**updateOrganizationConcept**](OrganizationsApi.md#updateorganizationconcept) | **PATCH** /v1/organizations/{org}/concepts/{slug} | Update a concept (admin+ only).
[**updateOrganizationCustomRole**](OrganizationsApi.md#updateorganizationcustomrole) | **PATCH** /v1/organizations/{org}/roles/{roleId} | Update a custom role (admin+ only).
[**updateOrganizationMember**](OrganizationsApi.md#updateorganizationmember) | **PATCH** /v1/organizations/{org}/members/{memberId} | Update a member's role.
[**uploadOrganizationLogo**](OrganizationsApi.md#uploadorganizationlogo) | **POST** /v1/organizations/{org}/logo | Upload (or replace) the organization logo. Multipart.


# **acceptOrganizationInvitation**
> Map<String, Object> acceptOrganizationInvitation(org, acceptOrganizationInvitationRequest)

Accept an invitation to this organization.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final acceptOrganizationInvitationRequest = AcceptOrganizationInvitationRequest(); // AcceptOrganizationInvitationRequest | 

try {
    final result = api_instance.acceptOrganizationInvitation(org, acceptOrganizationInvitationRequest);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->acceptOrganizationInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **acceptOrganizationInvitationRequest** | [**AcceptOrganizationInvitationRequest**](AcceptOrganizationInvitationRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addOrganizationMember**
> Map<String, Object> addOrganizationMember(org, addOrganizationMemberRequest)

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

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final addOrganizationMemberRequest = AddOrganizationMemberRequest(); // AddOrganizationMemberRequest | 

try {
    final result = api_instance.addOrganizationMember(org, addOrganizationMemberRequest);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->addOrganizationMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **addOrganizationMemberRequest** | [**AddOrganizationMemberRequest**](AddOrganizationMemberRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganization**
> Map<String, Object> createOrganization(createOrganizationRequest)

Create an organization.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final createOrganizationRequest = CreateOrganizationRequest(); // CreateOrganizationRequest | 

try {
    final result = api_instance.createOrganization(createOrganizationRequest);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->createOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createOrganizationRequest** | [**CreateOrganizationRequest**](CreateOrganizationRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganizationConcept**
> Map<String, Object> createOrganizationConcept(org, requestBody)

Create an org-brain concept (admin+ only).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.createOrganizationConcept(org, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->createOrganizationConcept: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganizationCustomRole**
> Map<String, Object> createOrganizationCustomRole(org, requestBody)

Create a custom role (admin+ only).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.createOrganizationCustomRole(org, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->createOrganizationCustomRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganizationInvitation**
> OrganizationInvitation createOrganizationInvitation(org, createOrganizationInvitationRequest)

Invite a user to the organization.

Pending invitations count toward seat cap. Free-tier callers at the cap receive a `402` with billing-upgrade payload; paid-tier auto-scales the Stripe quantity. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final createOrganizationInvitationRequest = CreateOrganizationInvitationRequest(); // CreateOrganizationInvitationRequest | 

try {
    final result = api_instance.createOrganizationInvitation(org, createOrganizationInvitationRequest);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->createOrganizationInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **createOrganizationInvitationRequest** | [**CreateOrganizationInvitationRequest**](CreateOrganizationInvitationRequest.md)|  | 

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrganizationWorkspace**
> WorkspaceEnvelope createOrganizationWorkspace(org, createWorkspaceRequest)

Create a workspace inside an organization.

Requires the `OrgActionCreateWorkspace` action permission. Slug collisions auto-suffix (`-2`, `-3`, ...). 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final createWorkspaceRequest = CreateWorkspaceRequest(); // CreateWorkspaceRequest | 

try {
    final result = api_instance.createOrganizationWorkspace(org, createWorkspaceRequest);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->createOrganizationWorkspace: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **createWorkspaceRequest** | [**CreateWorkspaceRequest**](CreateWorkspaceRequest.md)|  | 

### Return type

[**WorkspaceEnvelope**](WorkspaceEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganization**
> deleteOrganization(org)

Delete an organization.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | Organization id or slug.

try {
    api_instance.deleteOrganization(org);
} catch (e) {
    print('Exception when calling OrganizationsApi->deleteOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**| Organization id or slug. | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganizationConcept**
> deleteOrganizationConcept(org, slug)

Delete a concept (admin+ only).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final slug = slug_example; // String | 

try {
    api_instance.deleteOrganizationConcept(org, slug);
} catch (e) {
    print('Exception when calling OrganizationsApi->deleteOrganizationConcept: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **slug** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganizationCustomRole**
> deleteOrganizationCustomRole(org, roleId)

Delete a custom role (admin+ only).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final roleId = roleId_example; // String | 

try {
    api_instance.deleteOrganizationCustomRole(org, roleId);
} catch (e) {
    print('Exception when calling OrganizationsApi->deleteOrganizationCustomRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **roleId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganizationLogo**
> deleteOrganizationLogo(org)

Delete the organization logo.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 

try {
    api_instance.deleteOrganizationLogo(org);
} catch (e) {
    print('Exception when calling OrganizationsApi->deleteOrganizationLogo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganization**
> OrganizationDetailLegacy getOrganization(org)

Fetch a single organization.

**Wire format note:** response uses PascalCase keys (`ID`, `Name`, `Slug`, ...) — distinct from the rest of the SpatioAPI's camelCase convention. Documented as-is; a future cleanup will harmonize. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | Organization id or slug.

try {
    final result = api_instance.getOrganization(org);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->getOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**| Organization id or slug. | 

### Return type

[**OrganizationDetailLegacy**](OrganizationDetailLegacy.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganizationConcept**
> Map<String, Object> getOrganizationConcept(org, slug)

Fetch a concept.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final slug = slug_example; // String | 

try {
    final result = api_instance.getOrganizationConcept(org, slug);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->getOrganizationConcept: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **slug** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMyOrganizations**
> OrganizationListResponse listMyOrganizations()

List the caller's organizations.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();

try {
    final result = api_instance.listMyOrganizations();
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listMyOrganizations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrganizationListResponse**](OrganizationListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationAuditLog**
> Map<String, Object> listOrganizationAuditLog(org, limit, cursor)

Read the organization audit log (admin / billing-admin only).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final limit = 56; // int | 
final cursor = cursor_example; // String | 

try {
    final result = api_instance.listOrganizationAuditLog(org, limit, cursor);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listOrganizationAuditLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **limit** | **int**|  | [optional] 
 **cursor** | **String**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationConcepts**
> Map<String, Object> listOrganizationConcepts(org)

List org-brain concepts (curated knowledge surfaced to agents).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 

try {
    final result = api_instance.listOrganizationConcepts(org);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listOrganizationConcepts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationCustomRoles**
> Map<String, Object> listOrganizationCustomRoles(org)

List custom roles defined on the organization.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 

try {
    final result = api_instance.listOrganizationCustomRoles(org);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listOrganizationCustomRoles: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationInvitations**
> OrganizationInvitationListResponse listOrganizationInvitations(org)

List pending invitations for an organization.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 

try {
    final result = api_instance.listOrganizationInvitations(org);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listOrganizationInvitations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**OrganizationInvitationListResponse**](OrganizationInvitationListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationMembers**
> OrganizationMemberListResponse listOrganizationMembers(org)

List members of an organization.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 

try {
    final result = api_instance.listOrganizationMembers(org);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listOrganizationMembers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**OrganizationMemberListResponse**](OrganizationMemberListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationWorkspaces**
> WorkspaceListResponse listOrganizationWorkspaces(org)

List workspaces in an organization.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 

try {
    final result = api_instance.listOrganizationWorkspaces(org);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->listOrganizationWorkspaces: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 

### Return type

[**WorkspaceListResponse**](WorkspaceListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeOrganizationMember**
> removeOrganizationMember(org, memberId)

Remove a member from the organization.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final memberId = memberId_example; // String | 

try {
    api_instance.removeOrganizationMember(org, memberId);
} catch (e) {
    print('Exception when calling OrganizationsApi->removeOrganizationMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **memberId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resendOrganizationInvitation**
> OrganizationInvitation resendOrganizationInvitation(org, invitationId)

Revoke and reissue an invitation with a fresh token.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final invitationId = invitationId_example; // String | 

try {
    final result = api_instance.resendOrganizationInvitation(org, invitationId);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->resendOrganizationInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **invitationId** | **String**|  | 

### Return type

[**OrganizationInvitation**](OrganizationInvitation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeOrganizationInvitation**
> revokeOrganizationInvitation(org, invitationId)

Revoke a pending invitation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final invitationId = invitationId_example; // String | 

try {
    api_instance.revokeOrganizationInvitation(org, invitationId);
} catch (e) {
    print('Exception when calling OrganizationsApi->revokeOrganizationInvitation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **invitationId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganization**
> Map<String, Object> updateOrganization(org, updateOrganizationRequest)

Update organization metadata.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | Organization id or slug.
final updateOrganizationRequest = UpdateOrganizationRequest(); // UpdateOrganizationRequest | 

try {
    final result = api_instance.updateOrganization(org, updateOrganizationRequest);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->updateOrganization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**| Organization id or slug. | 
 **updateOrganizationRequest** | [**UpdateOrganizationRequest**](UpdateOrganizationRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganizationConcept**
> Map<String, Object> updateOrganizationConcept(org, slug, requestBody)

Update a concept (admin+ only).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final slug = slug_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.updateOrganizationConcept(org, slug, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->updateOrganizationConcept: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **slug** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganizationCustomRole**
> Map<String, Object> updateOrganizationCustomRole(org, roleId, requestBody)

Update a custom role (admin+ only).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final roleId = roleId_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.updateOrganizationCustomRole(org, roleId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->updateOrganizationCustomRole: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **roleId** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateOrganizationMember**
> Map<String, Object> updateOrganizationMember(org, memberId, updateOrganizationMemberRequest)

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

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final memberId = memberId_example; // String | 
final updateOrganizationMemberRequest = UpdateOrganizationMemberRequest(); // UpdateOrganizationMemberRequest | 

try {
    final result = api_instance.updateOrganizationMember(org, memberId, updateOrganizationMemberRequest);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->updateOrganizationMember: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **memberId** | **String**|  | 
 **updateOrganizationMemberRequest** | [**UpdateOrganizationMemberRequest**](UpdateOrganizationMemberRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadOrganizationLogo**
> Map<String, Object> uploadOrganizationLogo(org, file)

Upload (or replace) the organization logo. Multipart.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OrganizationsApi();
final org = org_example; // String | 
final file = BINARY_DATA_HERE; // MultipartFile | 

try {
    final result = api_instance.uploadOrganizationLogo(org, file);
    print(result);
} catch (e) {
    print('Exception when calling OrganizationsApi->uploadOrganizationLogo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **file** | **MultipartFile**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

