# spatio_sdk.api.NativeDMApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addNativeDMReaction**](NativeDMApi.md#addnativedmreaction) | **POST** /v1/native/dm/messages/{messageId}/reactions | Add a reaction to a DM message.
[**attachToNativeDMMessage**](NativeDMApi.md#attachtonativedmmessage) | **POST** /v1/native/dm/messages/{messageId}/attachments | Attach a file to a DM message.
[**deleteNativeDMMessage**](NativeDMApi.md#deletenativedmmessage) | **DELETE** /v1/native/dm/{dmId}/messages/{messageId} | Delete a DM message.
[**forwardNativeDMMessage**](NativeDMApi.md#forwardnativedmmessage) | **POST** /v1/native/dm/messages/{messageId}/forward | Forward a DM message to another conversation.
[**listNativeDMChannels**](NativeDMApi.md#listnativedmchannels) | **GET** /v1/native/dm | List the caller's DM channels.
[**listNativeDMConversations**](NativeDMApi.md#listnativedmconversations) | **GET** /v1/native/dm/conversations | List DM conversations with metadata (last message, unread count, etc.).
[**listNativeDMMessages**](NativeDMApi.md#listnativedmmessages) | **GET** /v1/native/dm/{dmId}/messages | List messages in a DM.
[**listNativeDMPinnedMessages**](NativeDMApi.md#listnativedmpinnedmessages) | **GET** /v1/native/dm/{dmId}/pinned | List pinned messages in a DM.
[**listNativeDMThreadReplies**](NativeDMApi.md#listnativedmthreadreplies) | **GET** /v1/native/dm/{dmId}/messages/{messageId}/replies | List threaded replies on a message.
[**markNativeDMRead**](NativeDMApi.md#marknativedmread) | **POST** /v1/native/dm/{dmId}/read | Mark a DM as read.
[**muteNativeDM**](NativeDMApi.md#mutenativedm) | **POST** /v1/native/dm/{dmId}/mute | Mute a DM.
[**pinNativeDMConversation**](NativeDMApi.md#pinnativedmconversation) | **POST** /v1/native/dm/{dmId}/pin | Pin a DM conversation in the sidebar.
[**pinNativeDMMessage**](NativeDMApi.md#pinnativedmmessage) | **POST** /v1/native/dm/messages/{messageId}/pin | Pin a DM message.
[**postNativeDMMessage**](NativeDMApi.md#postnativedmmessage) | **POST** /v1/native/dm | Post a DM message (top-level entry).
[**postNativeDMThreadReply**](NativeDMApi.md#postnativedmthreadreply) | **POST** /v1/native/dm/{dmId}/messages/{messageId}/replies | Post a threaded reply.
[**removeNativeDMReaction**](NativeDMApi.md#removenativedmreaction) | **DELETE** /v1/native/dm/messages/{messageId}/reactions/{emoji} | Remove a reaction.
[**searchNativeDMMessages**](NativeDMApi.md#searchnativedmmessages) | **GET** /v1/native/dm/search | Search DM messages.
[**setNativeDMDraft**](NativeDMApi.md#setnativedmdraft) | **PUT** /v1/native/dm/{dmId}/draft | Save a draft on a DM conversation.
[**unpinNativeDMConversation**](NativeDMApi.md#unpinnativedmconversation) | **DELETE** /v1/native/dm/{dmId}/pin | Unpin a DM conversation.
[**unpinNativeDMMessage**](NativeDMApi.md#unpinnativedmmessage) | **DELETE** /v1/native/dm/messages/{messageId}/pin | Unpin a DM message.
[**updateNativeDMMessage**](NativeDMApi.md#updatenativedmmessage) | **PATCH** /v1/native/dm/{dmId}/messages/{messageId} | Update a DM message body.


# **addNativeDMReaction**
> Map<String, Object> addNativeDMReaction(messageId, requestBody)

Add a reaction to a DM message.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final messageId = messageId_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.addNativeDMReaction(messageId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->addNativeDMReaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachToNativeDMMessage**
> Map<String, Object> attachToNativeDMMessage(messageId, requestBody)

Attach a file to a DM message.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final messageId = messageId_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.attachToNativeDMMessage(messageId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->attachToNativeDMMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteNativeDMMessage**
> deleteNativeDMMessage(dmId, messageId)

Delete a DM message.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final dmId = dmId_example; // String | 
final messageId = messageId_example; // String | 

try {
    api_instance.deleteNativeDMMessage(dmId, messageId);
} catch (e) {
    print('Exception when calling NativeDMApi->deleteNativeDMMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**|  | 
 **messageId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forwardNativeDMMessage**
> Map<String, Object> forwardNativeDMMessage(messageId, requestBody)

Forward a DM message to another conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final messageId = messageId_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.forwardNativeDMMessage(messageId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->forwardNativeDMMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNativeDMChannels**
> Map<String, Object> listNativeDMChannels()

List the caller's DM channels.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();

try {
    final result = api_instance.listNativeDMChannels();
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->listNativeDMChannels: $e\n');
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

# **listNativeDMConversations**
> Map<String, Object> listNativeDMConversations()

List DM conversations with metadata (last message, unread count, etc.).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();

try {
    final result = api_instance.listNativeDMConversations();
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->listNativeDMConversations: $e\n');
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

# **listNativeDMMessages**
> Map<String, Object> listNativeDMMessages(dmId)

List messages in a DM.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final dmId = dmId_example; // String | 

try {
    final result = api_instance.listNativeDMMessages(dmId);
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->listNativeDMMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNativeDMPinnedMessages**
> Map<String, Object> listNativeDMPinnedMessages(dmId)

List pinned messages in a DM.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final dmId = dmId_example; // String | 

try {
    final result = api_instance.listNativeDMPinnedMessages(dmId);
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->listNativeDMPinnedMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNativeDMThreadReplies**
> Map<String, Object> listNativeDMThreadReplies(dmId, messageId)

List threaded replies on a message.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final dmId = dmId_example; // String | 
final messageId = messageId_example; // String | 

try {
    final result = api_instance.listNativeDMThreadReplies(dmId, messageId);
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->listNativeDMThreadReplies: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**|  | 
 **messageId** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markNativeDMRead**
> markNativeDMRead(dmId)

Mark a DM as read.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final dmId = dmId_example; // String | 

try {
    api_instance.markNativeDMRead(dmId);
} catch (e) {
    print('Exception when calling NativeDMApi->markNativeDMRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **muteNativeDM**
> muteNativeDM(dmId, requestBody)

Mute a DM.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final dmId = dmId_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    api_instance.muteNativeDM(dmId, requestBody);
} catch (e) {
    print('Exception when calling NativeDMApi->muteNativeDM: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pinNativeDMConversation**
> pinNativeDMConversation(dmId)

Pin a DM conversation in the sidebar.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final dmId = dmId_example; // String | 

try {
    api_instance.pinNativeDMConversation(dmId);
} catch (e) {
    print('Exception when calling NativeDMApi->pinNativeDMConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pinNativeDMMessage**
> pinNativeDMMessage(messageId)

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

final api_instance = NativeDMApi();
final messageId = messageId_example; // String | 

try {
    api_instance.pinNativeDMMessage(messageId);
} catch (e) {
    print('Exception when calling NativeDMApi->pinNativeDMMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postNativeDMMessage**
> Map<String, Object> postNativeDMMessage(requestBody)

Post a DM message (top-level entry).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.postNativeDMMessage(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->postNativeDMMessage: $e\n');
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

# **postNativeDMThreadReply**
> Map<String, Object> postNativeDMThreadReply(dmId, messageId, requestBody)

Post a threaded reply.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final dmId = dmId_example; // String | 
final messageId = messageId_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.postNativeDMThreadReply(dmId, messageId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->postNativeDMThreadReply: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**|  | 
 **messageId** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeNativeDMReaction**
> removeNativeDMReaction(messageId, emoji)

Remove a reaction.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final messageId = messageId_example; // String | 
final emoji = emoji_example; // String | 

try {
    api_instance.removeNativeDMReaction(messageId, emoji);
} catch (e) {
    print('Exception when calling NativeDMApi->removeNativeDMReaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 
 **emoji** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchNativeDMMessages**
> Map<String, Object> searchNativeDMMessages(q)

Search DM messages.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final q = q_example; // String | 

try {
    final result = api_instance.searchNativeDMMessages(q);
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->searchNativeDMMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setNativeDMDraft**
> setNativeDMDraft(dmId, requestBody)

Save a draft on a DM conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final dmId = dmId_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    api_instance.setNativeDMDraft(dmId, requestBody);
} catch (e) {
    print('Exception when calling NativeDMApi->setNativeDMDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unpinNativeDMConversation**
> unpinNativeDMConversation(dmId)

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

final api_instance = NativeDMApi();
final dmId = dmId_example; // String | 

try {
    api_instance.unpinNativeDMConversation(dmId);
} catch (e) {
    print('Exception when calling NativeDMApi->unpinNativeDMConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unpinNativeDMMessage**
> unpinNativeDMMessage(messageId)

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

final api_instance = NativeDMApi();
final messageId = messageId_example; // String | 

try {
    api_instance.unpinNativeDMMessage(messageId);
} catch (e) {
    print('Exception when calling NativeDMApi->unpinNativeDMMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNativeDMMessage**
> Map<String, Object> updateNativeDMMessage(dmId, messageId, requestBody)

Update a DM message body.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = NativeDMApi();
final dmId = dmId_example; // String | 
final messageId = messageId_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.updateNativeDMMessage(dmId, messageId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling NativeDMApi->updateNativeDMMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dmId** | **String**|  | 
 **messageId** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

