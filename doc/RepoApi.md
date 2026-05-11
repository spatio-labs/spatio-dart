# spatio_sdk.api.RepoApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRepoBranch**](RepoApi.md#createrepobranch) | **POST** /v1/repos/repositories/{owner}/{repo}/branches | Create a branch (from a base sha).
[**createRepoPullRequest**](RepoApi.md#createrepopullrequest) | **POST** /v1/repos/repositories/{owner}/{repo}/pulls | Open a pull request.
[**createRepoRepository**](RepoApi.md#createreporepository) | **POST** /v1/repos/repositories | Create a repository.
[**getRepoCommit**](RepoApi.md#getrepocommit) | **GET** /v1/repos/repositories/{owner}/{repo}/commits/{sha} | Fetch a single commit.
[**getRepoRepository**](RepoApi.md#getreporepository) | **GET** /v1/repos/repositories/{owner}/{repo} | Fetch a single repository.
[**linkRepoTask**](RepoApi.md#linkrepotask) | **POST** /v1/repos/repositories/{owner}/{repo}/tasks/link | Link an existing Spatio task to this repo, allocating a per-repo number.
[**listRepoBranches**](RepoApi.md#listrepobranches) | **GET** /v1/repos/repositories/{owner}/{repo}/branches | List branches on a repository.
[**listRepoCommits**](RepoApi.md#listrepocommits) | **GET** /v1/repos/repositories/{owner}/{repo}/commits | List commits on a repository.
[**listRepoPullRequests**](RepoApi.md#listrepopullrequests) | **GET** /v1/repos/repositories/{owner}/{repo}/pulls | List pull requests on a repository.
[**listRepoRepositories**](RepoApi.md#listreporepositories) | **GET** /v1/repos/repositories | List the caller's accessible repositories.
[**listRepoTasks**](RepoApi.md#listrepotasks) | **GET** /v1/repos/repositories/{owner}/{repo}/tasks | List tasks linked to this repo (the \"issues\" surface).
[**listRepoWorkflows**](RepoApi.md#listrepoworkflows) | **GET** /v1/repos/repositories/{owner}/{repo}/workflows | List CI workflows.
[**mergeRepoPullRequest**](RepoApi.md#mergerepopullrequest) | **POST** /v1/repos/repositories/{owner}/{repo}/pulls/{number}/merge | Merge a pull request.
[**triggerRepoWorkflow**](RepoApi.md#triggerrepoworkflow) | **POST** /v1/repos/repositories/{owner}/{repo}/workflows/{id}/trigger | Trigger a workflow_dispatch run.
[**workspaceCreateRepoBranch**](RepoApi.md#workspacecreaterepobranch) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/branches | 
[**workspaceCreateRepoPullRequest**](RepoApi.md#workspacecreaterepopullrequest) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls | 
[**workspaceCreateRepoRepository**](RepoApi.md#workspacecreatereporepository) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories | 
[**workspaceGetRepoCommit**](RepoApi.md#workspacegetrepocommit) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/commits/{sha} | 
[**workspaceGetRepoRepository**](RepoApi.md#workspacegetreporepository) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo} | 
[**workspaceLinkRepoTask**](RepoApi.md#workspacelinkrepotask) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/tasks/link | 
[**workspaceListRepoBranches**](RepoApi.md#workspacelistrepobranches) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/branches | 
[**workspaceListRepoCommits**](RepoApi.md#workspacelistrepocommits) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/commits | 
[**workspaceListRepoPullRequests**](RepoApi.md#workspacelistrepopullrequests) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls | 
[**workspaceListRepoRepositories**](RepoApi.md#workspacelistreporepositories) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories | 
[**workspaceListRepoTasks**](RepoApi.md#workspacelistrepotasks) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/tasks | 
[**workspaceListRepoWorkflows**](RepoApi.md#workspacelistrepoworkflows) | **GET** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/workflows | 
[**workspaceMergeRepoPullRequest**](RepoApi.md#workspacemergerepopullrequest) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls/{number}/merge | 
[**workspaceTriggerRepoWorkflow**](RepoApi.md#workspacetriggerrepoworkflow) | **POST** /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/workflows/{id}/trigger | 


# **createRepoBranch**
> Map<String, Object> createRepoBranch(owner, repo, requestBody)

Create a branch (from a base sha).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.createRepoBranch(owner, repo, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->createRepoBranch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRepoPullRequest**
> Map<String, Object> createRepoPullRequest(owner, repo, requestBody)

Open a pull request.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.createRepoPullRequest(owner, repo, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->createRepoPullRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRepoRepository**
> Map<String, Object> createRepoRepository(requestBody)

Create a repository.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.createRepoRepository(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->createRepoRepository: $e\n');
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

# **getRepoCommit**
> Map<String, Object> getRepoCommit(owner, repo, sha)

Fetch a single commit.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final sha = sha_example; // String | 

try {
    final result = api_instance.getRepoCommit(owner, repo, sha);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->getRepoCommit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **sha** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRepoRepository**
> Map<String, Object> getRepoRepository(owner, repo)

Fetch a single repository.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 

try {
    final result = api_instance.getRepoRepository(owner, repo);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->getRepoRepository: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **linkRepoTask**
> Map<String, Object> linkRepoTask(owner, repo, linkRepoTaskRequest)

Link an existing Spatio task to this repo, allocating a per-repo number.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final linkRepoTaskRequest = LinkRepoTaskRequest(); // LinkRepoTaskRequest | 

try {
    final result = api_instance.linkRepoTask(owner, repo, linkRepoTaskRequest);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->linkRepoTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **linkRepoTaskRequest** | [**LinkRepoTaskRequest**](LinkRepoTaskRequest.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoBranches**
> Map<String, Object> listRepoBranches(owner, repo)

List branches on a repository.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 

try {
    final result = api_instance.listRepoBranches(owner, repo);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->listRepoBranches: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoCommits**
> Map<String, Object> listRepoCommits(owner, repo, branch, limit)

List commits on a repository.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final branch = branch_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.listRepoCommits(owner, repo, branch, limit);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->listRepoCommits: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **branch** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoPullRequests**
> Map<String, Object> listRepoPullRequests(owner, repo)

List pull requests on a repository.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 

try {
    final result = api_instance.listRepoPullRequests(owner, repo);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->listRepoPullRequests: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoRepositories**
> Map<String, Object> listRepoRepositories(visibility, limit)

List the caller's accessible repositories.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final visibility = visibility_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.listRepoRepositories(visibility, limit);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->listRepoRepositories: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **visibility** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoTasks**
> Map<String, Object> listRepoTasks(owner, repo, state, perPage, page)

List tasks linked to this repo (the \"issues\" surface).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final state = state_example; // String | 
final perPage = 56; // int | 
final page = 56; // int | 

try {
    final result = api_instance.listRepoTasks(owner, repo, state, perPage, page);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->listRepoTasks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **state** | **String**|  | [optional] 
 **perPage** | **int**|  | [optional] 
 **page** | **int**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRepoWorkflows**
> Map<String, Object> listRepoWorkflows(owner, repo)

List CI workflows.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 

try {
    final result = api_instance.listRepoWorkflows(owner, repo);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->listRepoWorkflows: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeRepoPullRequest**
> Map<String, Object> mergeRepoPullRequest(owner, repo, number, requestBody)

Merge a pull request.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final number = 56; // int | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.mergeRepoPullRequest(owner, repo, number, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->mergeRepoPullRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **number** | **int**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **triggerRepoWorkflow**
> Map<String, Object> triggerRepoWorkflow(owner, repo, id, requestBody)

Trigger a workflow_dispatch run.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.triggerRepoWorkflow(owner, repo, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->triggerRepoWorkflow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **id** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateRepoBranch**
> Map<String, Object> workspaceCreateRepoBranch(org, workspace, owner, repo, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreateRepoBranch(org, workspace, owner, repo, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceCreateRepoBranch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateRepoPullRequest**
> Map<String, Object> workspaceCreateRepoPullRequest(org, workspace, owner, repo, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreateRepoPullRequest(org, workspace, owner, repo, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceCreateRepoPullRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateRepoRepository**
> Map<String, Object> workspaceCreateRepoRepository(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreateRepoRepository(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceCreateRepoRepository: $e\n');
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

# **workspaceGetRepoCommit**
> Map<String, Object> workspaceGetRepoCommit(org, workspace, owner, repo, sha)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final sha = sha_example; // String | 

try {
    final result = api_instance.workspaceGetRepoCommit(org, workspace, owner, repo, sha);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceGetRepoCommit: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **sha** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetRepoRepository**
> Map<String, Object> workspaceGetRepoRepository(org, workspace, owner, repo)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 

try {
    final result = api_instance.workspaceGetRepoRepository(org, workspace, owner, repo);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceGetRepoRepository: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceLinkRepoTask**
> Map<String, Object> workspaceLinkRepoTask(org, workspace, owner, repo, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceLinkRepoTask(org, workspace, owner, repo, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceLinkRepoTask: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListRepoBranches**
> Map<String, Object> workspaceListRepoBranches(org, workspace, owner, repo)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 

try {
    final result = api_instance.workspaceListRepoBranches(org, workspace, owner, repo);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceListRepoBranches: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListRepoCommits**
> Map<String, Object> workspaceListRepoCommits(org, workspace, owner, repo)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 

try {
    final result = api_instance.workspaceListRepoCommits(org, workspace, owner, repo);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceListRepoCommits: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListRepoPullRequests**
> Map<String, Object> workspaceListRepoPullRequests(org, workspace, owner, repo)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 

try {
    final result = api_instance.workspaceListRepoPullRequests(org, workspace, owner, repo);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceListRepoPullRequests: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListRepoRepositories**
> Map<String, Object> workspaceListRepoRepositories(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListRepoRepositories(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceListRepoRepositories: $e\n');
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

# **workspaceListRepoTasks**
> Map<String, Object> workspaceListRepoTasks(org, workspace, owner, repo)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 

try {
    final result = api_instance.workspaceListRepoTasks(org, workspace, owner, repo);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceListRepoTasks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListRepoWorkflows**
> Map<String, Object> workspaceListRepoWorkflows(org, workspace, owner, repo)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 

try {
    final result = api_instance.workspaceListRepoWorkflows(org, workspace, owner, repo);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceListRepoWorkflows: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceMergeRepoPullRequest**
> Map<String, Object> workspaceMergeRepoPullRequest(org, workspace, owner, repo, number, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final number = 56; // int | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceMergeRepoPullRequest(org, workspace, owner, repo, number, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceMergeRepoPullRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **number** | **int**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceTriggerRepoWorkflow**
> Map<String, Object> workspaceTriggerRepoWorkflow(org, workspace, owner, repo, id, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RepoApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final owner = owner_example; // String | 
final repo = repo_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceTriggerRepoWorkflow(org, workspace, owner, repo, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling RepoApi->workspaceTriggerRepoWorkflow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **owner** | **String**|  | 
 **repo** | **String**|  | 
 **id** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

