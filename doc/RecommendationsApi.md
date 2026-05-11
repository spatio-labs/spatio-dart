# spatio_sdk.api.RecommendationsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteRecommendation**](RecommendationsApi.md#deleterecommendation) | **DELETE** /v1/recommendations/{id} | Delete a recommendation (hard delete; status-update is preferred).
[**getRecommendation**](RecommendationsApi.md#getrecommendation) | **GET** /v1/recommendations/{id} | Fetch one recommendation.
[**listRecommendations**](RecommendationsApi.md#listrecommendations) | **GET** /v1/recommendations | List recommendations for a workspace.
[**proposeRecommendation**](RecommendationsApi.md#proposerecommendation) | **POST** /v1/recommendations | Agent-side propose endpoint (the `spatio_recommendations propose` MCP tool calls this).
[**updateRecommendationStatus**](RecommendationsApi.md#updaterecommendationstatus) | **PATCH** /v1/recommendations/{id}/status | Accept or dismiss a recommendation.


# **deleteRecommendation**
> deleteRecommendation(id)

Delete a recommendation (hard delete; status-update is preferred).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecommendationsApi();
final id = id_example; // String | 

try {
    api_instance.deleteRecommendation(id);
} catch (e) {
    print('Exception when calling RecommendationsApi->deleteRecommendation: $e\n');
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

# **getRecommendation**
> Recommendation getRecommendation(id)

Fetch one recommendation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecommendationsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getRecommendation(id);
    print(result);
} catch (e) {
    print('Exception when calling RecommendationsApi->getRecommendation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Recommendation**](Recommendation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecommendations**
> RecommendationListResponse listRecommendations(workspaceId, status, limit)

List recommendations for a workspace.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecommendationsApi();
final workspaceId = workspaceId_example; // String | 
final status = status_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.listRecommendations(workspaceId, status, limit);
    print(result);
} catch (e) {
    print('Exception when calling RecommendationsApi->listRecommendations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaceId** | **String**|  | [optional] 
 **status** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**RecommendationListResponse**](RecommendationListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **proposeRecommendation**
> Recommendation proposeRecommendation(proposeRecommendationRequest)

Agent-side propose endpoint (the `spatio_recommendations propose` MCP tool calls this).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecommendationsApi();
final proposeRecommendationRequest = ProposeRecommendationRequest(); // ProposeRecommendationRequest | 

try {
    final result = api_instance.proposeRecommendation(proposeRecommendationRequest);
    print(result);
} catch (e) {
    print('Exception when calling RecommendationsApi->proposeRecommendation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **proposeRecommendationRequest** | [**ProposeRecommendationRequest**](ProposeRecommendationRequest.md)|  | 

### Return type

[**Recommendation**](Recommendation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecommendationStatus**
> Recommendation updateRecommendationStatus(id, updateRecommendationStatusRequest)

Accept or dismiss a recommendation.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecommendationsApi();
final id = id_example; // String | 
final updateRecommendationStatusRequest = UpdateRecommendationStatusRequest(); // UpdateRecommendationStatusRequest | 

try {
    final result = api_instance.updateRecommendationStatus(id, updateRecommendationStatusRequest);
    print(result);
} catch (e) {
    print('Exception when calling RecommendationsApi->updateRecommendationStatus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateRecommendationStatusRequest** | [**UpdateRecommendationStatusRequest**](UpdateRecommendationStatusRequest.md)|  | 

### Return type

[**Recommendation**](Recommendation.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

