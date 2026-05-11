# spatio_sdk.api.SearchApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**federatedSearch**](SearchApi.md#federatedsearch) | **POST** /v1/search | Cross-platform federated search.


# **federatedSearch**
> FederatedSearch200Response federatedSearch(federatedSearchRequest)

Cross-platform federated search.

Fans out to every platform's per-platform search method in parallel, merges + dedupes results, and returns them in a relevance-then-recency ranking with per-platform cursors for pagination. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SearchApi();
final federatedSearchRequest = FederatedSearchRequest(); // FederatedSearchRequest | 

try {
    final result = api_instance.federatedSearch(federatedSearchRequest);
    print(result);
} catch (e) {
    print('Exception when calling SearchApi->federatedSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **federatedSearchRequest** | [**FederatedSearchRequest**](FederatedSearchRequest.md)|  | 

### Return type

[**FederatedSearch200Response**](FederatedSearch200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

