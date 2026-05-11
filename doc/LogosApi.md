# spatio_sdk.api.LogosApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDomainLogo**](LogosApi.md#getdomainlogo) | **GET** /v1/logos/domain/{domain} | Resolve a domain to its logo URL (CDN-cached 24h).
[**getEmailLogo**](LogosApi.md#getemaillogo) | **GET** /v1/logos/email/{email} | Resolve an email address to its domain logo URL.
[**getLogosBatch**](LogosApi.md#getlogosbatch) | **POST** /v1/logos/batch | Batch-resolve a list of domains/emails to logo URLs in one call.


# **getDomainLogo**
> GetDomainLogo200Response getDomainLogo(domain)

Resolve a domain to its logo URL (CDN-cached 24h).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = LogosApi();
final domain = domain_example; // String | 

try {
    final result = api_instance.getDomainLogo(domain);
    print(result);
} catch (e) {
    print('Exception when calling LogosApi->getDomainLogo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **String**|  | 

### Return type

[**GetDomainLogo200Response**](GetDomainLogo200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailLogo**
> Map<String, Object> getEmailLogo(email)

Resolve an email address to its domain logo URL.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = LogosApi();
final email = email_example; // String | 

try {
    final result = api_instance.getEmailLogo(email);
    print(result);
} catch (e) {
    print('Exception when calling LogosApi->getEmailLogo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLogosBatch**
> Map<String, Object> getLogosBatch(requestBody)

Batch-resolve a list of domains/emails to logo URLs in one call.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = LogosApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.getLogosBatch(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling LogosApi->getLogosBatch: $e\n');
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

