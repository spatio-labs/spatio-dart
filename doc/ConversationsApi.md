# spatio_sdk.api.ConversationsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createConversation**](ConversationsApi.md#createconversation) | **POST** /v1/conversations | Persist a new LLM conversation.
[**deleteConversation**](ConversationsApi.md#deleteconversation) | **DELETE** /v1/conversations/{id} | Soft-delete a conversation.
[**getConversation**](ConversationsApi.md#getconversation) | **GET** /v1/conversations/{id} | Fetch one conversation.
[**getLatestConversationForContext**](ConversationsApi.md#getlatestconversationforcontext) | **GET** /v1/conversations/latest | Fetch the most recently active conversation for a given context tag.
[**listConversationMessages**](ConversationsApi.md#listconversationmessages) | **GET** /v1/conversations/{id}/messages | List messages in a conversation.
[**listConversations**](ConversationsApi.md#listconversations) | **GET** /v1/conversations | List the caller's persisted LLM conversations.
[**saveConversationMessage**](ConversationsApi.md#saveconversationmessage) | **POST** /v1/conversations/{id}/messages | Append a message to a conversation.
[**updateConversation**](ConversationsApi.md#updateconversation) | **PATCH** /v1/conversations/{id} | Update conversation metadata (title, context, cwd, session_id, pinned).
[**updateConversationMessageMetadata**](ConversationsApi.md#updateconversationmessagemetadata) | **PATCH** /v1/conversations/{id}/messages | Patch metadata on an existing message. Body must include the message id (path is the conversation id, not the message). 


# **createConversation**
> Conversation createConversation(createConversationRequest)

Persist a new LLM conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConversationsApi();
final createConversationRequest = CreateConversationRequest(); // CreateConversationRequest | 

try {
    final result = api_instance.createConversation(createConversationRequest);
    print(result);
} catch (e) {
    print('Exception when calling ConversationsApi->createConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createConversationRequest** | [**CreateConversationRequest**](CreateConversationRequest.md)|  | [optional] 

### Return type

[**Conversation**](Conversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteConversation**
> deleteConversation(id)

Soft-delete a conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConversationsApi();
final id = id_example; // String | 

try {
    api_instance.deleteConversation(id);
} catch (e) {
    print('Exception when calling ConversationsApi->deleteConversation: $e\n');
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

# **getConversation**
> Conversation getConversation(id)

Fetch one conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConversationsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getConversation(id);
    print(result);
} catch (e) {
    print('Exception when calling ConversationsApi->getConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Conversation**](Conversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestConversationForContext**
> Conversation getLatestConversationForContext(context)

Fetch the most recently active conversation for a given context tag.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConversationsApi();
final context = context_example; // String | 

try {
    final result = api_instance.getLatestConversationForContext(context);
    print(result);
} catch (e) {
    print('Exception when calling ConversationsApi->getLatestConversationForContext: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context** | **String**|  | 

### Return type

[**Conversation**](Conversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConversationMessages**
> List<ConversationMessage> listConversationMessages(id, limit, before)

List messages in a conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConversationsApi();
final id = id_example; // String | 
final limit = 56; // int | 
final before = before_example; // String | 

try {
    final result = api_instance.listConversationMessages(id, limit, before);
    print(result);
} catch (e) {
    print('Exception when calling ConversationsApi->listConversationMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **limit** | **int**|  | [optional] 
 **before** | **String**|  | [optional] 

### Return type

[**List<ConversationMessage>**](ConversationMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listConversations**
> List<Conversation> listConversations(context, limit)

List the caller's persisted LLM conversations.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConversationsApi();
final context = context_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.listConversations(context, limit);
    print(result);
} catch (e) {
    print('Exception when calling ConversationsApi->listConversations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **context** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**List<Conversation>**](Conversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveConversationMessage**
> ConversationMessage saveConversationMessage(id, saveMessageRequest)

Append a message to a conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConversationsApi();
final id = id_example; // String | 
final saveMessageRequest = SaveMessageRequest(); // SaveMessageRequest | 

try {
    final result = api_instance.saveConversationMessage(id, saveMessageRequest);
    print(result);
} catch (e) {
    print('Exception when calling ConversationsApi->saveConversationMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **saveMessageRequest** | [**SaveMessageRequest**](SaveMessageRequest.md)|  | 

### Return type

[**ConversationMessage**](ConversationMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConversation**
> Conversation updateConversation(id, updateConversationRequest)

Update conversation metadata (title, context, cwd, session_id, pinned).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConversationsApi();
final id = id_example; // String | 
final updateConversationRequest = UpdateConversationRequest(); // UpdateConversationRequest | 

try {
    final result = api_instance.updateConversation(id, updateConversationRequest);
    print(result);
} catch (e) {
    print('Exception when calling ConversationsApi->updateConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateConversationRequest** | [**UpdateConversationRequest**](UpdateConversationRequest.md)|  | 

### Return type

[**Conversation**](Conversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConversationMessageMetadata**
> ConversationMessage updateConversationMessageMetadata(id, updateMessageMetadataRequest)

Patch metadata on an existing message. Body must include the message id (path is the conversation id, not the message). 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConversationsApi();
final id = id_example; // String | 
final updateMessageMetadataRequest = UpdateMessageMetadataRequest(); // UpdateMessageMetadataRequest | 

try {
    final result = api_instance.updateConversationMessageMetadata(id, updateMessageMetadataRequest);
    print(result);
} catch (e) {
    print('Exception when calling ConversationsApi->updateConversationMessageMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateMessageMetadataRequest** | [**UpdateMessageMetadataRequest**](UpdateMessageMetadataRequest.md)|  | 

### Return type

[**ConversationMessage**](ConversationMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

