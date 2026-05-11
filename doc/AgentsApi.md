# spatio_sdk.api.AgentsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAgent**](AgentsApi.md#createagent) | **POST** /v1/agents | Create a new agent configuration.
[**createAgentConversation**](AgentsApi.md#createagentconversation) | **POST** /v1/agent/conversations | Create a new agent-platform conversation.
[**createAgentMessage**](AgentsApi.md#createagentmessage) | **POST** /v1/agent/conversations/{id}/messages | Append a message to an agent conversation.
[**deleteAgent**](AgentsApi.md#deleteagent) | **DELETE** /v1/agents/{id} | Delete an agent configuration.
[**executeAgentAction**](AgentsApi.md#executeagentaction) | **POST** /v1/agent/actions/execute | Execute an action through the agent platform.
[**getAgent**](AgentsApi.md#getagent) | **GET** /v1/agents/{id} | Fetch one agent configuration.
[**getAgentConversation**](AgentsApi.md#getagentconversation) | **GET** /v1/agent/conversations/{id} | Fetch one agent conversation.
[**getAgentSessionContext**](AgentsApi.md#getagentsessioncontext) | **GET** /v1/agent/session-context | Identity bundle for the SessionStart hook (user + org + workspace + connected accounts) so the agent doesn't fish on its first turn. 
[**listAgentConversationMessages**](AgentsApi.md#listagentconversationmessages) | **GET** /v1/agent/conversations/{id}/messages | List messages on an agent conversation.
[**listAgentConversations**](AgentsApi.md#listagentconversations) | **GET** /v1/agent/conversations | List the caller's agent-platform conversations. Distinct from `/v1/conversations` (renderer-driven sidebar persistence). 
[**listAgents**](AgentsApi.md#listagents) | **GET** /v1/agents | List the caller's agent configurations.
[**listPreconfiguredAgents**](AgentsApi.md#listpreconfiguredagents) | **GET** /v1/agents/preconfigured | Curated featured agents (e.g. \"Claude Code\", \"Research Assistant\"). Read-only — these are surfaced by the renderer's preconfigured-picker UI. 
[**updateAgent**](AgentsApi.md#updateagent) | **PATCH** /v1/agents/{id} | Update an agent configuration.


# **createAgent**
> Agent createAgent(createAgentRequest)

Create a new agent configuration.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();
final createAgentRequest = CreateAgentRequest(); // CreateAgentRequest | 

try {
    final result = api_instance.createAgent(createAgentRequest);
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->createAgent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAgentRequest** | [**CreateAgentRequest**](CreateAgentRequest.md)|  | 

### Return type

[**Agent**](Agent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAgentConversation**
> AgentConversation createAgentConversation(createAgentConversationRequest)

Create a new agent-platform conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();
final createAgentConversationRequest = CreateAgentConversationRequest(); // CreateAgentConversationRequest | 

try {
    final result = api_instance.createAgentConversation(createAgentConversationRequest);
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->createAgentConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createAgentConversationRequest** | [**CreateAgentConversationRequest**](CreateAgentConversationRequest.md)|  | [optional] 

### Return type

[**AgentConversation**](AgentConversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAgentMessage**
> AgentMessage createAgentMessage(id, createAgentMessageRequest)

Append a message to an agent conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();
final id = id_example; // String | 
final createAgentMessageRequest = CreateAgentMessageRequest(); // CreateAgentMessageRequest | 

try {
    final result = api_instance.createAgentMessage(id, createAgentMessageRequest);
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->createAgentMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **createAgentMessageRequest** | [**CreateAgentMessageRequest**](CreateAgentMessageRequest.md)|  | 

### Return type

[**AgentMessage**](AgentMessage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAgent**
> deleteAgent(id)

Delete an agent configuration.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();
final id = id_example; // String | 

try {
    api_instance.deleteAgent(id);
} catch (e) {
    print('Exception when calling AgentsApi->deleteAgent: $e\n');
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

# **executeAgentAction**
> ExecuteActionResponse executeAgentAction(executeActionRequest)

Execute an action through the agent platform.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();
final executeActionRequest = ExecuteActionRequest(); // ExecuteActionRequest | 

try {
    final result = api_instance.executeAgentAction(executeActionRequest);
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->executeAgentAction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **executeActionRequest** | [**ExecuteActionRequest**](ExecuteActionRequest.md)|  | 

### Return type

[**ExecuteActionResponse**](ExecuteActionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgent**
> Agent getAgent(id)

Fetch one agent configuration.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getAgent(id);
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->getAgent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Agent**](Agent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentConversation**
> AgentConversation getAgentConversation(id)

Fetch one agent conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getAgentConversation(id);
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->getAgentConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**AgentConversation**](AgentConversation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAgentSessionContext**
> AgentSessionContext getAgentSessionContext()

Identity bundle for the SessionStart hook (user + org + workspace + connected accounts) so the agent doesn't fish on its first turn. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();

try {
    final result = api_instance.getAgentSessionContext();
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->getAgentSessionContext: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AgentSessionContext**](AgentSessionContext.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAgentConversationMessages**
> AgentMessageListResponse listAgentConversationMessages(id)

List messages on an agent conversation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();
final id = id_example; // String | 

try {
    final result = api_instance.listAgentConversationMessages(id);
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->listAgentConversationMessages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**AgentMessageListResponse**](AgentMessageListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAgentConversations**
> AgentConversationListResponse listAgentConversations()

List the caller's agent-platform conversations. Distinct from `/v1/conversations` (renderer-driven sidebar persistence). 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();

try {
    final result = api_instance.listAgentConversations();
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->listAgentConversations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AgentConversationListResponse**](AgentConversationListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAgents**
> AgentListResponse listAgents()

List the caller's agent configurations.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();

try {
    final result = api_instance.listAgents();
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->listAgents: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AgentListResponse**](AgentListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPreconfiguredAgents**
> List<PreconfiguredAgent> listPreconfiguredAgents()

Curated featured agents (e.g. \"Claude Code\", \"Research Assistant\"). Read-only — these are surfaced by the renderer's preconfigured-picker UI. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();

try {
    final result = api_instance.listPreconfiguredAgents();
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->listPreconfiguredAgents: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PreconfiguredAgent>**](PreconfiguredAgent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAgent**
> Agent updateAgent(id, updateAgentRequest)

Update an agent configuration.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = AgentsApi();
final id = id_example; // String | 
final updateAgentRequest = UpdateAgentRequest(); // UpdateAgentRequest | 

try {
    final result = api_instance.updateAgent(id, updateAgentRequest);
    print(result);
} catch (e) {
    print('Exception when calling AgentsApi->updateAgent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateAgentRequest** | [**UpdateAgentRequest**](UpdateAgentRequest.md)|  | 

### Return type

[**Agent**](Agent.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

