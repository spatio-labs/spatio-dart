# spatio_sdk.api.MiscApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePinnedPlatform**](MiscApi.md#deletepinnedplatform) | **DELETE** /v1/pinned-platforms/{platformId} | Unpin a platform.
[**getBootstrap**](MiscApi.md#getbootstrap) | **GET** /v1/bootstrap | Single-shot identity + config bundle the renderer hits on first load. Replaces the legacy server-side hydration in app/layout.tsx. 
[**getOnboardingInvitations**](MiscApi.md#getonboardinginvitations) | **GET** /v1/onboarding/invitations | Pending invitations the caller can accept during onboarding.
[**getPinnedPlatforms**](MiscApi.md#getpinnedplatforms) | **GET** /v1/pinned-platforms | Read the caller's pinned-platform list (sidebar order).
[**getPlatformPreferences**](MiscApi.md#getplatformpreferences) | **GET** /v1/platform-preferences | Read the caller's per-platform sidebar/visibility preferences.
[**getPlatformSettingsLegacy**](MiscApi.md#getplatformsettingslegacy) | **GET** /v1/settings/platform | Legacy admin-tier platform settings read endpoint.
[**getThreadsStatus**](MiscApi.md#getthreadsstatus) | **GET** /v1/threads/status | Async-thread / job-runner status snapshot.
[**getUserPermissions**](MiscApi.md#getuserpermissions) | **GET** /v1/user/permissions | Read the caller's effective per-resource permissions.
[**getWorkspaceActivity**](MiscApi.md#getworkspaceactivity) | **GET** /v1/workspace-activity | Recent activity feed for a workspace.
[**getWorkspaceLayout**](MiscApi.md#getworkspacelayout) | **GET** /v1/layout/{workspaceId} | Read the renderer's saved pane layout for a workspace.
[**putPinnedPlatform**](MiscApi.md#putpinnedplatform) | **PUT** /v1/pinned-platforms | Pin a platform.
[**putPlatformPreferences**](MiscApi.md#putplatformpreferences) | **PUT** /v1/platform-preferences | Replace the caller's platform preferences.
[**putWorkspaceLayout**](MiscApi.md#putworkspacelayout) | **PUT** /v1/layout/{workspaceId} | Save the renderer's pane layout.
[**reorderPinnedPlatforms**](MiscApi.md#reorderpinnedplatforms) | **POST** /v1/pinned-platforms/reorder | Reorder the pinned-platform list.
[**resetPlatformPreferences**](MiscApi.md#resetplatformpreferences) | **POST** /v1/platform-preferences/reset | Reset platform preferences to defaults.
[**updateUserProfile**](MiscApi.md#updateuserprofile) | **PATCH** /v1/user/profile | Update the caller's user profile (name, avatar, etc.).
[**validateOrganizationSlug**](MiscApi.md#validateorganizationslug) | **GET** /v1/validate-slug/organization | Check whether an org slug is available.
[**validateWorkspaceSlug**](MiscApi.md#validateworkspaceslug) | **GET** /v1/validate-slug/workspace | Check whether a workspace slug is available.


# **deletePinnedPlatform**
> deletePinnedPlatform(platformId)

Unpin a platform.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();
final platformId = platformId_example; // String | 

try {
    api_instance.deletePinnedPlatform(platformId);
} catch (e) {
    print('Exception when calling MiscApi->deletePinnedPlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platformId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBootstrap**
> Map<String, Object> getBootstrap()

Single-shot identity + config bundle the renderer hits on first load. Replaces the legacy server-side hydration in app/layout.tsx. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();

try {
    final result = api_instance.getBootstrap();
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->getBootstrap: $e\n');
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

# **getOnboardingInvitations**
> Map<String, Object> getOnboardingInvitations()

Pending invitations the caller can accept during onboarding.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();

try {
    final result = api_instance.getOnboardingInvitations();
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->getOnboardingInvitations: $e\n');
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

# **getPinnedPlatforms**
> Map<String, Object> getPinnedPlatforms()

Read the caller's pinned-platform list (sidebar order).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();

try {
    final result = api_instance.getPinnedPlatforms();
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->getPinnedPlatforms: $e\n');
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

# **getPlatformPreferences**
> Map<String, Object> getPlatformPreferences()

Read the caller's per-platform sidebar/visibility preferences.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();

try {
    final result = api_instance.getPlatformPreferences();
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->getPlatformPreferences: $e\n');
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

# **getPlatformSettingsLegacy**
> Map<String, Object> getPlatformSettingsLegacy()

Legacy admin-tier platform settings read endpoint.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();

try {
    final result = api_instance.getPlatformSettingsLegacy();
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->getPlatformSettingsLegacy: $e\n');
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

# **getThreadsStatus**
> Map<String, Object> getThreadsStatus()

Async-thread / job-runner status snapshot.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();

try {
    final result = api_instance.getThreadsStatus();
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->getThreadsStatus: $e\n');
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

# **getUserPermissions**
> Map<String, Object> getUserPermissions()

Read the caller's effective per-resource permissions.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();

try {
    final result = api_instance.getUserPermissions();
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->getUserPermissions: $e\n');
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

# **getWorkspaceActivity**
> Map<String, Object> getWorkspaceActivity(workspaceId, limit)

Recent activity feed for a workspace.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();
final workspaceId = workspaceId_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.getWorkspaceActivity(workspaceId, limit);
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->getWorkspaceActivity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWorkspaceLayout**
> Map<String, Object> getWorkspaceLayout(workspaceId)

Read the renderer's saved pane layout for a workspace.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();
final workspaceId = workspaceId_example; // String | 

try {
    final result = api_instance.getWorkspaceLayout(workspaceId);
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->getWorkspaceLayout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPinnedPlatform**
> putPinnedPlatform(requestBody)

Pin a platform.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    api_instance.putPinnedPlatform(requestBody);
} catch (e) {
    print('Exception when calling MiscApi->putPinnedPlatform: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPlatformPreferences**
> putPlatformPreferences(requestBody)

Replace the caller's platform preferences.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    api_instance.putPlatformPreferences(requestBody);
} catch (e) {
    print('Exception when calling MiscApi->putPlatformPreferences: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putWorkspaceLayout**
> putWorkspaceLayout(workspaceId, requestBody)

Save the renderer's pane layout.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();
final workspaceId = workspaceId_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    api_instance.putWorkspaceLayout(workspaceId, requestBody);
} catch (e) {
    print('Exception when calling MiscApi->putWorkspaceLayout: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reorderPinnedPlatforms**
> reorderPinnedPlatforms(requestBody)

Reorder the pinned-platform list.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    api_instance.reorderPinnedPlatforms(requestBody);
} catch (e) {
    print('Exception when calling MiscApi->reorderPinnedPlatforms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPlatformPreferences**
> resetPlatformPreferences()

Reset platform preferences to defaults.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();

try {
    api_instance.resetPlatformPreferences();
} catch (e) {
    print('Exception when calling MiscApi->resetPlatformPreferences: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserProfile**
> Map<String, Object> updateUserProfile(requestBody)

Update the caller's user profile (name, avatar, etc.).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.updateUserProfile(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->updateUserProfile: $e\n');
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

# **validateOrganizationSlug**
> Map<String, Object> validateOrganizationSlug(slug)

Check whether an org slug is available.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();
final slug = slug_example; // String | 

try {
    final result = api_instance.validateOrganizationSlug(slug);
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->validateOrganizationSlug: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateWorkspaceSlug**
> Map<String, Object> validateWorkspaceSlug(slug, organizationId)

Check whether a workspace slug is available.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MiscApi();
final slug = slug_example; // String | 
final organizationId = organizationId_example; // String | 

try {
    final result = api_instance.validateWorkspaceSlug(slug, organizationId);
    print(result);
} catch (e) {
    print('Exception when calling MiscApi->validateWorkspaceSlug: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **String**|  | [optional] 
 **organizationId** | **String**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

