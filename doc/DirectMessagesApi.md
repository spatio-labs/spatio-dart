# spatio_sdk.api.DirectMessagesApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDMReaction**](DirectMessagesApi.md#adddmreaction) | **POST** /v1/direct-messages/messages/{messageId}/reactions | React to a DM message.
[**attachToDMMessage**](DirectMessagesApi.md#attachtodmmessage) | **POST** /v1/direct-messages/messages/{messageId}/attachments | Attach a file/image/etc. to an existing DM message.
[**executeDMAction**](DirectMessagesApi.md#executedmaction) | **POST** /v1/direct-messages/execute | Dispatch a DM action by id.
[**forwardDMMessage**](DirectMessagesApi.md#forwarddmmessage) | **POST** /v1/direct-messages/messages/{messageId}/forward | Forward a DM message to another DM or channel.
[**getDMUser**](DirectMessagesApi.md#getdmuser) | **GET** /v1/direct-messages/users/{id} | Fetch one chat user.
[**listDMActions**](DirectMessagesApi.md#listdmactions) | **GET** /v1/direct-messages/actions | Discover the action catalog for DirectMessages.
[**listDMPinnedMessages**](DirectMessagesApi.md#listdmpinnedmessages) | **GET** /v1/direct-messages/{dmId}/pinned | List pinned messages in a DM conversation.
[**listDMThreadReplies**](DirectMessagesApi.md#listdmthreadreplies) | **GET** /v1/direct-messages/{dmId}/messages/{messageId}/replies | List replies in a DM message thread.
[**listDMUsers**](DirectMessagesApi.md#listdmusers) | **GET** /v1/direct-messages/users | List chat users (DM contacts) across connected accounts.
[**listDirectConversationsEnriched**](DirectMessagesApi.md#listdirectconversationsenriched) | **GET** /v1/direct-messages/conversations | Enriched DM conversation list with unread + pin + draft state.
[**listDirectMessageConversations**](DirectMessagesApi.md#listdirectmessageconversations) | **GET** /v1/direct-messages | List 1:1 and group DM conversations.
[**listDirectMessages**](DirectMessagesApi.md#listdirectmessages) | **GET** /v1/direct-messages/messages | List messages in a DM conversation.
[**markDMRead**](DirectMessagesApi.md#markdmread) | **POST** /v1/direct-messages/{dmId}/read | Mark a DM message read.
[**muteDM**](DirectMessagesApi.md#mutedm) | **POST** /v1/direct-messages/{dmId}/mute | Mute a DM conversation (until a time, or forever).
[**pinDMConversation**](DirectMessagesApi.md#pindmconversation) | **POST** /v1/direct-messages/{dmId}/pin | Pin a DM conversation to the top of the sidebar.
[**pinDMMessage**](DirectMessagesApi.md#pindmmessage) | **POST** /v1/direct-messages/messages/{messageId}/pin | Pin a DM message.
[**postDMThreadReply**](DirectMessagesApi.md#postdmthreadreply) | **POST** /v1/direct-messages/{dmId}/messages/{messageId}/replies | Reply in a DM message thread.
[**removeDMReaction**](DirectMessagesApi.md#removedmreaction) | **DELETE** /v1/direct-messages/messages/{messageId}/reactions/{emoji} | Remove a DM message reaction.
[**searchDirectMessages**](DirectMessagesApi.md#searchdirectmessages) | **GET** /v1/direct-messages/search | Search across DM messages.
[**sendDirectMessage**](DirectMessagesApi.md#senddirectmessage) | **POST** /v1/direct-messages/messages | Send a DM.
[**setDMDraft**](DirectMessagesApi.md#setdmdraft) | **PUT** /v1/direct-messages/{dmId}/draft | Save the unsent draft text for a DM.
[**unpinDMConversation**](DirectMessagesApi.md#unpindmconversation) | **DELETE** /v1/direct-messages/{dmId}/pin | Unpin a DM conversation.
[**unpinDMMessage**](DirectMessagesApi.md#unpindmmessage) | **DELETE** /v1/direct-messages/messages/{messageId}/pin | Unpin a DM message.
[**workspaceExecuteDMAction**](DirectMessagesApi.md#workspaceexecutedmaction) | **POST** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/execute | 
[**workspaceGetDMUser**](DirectMessagesApi.md#workspacegetdmuser) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/users/{id} | 
[**workspaceListDMActions**](DirectMessagesApi.md#workspacelistdmactions) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/actions | 
[**workspaceListDMConversations**](DirectMessagesApi.md#workspacelistdmconversations) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/conversations | 
[**workspaceListDMMessages**](DirectMessagesApi.md#workspacelistdmmessages) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/messages | 
[**workspaceListDMUsers**](DirectMessagesApi.md#workspacelistdmusers) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/users | 
[**workspaceListDirectMessages**](DirectMessagesApi.md#workspacelistdirectmessages) | **GET** /v1/organizations/{org}/workspaces/{workspace}/direct-messages | 
[**workspaceSendDirectMessage**](DirectMessagesApi.md#workspacesenddirectmessage) | **POST** /v1/organizations/{org}/workspaces/{workspace}/direct-messages/messages | 


# **addDMReaction**
> DMReactionResponse addDMReaction(messageId, dMReactionRequest)

React to a DM message.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final messageId = messageId_example; // String | Chat-message id.
final dMReactionRequest = DMReactionRequest(); // DMReactionRequest | 

try {
    final result = api_instance.addDMReaction(messageId, dMReactionRequest);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->addDMReaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**| Chat-message id. | 
 **dMReactionRequest** | [**DMReactionRequest**](DMReactionRequest.md)|  | 

### Return type

[**DMReactionResponse**](DMReactionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachToDMMessage**
> DMMessageEnvelope attachToDMMessage(messageId, dMAttachRequest)

Attach a file/image/etc. to an existing DM message.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final messageId = messageId_example; // String | Chat-message id.
final dMAttachRequest = DMAttachRequest(); // DMAttachRequest | 

try {
    final result = api_instance.attachToDMMessage(messageId, dMAttachRequest);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->attachToDMMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**| Chat-message id. | 
 **dMAttachRequest** | [**DMAttachRequest**](DMAttachRequest.md)|  | 

### Return type

[**DMMessageEnvelope**](DMMessageEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **executeDMAction**
> ExecuteChatActionResponse executeDMAction(executeChatActionRequest)

Dispatch a DM action by id.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final executeChatActionRequest = ExecuteChatActionRequest(); // ExecuteChatActionRequest | 

try {
    final result = api_instance.executeDMAction(executeChatActionRequest);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->executeDMAction: $e\n');
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

# **forwardDMMessage**
> DMMessageEnvelope forwardDMMessage(messageId, dMForwardRequest)

Forward a DM message to another DM or channel.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final messageId = messageId_example; // String | Chat-message id.
final dMForwardRequest = DMForwardRequest(); // DMForwardRequest | 

try {
    final result = api_instance.forwardDMMessage(messageId, dMForwardRequest);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->forwardDMMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**| Chat-message id. | 
 **dMForwardRequest** | [**DMForwardRequest**](DMForwardRequest.md)|  | 

### Return type

[**DMMessageEnvelope**](DMMessageEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDMUser**
> GetChatUserResponse getDMUser(id, accountId)

Fetch one chat user.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final id = id_example; // String | Chat-user id (provider-scoped).
final accountId = accountId_example; // String | 

try {
    final result = api_instance.getDMUser(id, accountId);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->getDMUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Chat-user id (provider-scoped). | 
 **accountId** | **String**|  | [optional] 

### Return type

[**GetChatUserResponse**](GetChatUserResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDMActions**
> ChatActionsList listDMActions()

Discover the action catalog for DirectMessages.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();

try {
    final result = api_instance.listDMActions();
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->listDMActions: $e\n');
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

# **listDMPinnedMessages**
> DMPinnedList listDMPinnedMessages(dmId, accountId)

List pinned messages in a DM conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final dmId = dmId_example; // String | Direct-message conversation id.
final accountId = accountId_example; // String | 

try {
    final result = api_instance.listDMPinnedMessages(dmId, accountId);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->listDMPinnedMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**| Direct-message conversation id. | 
 **accountId** | **String**|  | [optional] 

### Return type

[**DMPinnedList**](DMPinnedList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDMThreadReplies**
> Map<String, Object> listDMThreadReplies(dmId, messageId, accountId)

List replies in a DM message thread.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final dmId = dmId_example; // String | Direct-message conversation id.
final messageId = messageId_example; // String | Chat-message id.
final accountId = accountId_example; // String | 

try {
    final result = api_instance.listDMThreadReplies(dmId, messageId, accountId);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->listDMThreadReplies: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**| Direct-message conversation id. | 
 **messageId** | **String**| Chat-message id. | 
 **accountId** | **String**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDMUsers**
> ListChatUsersResponse listDMUsers(accountIds, providers, xWorkspaceID, limit, cursor)

List chat users (DM contacts) across connected accounts.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final accountIds = []; // List<String> | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
final providers = []; // List<String> | Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final limit = 56; // int | 
final cursor = cursor_example; // String | 

try {
    final result = api_instance.listDMUsers(accountIds, providers, xWorkspaceID, limit, cursor);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->listDMUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountIds** | [**List<String>**](String.md)| Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  | [optional] [default to const []]
 **providers** | [**List<String>**](String.md)| Repeatable. Restrict to these provider ids (`gmail`, `outlook`). | [optional] [default to const []]
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **limit** | **int**|  | [optional] 
 **cursor** | **String**|  | [optional] 

### Return type

[**ListChatUsersResponse**](ListChatUsersResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDirectConversationsEnriched**
> Map<String, Object> listDirectConversationsEnriched(accountId, xWorkspaceID)

Enriched DM conversation list with unread + pin + draft state.

Native fast-path. Returns conversations augmented with the DM-feature state (unread counts, pinned/muted flags, saved drafts) the renderer's DM UI consumes. The shape is provider-specific and treated as opaque. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final accountId = accountId_example; // String | 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.listDirectConversationsEnriched(accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->listDirectConversationsEnriched: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**|  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDirectMessageConversations**
> ListChannelsResponse listDirectMessageConversations(accountIds, providers, xWorkspaceID, limit, cursor, includeArchived)

List 1:1 and group DM conversations.

Returns DM-type conversations only (`type: im | mpim`). Channel-type conversations are surfaced via `/v1/channels`. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final accountIds = []; // List<String> | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
final providers = []; // List<String> | Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final limit = 56; // int | 
final cursor = cursor_example; // String | 
final includeArchived = true; // bool | 

try {
    final result = api_instance.listDirectMessageConversations(accountIds, providers, xWorkspaceID, limit, cursor, includeArchived);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->listDirectMessageConversations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountIds** | [**List<String>**](String.md)| Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  | [optional] [default to const []]
 **providers** | [**List<String>**](String.md)| Repeatable. Restrict to these provider ids (`gmail`, `outlook`). | [optional] [default to const []]
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **limit** | **int**|  | [optional] 
 **cursor** | **String**|  | [optional] 
 **includeArchived** | **bool**|  | [optional] [default to false]

### Return type

[**ListChannelsResponse**](ListChannelsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDirectMessages**
> ListMessagesResponse listDirectMessages(channel, accountId, accountIds, providers, xWorkspaceID, limit, cursor, oldestFirst)

List messages in a DM conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final channel = channel_example; // String | DM conversation id.
final accountId = accountId_example; // String | 
final accountIds = []; // List<String> | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
final providers = []; // List<String> | Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final limit = 56; // int | 
final cursor = cursor_example; // String | 
final oldestFirst = true; // bool | 

try {
    final result = api_instance.listDirectMessages(channel, accountId, accountIds, providers, xWorkspaceID, limit, cursor, oldestFirst);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->listDirectMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel** | **String**| DM conversation id. | 
 **accountId** | **String**|  | [optional] 
 **accountIds** | [**List<String>**](String.md)| Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  | [optional] [default to const []]
 **providers** | [**List<String>**](String.md)| Repeatable. Restrict to these provider ids (`gmail`, `outlook`). | [optional] [default to const []]
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **limit** | **int**|  | [optional] 
 **cursor** | **String**|  | [optional] 
 **oldestFirst** | **bool**|  | [optional] 

### Return type

[**ListMessagesResponse**](ListMessagesResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markDMRead**
> SuccessFlag markDMRead(dmId, dMMarkReadRequest)

Mark a DM message read.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final dmId = dmId_example; // String | Direct-message conversation id.
final dMMarkReadRequest = DMMarkReadRequest(); // DMMarkReadRequest | 

try {
    final result = api_instance.markDMRead(dmId, dMMarkReadRequest);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->markDMRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**| Direct-message conversation id. | 
 **dMMarkReadRequest** | [**DMMarkReadRequest**](DMMarkReadRequest.md)|  | 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **muteDM**
> DMMuteResponse muteDM(dmId, dMMuteRequest)

Mute a DM conversation (until a time, or forever).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final dmId = dmId_example; // String | Direct-message conversation id.
final dMMuteRequest = DMMuteRequest(); // DMMuteRequest | 

try {
    final result = api_instance.muteDM(dmId, dMMuteRequest);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->muteDM: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**| Direct-message conversation id. | 
 **dMMuteRequest** | [**DMMuteRequest**](DMMuteRequest.md)|  | 

### Return type

[**DMMuteResponse**](DMMuteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pinDMConversation**
> SuccessFlag pinDMConversation(dmId, accountId)

Pin a DM conversation to the top of the sidebar.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final dmId = dmId_example; // String | Direct-message conversation id.
final accountId = accountId_example; // String | 

try {
    final result = api_instance.pinDMConversation(dmId, accountId);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->pinDMConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**| Direct-message conversation id. | 
 **accountId** | **String**|  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pinDMMessage**
> SuccessFlag pinDMMessage(messageId, channelMembershipRequest)

Pin a DM message.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final messageId = messageId_example; // String | Chat-message id.
final channelMembershipRequest = ChannelMembershipRequest(); // ChannelMembershipRequest | 

try {
    final result = api_instance.pinDMMessage(messageId, channelMembershipRequest);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->pinDMMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**| Chat-message id. | 
 **channelMembershipRequest** | [**ChannelMembershipRequest**](ChannelMembershipRequest.md)|  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDMThreadReply**
> DMMessageEnvelope postDMThreadReply(dmId, messageId, dMThreadReplyRequest, accountId)

Reply in a DM message thread.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final dmId = dmId_example; // String | Direct-message conversation id.
final messageId = messageId_example; // String | Chat-message id.
final dMThreadReplyRequest = DMThreadReplyRequest(); // DMThreadReplyRequest | 
final accountId = accountId_example; // String | 

try {
    final result = api_instance.postDMThreadReply(dmId, messageId, dMThreadReplyRequest, accountId);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->postDMThreadReply: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**| Direct-message conversation id. | 
 **messageId** | **String**| Chat-message id. | 
 **dMThreadReplyRequest** | [**DMThreadReplyRequest**](DMThreadReplyRequest.md)|  | 
 **accountId** | **String**|  | [optional] 

### Return type

[**DMMessageEnvelope**](DMMessageEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeDMReaction**
> DMReactionResponse removeDMReaction(messageId, emoji, accountId)

Remove a DM message reaction.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final messageId = messageId_example; // String | Chat-message id.
final emoji = emoji_example; // String | Reaction emoji (e.g. `+1`, `eyes`, `pepper`).
final accountId = accountId_example; // String | 

try {
    final result = api_instance.removeDMReaction(messageId, emoji, accountId);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->removeDMReaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**| Chat-message id. | 
 **emoji** | **String**| Reaction emoji (e.g. `+1`, `eyes`, `pepper`). | 
 **accountId** | **String**|  | [optional] 

### Return type

[**DMReactionResponse**](DMReactionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchDirectMessages**
> DMSearchResults searchDirectMessages(q, limit, dmId, user, accountId)

Search across DM messages.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final q = q_example; // String | Free-form query string.
final limit = 56; // int | 
final dmId = dmId_example; // String | Restrict to one conversation.
final user = user_example; // String | Restrict to messages from this user id.
final accountId = accountId_example; // String | 

try {
    final result = api_instance.searchDirectMessages(q, limit, dmId, user, accountId);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->searchDirectMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Free-form query string. | 
 **limit** | **int**|  | [optional] 
 **dmId** | **String**| Restrict to one conversation. | [optional] 
 **user** | **String**| Restrict to messages from this user id. | [optional] 
 **accountId** | **String**|  | [optional] 

### Return type

[**DMSearchResults**](DMSearchResults.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendDirectMessage**
> SendChatMessageResponse sendDirectMessage(sendChatMessageRequest)

Send a DM.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final sendChatMessageRequest = SendChatMessageRequest(); // SendChatMessageRequest | 

try {
    final result = api_instance.sendDirectMessage(sendChatMessageRequest);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->sendDirectMessage: $e\n');
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

# **setDMDraft**
> SuccessFlag setDMDraft(dmId, dMSetDraftRequest)

Save the unsent draft text for a DM.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final dmId = dmId_example; // String | Direct-message conversation id.
final dMSetDraftRequest = DMSetDraftRequest(); // DMSetDraftRequest | 

try {
    final result = api_instance.setDMDraft(dmId, dMSetDraftRequest);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->setDMDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**| Direct-message conversation id. | 
 **dMSetDraftRequest** | [**DMSetDraftRequest**](DMSetDraftRequest.md)|  | 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unpinDMConversation**
> SuccessFlag unpinDMConversation(dmId, accountId)

Unpin a DM conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final dmId = dmId_example; // String | Direct-message conversation id.
final accountId = accountId_example; // String | 

try {
    final result = api_instance.unpinDMConversation(dmId, accountId);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->unpinDMConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**| Direct-message conversation id. | 
 **accountId** | **String**|  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unpinDMMessage**
> SuccessFlag unpinDMMessage(messageId, accountId)

Unpin a DM message.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final messageId = messageId_example; // String | Chat-message id.
final accountId = accountId_example; // String | 

try {
    final result = api_instance.unpinDMMessage(messageId, accountId);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->unpinDMMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**| Chat-message id. | 
 **accountId** | **String**|  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceExecuteDMAction**
> Map<String, Object> workspaceExecuteDMAction(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceExecuteDMAction(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->workspaceExecuteDMAction: $e\n');
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

# **workspaceGetDMUser**
> Map<String, Object> workspaceGetDMUser(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetDMUser(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->workspaceGetDMUser: $e\n');
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

# **workspaceListDMActions**
> Map<String, Object> workspaceListDMActions(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListDMActions(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->workspaceListDMActions: $e\n');
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

# **workspaceListDMConversations**
> Map<String, Object> workspaceListDMConversations(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListDMConversations(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->workspaceListDMConversations: $e\n');
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

# **workspaceListDMMessages**
> Map<String, Object> workspaceListDMMessages(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListDMMessages(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->workspaceListDMMessages: $e\n');
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

# **workspaceListDMUsers**
> Map<String, Object> workspaceListDMUsers(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListDMUsers(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->workspaceListDMUsers: $e\n');
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

# **workspaceListDirectMessages**
> Map<String, Object> workspaceListDirectMessages(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListDirectMessages(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->workspaceListDirectMessages: $e\n');
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

# **workspaceSendDirectMessage**
> Map<String, Object> workspaceSendDirectMessage(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = DirectMessagesApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceSendDirectMessage(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling DirectMessagesApi->workspaceSendDirectMessage: $e\n');
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

