# spatio_sdk.api.ChannelsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createChannel**](ChannelsApi.md#createchannel) | **POST** /v1/channels | Create a channel.
[**executeChannelAction**](ChannelsApi.md#executechannelaction) | **POST** /v1/channels/execute | Dispatch a channel action by id.
[**joinChannel**](ChannelsApi.md#joinchannel) | **POST** /v1/channels/{id}/join | Join a channel.
[**leaveChannel**](ChannelsApi.md#leavechannel) | **POST** /v1/channels/{id}/leave | Leave a channel.
[**listChannelActions**](ChannelsApi.md#listchannelactions) | **GET** /v1/channels/actions | Discover the action catalog for the Channels platform.
[**listChannelMessages**](ChannelsApi.md#listchannelmessages) | **GET** /v1/channels/messages | List messages in a channel.
[**listChannels**](ChannelsApi.md#listchannels) | **GET** /v1/channels | List group channels across connected chat providers.
[**sendChannelMessage**](ChannelsApi.md#sendchannelmessage) | **POST** /v1/channels/messages | Send a message to a channel.
[**workspaceCreateChannel**](ChannelsApi.md#workspacecreatechannel) | **POST** /v1/organizations/{org}/workspaces/{workspace}/channels | 
[**workspaceExecuteChannelAction**](ChannelsApi.md#workspaceexecutechannelaction) | **POST** /v1/organizations/{org}/workspaces/{workspace}/channels/execute | 
[**workspaceJoinChannel**](ChannelsApi.md#workspacejoinchannel) | **POST** /v1/organizations/{org}/workspaces/{workspace}/channels/{id}/join | 
[**workspaceLeaveChannel**](ChannelsApi.md#workspaceleavechannel) | **POST** /v1/organizations/{org}/workspaces/{workspace}/channels/{id}/leave | 
[**workspaceListChannelActions**](ChannelsApi.md#workspacelistchannelactions) | **GET** /v1/organizations/{org}/workspaces/{workspace}/channels/actions | 
[**workspaceListChannelMessages**](ChannelsApi.md#workspacelistchannelmessages) | **GET** /v1/organizations/{org}/workspaces/{workspace}/channels/messages | 
[**workspaceListChannels**](ChannelsApi.md#workspacelistchannels) | **GET** /v1/organizations/{org}/workspaces/{workspace}/channels | 
[**workspaceSendChannelMessage**](ChannelsApi.md#workspacesendchannelmessage) | **POST** /v1/organizations/{org}/workspaces/{workspace}/channels/messages | 


# **createChannel**
> CreateChannelResponse createChannel(createChannelRequest)

Create a channel.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final createChannelRequest = CreateChannelRequest(); // CreateChannelRequest | 

try {
    final result = api_instance.createChannel(createChannelRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->createChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createChannelRequest** | [**CreateChannelRequest**](CreateChannelRequest.md)|  | 

### Return type

[**CreateChannelResponse**](CreateChannelResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeChannelAction**
> ExecuteChatActionResponse executeChannelAction(executeChatActionRequest)

Dispatch a channel action by id.

Generic action-execution endpoint. `params` shape varies per `action_id`; consult `GET /v1/channels/actions` for the per-id contract. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final executeChatActionRequest = ExecuteChatActionRequest(); // ExecuteChatActionRequest | 

try {
    final result = api_instance.executeChannelAction(executeChatActionRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->executeChannelAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **executeChatActionRequest** | [**ExecuteChatActionRequest**](ExecuteChatActionRequest.md)|  | 

### Return type

[**ExecuteChatActionResponse**](ExecuteChatActionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **joinChannel**
> SuccessFlag joinChannel(id, channelMembershipRequest)

Join a channel.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final id = id_example; // String | Channel id (provider-scoped).
final channelMembershipRequest = ChannelMembershipRequest(); // ChannelMembershipRequest | 

try {
    final result = api_instance.joinChannel(id, channelMembershipRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->joinChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Channel id (provider-scoped). | 
 **channelMembershipRequest** | [**ChannelMembershipRequest**](ChannelMembershipRequest.md)|  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **leaveChannel**
> SuccessFlag leaveChannel(id, channelMembershipRequest)

Leave a channel.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final id = id_example; // String | Channel id (provider-scoped).
final channelMembershipRequest = ChannelMembershipRequest(); // ChannelMembershipRequest | 

try {
    final result = api_instance.leaveChannel(id, channelMembershipRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->leaveChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Channel id (provider-scoped). | 
 **channelMembershipRequest** | [**ChannelMembershipRequest**](ChannelMembershipRequest.md)|  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listChannelActions**
> ChatActionsList listChannelActions()

Discover the action catalog for the Channels platform.

Returns the action descriptors the agent layer dispatches via `POST /v1/channels/execute`. Same pattern as the DirectMessages action surface. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();

try {
    final result = api_instance.listChannelActions();
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->listChannelActions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ChatActionsList**](ChatActionsList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listChannelMessages**
> ListMessagesResponse listChannelMessages(channel, accountId, accountIds, providers, xWorkspaceID, limit, cursor, oldestFirst)

List messages in a channel.

Channel ids are provider-scoped; pass `?accountId=` (preferred) or `?accountIds=` to disambiguate when the same id exists on multiple connected accounts (rare). 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final channel = channel_example; // String | Channel id.
final accountId = accountId_example; // String | 
final accountIds = []; // List<String> | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
final providers = []; // List<String> | Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final limit = 56; // int | 
final cursor = cursor_example; // String | 
final oldestFirst = true; // bool | 

try {
    final result = api_instance.listChannelMessages(channel, accountId, accountIds, providers, xWorkspaceID, limit, cursor, oldestFirst);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->listChannelMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel** | **String**| Channel id. | 
 **accountId** | **String**|  | [optional] 
 **accountIds** | [**List<String>**](String.md)| Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  | [optional] [default to const []]
 **providers** | [**List<String>**](String.md)| Repeatable. Restrict to these provider ids (`gmail`, `outlook`). | [optional] [default to const []]
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **limit** | **int**|  | [optional] 
 **cursor** | **String**|  | [optional] 
 **oldestFirst** | **bool**|  | [optional] [default to false]

### Return type

[**ListMessagesResponse**](ListMessagesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listChannels**
> ListChannelsResponse listChannels(accountIds, providers, xWorkspaceID, limit, cursor, includeArchived, types)

List group channels across connected chat providers.

Fan-out list. The Channels surface filters to channel-type conversations only (`type: channel | private`); for direct messages use `/v1/direct-messages`. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final accountIds = []; // List<String> | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
final providers = []; // List<String> | Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final limit = 56; // int | 
final cursor = cursor_example; // String | Provider-specific pagination cursor.
final includeArchived = true; // bool | 
final types = []; // List<String> | Repeatable filter on `Channel.type`. Defaults applied by the platform exclude DMs; passing this overrides. 

try {
    final result = api_instance.listChannels(accountIds, providers, xWorkspaceID, limit, cursor, includeArchived, types);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->listChannels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountIds** | [**List<String>**](String.md)| Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  | [optional] [default to const []]
 **providers** | [**List<String>**](String.md)| Repeatable. Restrict to these provider ids (`gmail`, `outlook`). | [optional] [default to const []]
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **limit** | **int**|  | [optional] 
 **cursor** | **String**| Provider-specific pagination cursor. | [optional] 
 **includeArchived** | **bool**|  | [optional] [default to false]
 **types** | [**List<String>**](String.md)| Repeatable filter on `Channel.type`. Defaults applied by the platform exclude DMs; passing this overrides.  | [optional] [default to const []]

### Return type

[**ListChannelsResponse**](ListChannelsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendChannelMessage**
> SendChatMessageResponse sendChannelMessage(sendChatMessageRequest)

Send a message to a channel.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final sendChatMessageRequest = SendChatMessageRequest(); // SendChatMessageRequest | 

try {
    final result = api_instance.sendChannelMessage(sendChatMessageRequest);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->sendChannelMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendChatMessageRequest** | [**SendChatMessageRequest**](SendChatMessageRequest.md)|  | 

### Return type

[**SendChatMessageResponse**](SendChatMessageResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateChannel**
> Map<String, Object> workspaceCreateChannel(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreateChannel(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->workspaceCreateChannel: $e\n');
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

# **workspaceExecuteChannelAction**
> Map<String, Object> workspaceExecuteChannelAction(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceExecuteChannelAction(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->workspaceExecuteChannelAction: $e\n');
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

# **workspaceJoinChannel**
> workspaceJoinChannel(org, workspace, id, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    api_instance.workspaceJoinChannel(org, workspace, id, requestBody);
} catch (e) {
    print('Exception when calling ChannelsApi->workspaceJoinChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceLeaveChannel**
> workspaceLeaveChannel(org, workspace, id, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    api_instance.workspaceLeaveChannel(org, workspace, id, requestBody);
} catch (e) {
    print('Exception when calling ChannelsApi->workspaceLeaveChannel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListChannelActions**
> Map<String, Object> workspaceListChannelActions(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListChannelActions(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->workspaceListChannelActions: $e\n');
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

# **workspaceListChannelMessages**
> Map<String, Object> workspaceListChannelMessages(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListChannelMessages(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->workspaceListChannelMessages: $e\n');
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

# **workspaceListChannels**
> Map<String, Object> workspaceListChannels(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListChannels(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->workspaceListChannels: $e\n');
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

# **workspaceSendChannelMessage**
> Map<String, Object> workspaceSendChannelMessage(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChannelsApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceSendChannelMessage(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling ChannelsApi->workspaceSendChannelMessage: $e\n');
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

