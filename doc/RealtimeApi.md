# spatio_sdk.api.RealtimeApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**issueCollaborationToken**](RealtimeApi.md#issuecollaborationtoken) | **POST** /v1/realtime/collaboration-token | Exchange a bearer token for a short-lived Yjs collaboration JWT.


# **issueCollaborationToken**
> IssueCollaborationToken200Response issueCollaborationToken(issueCollaborationTokenRequest)

Exchange a bearer token for a short-lived Yjs collaboration JWT.

The Yjs Cloudflare Worker that powers live document collaboration (`wss://realtime-collaboration.<account>.workers.dev`) only accepts platform-signed JWTs. Third-party clients holding an OAuth access token or PAT call this endpoint to mint a 5-minute collaboration JWT they can present to the worker.  The minted JWT inherits user + workspace identity from the presenting bearer token. Optionally scope it to a single room by supplying `room` in the request body. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RealtimeApi();
final issueCollaborationTokenRequest = IssueCollaborationTokenRequest(); // IssueCollaborationTokenRequest | 

try {
    final result = api_instance.issueCollaborationToken(issueCollaborationTokenRequest);
    print(result);
} catch (e) {
    print('Exception when calling RealtimeApi->issueCollaborationToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueCollaborationTokenRequest** | [**IssueCollaborationTokenRequest**](IssueCollaborationTokenRequest.md)|  | [optional] 

### Return type

[**IssueCollaborationToken200Response**](IssueCollaborationToken200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

