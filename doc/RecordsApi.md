# spatio_sdk.api.RecordsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRecord**](RecordsApi.md#createrecord) | **POST** /v1/records | Create a record.
[**createRecordType**](RecordsApi.md#createrecordtype) | **POST** /v1/records/types | Create a record type (org-scoped).
[**deleteRecord**](RecordsApi.md#deleterecord) | **DELETE** /v1/records/{id} | Delete a record.
[**getRecord**](RecordsApi.md#getrecord) | **GET** /v1/records/{id} | Fetch a record.
[**listRecordTypes**](RecordsApi.md#listrecordtypes) | **GET** /v1/records/types | List record types for an organization.
[**listRecords**](RecordsApi.md#listrecords) | **GET** /v1/records | List records for an organization. `organization_id` query param is required (handler returns 400 otherwise). 
[**updateRecord**](RecordsApi.md#updaterecord) | **PATCH** /v1/records/{id} | Update a record.
[**updateRecordType**](RecordsApi.md#updaterecordtype) | **PATCH** /v1/records/types/{id} | Update a record type.


# **createRecord**
> Record createRecord(createRecordRequest)

Create a record.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecordsApi();
final createRecordRequest = CreateRecordRequest(); // CreateRecordRequest | 

try {
    final result = api_instance.createRecord(createRecordRequest);
    print(result);
} catch (e) {
    print('Exception when calling RecordsApi->createRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRecordRequest** | [**CreateRecordRequest**](CreateRecordRequest.md)|  | 

### Return type

[**Record**](Record.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRecordType**
> RecordType createRecordType(createRecordTypeRequest)

Create a record type (org-scoped).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecordsApi();
final createRecordTypeRequest = CreateRecordTypeRequest(); // CreateRecordTypeRequest | 

try {
    final result = api_instance.createRecordType(createRecordTypeRequest);
    print(result);
} catch (e) {
    print('Exception when calling RecordsApi->createRecordType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createRecordTypeRequest** | [**CreateRecordTypeRequest**](CreateRecordTypeRequest.md)|  | 

### Return type

[**RecordType**](RecordType.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRecord**
> deleteRecord(id)

Delete a record.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecordsApi();
final id = id_example; // String | 

try {
    api_instance.deleteRecord(id);
} catch (e) {
    print('Exception when calling RecordsApi->deleteRecord: $e\n');
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

# **getRecord**
> Record getRecord(id)

Fetch a record.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecordsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getRecord(id);
    print(result);
} catch (e) {
    print('Exception when calling RecordsApi->getRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Record**](Record.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecordTypes**
> RecordTypeListResponse listRecordTypes(organizationId)

List record types for an organization.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecordsApi();
final organizationId = organizationId_example; // String | 

try {
    final result = api_instance.listRecordTypes(organizationId);
    print(result);
} catch (e) {
    print('Exception when calling RecordsApi->listRecordTypes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**RecordTypeListResponse**](RecordTypeListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRecords**
> RecordListResponse listRecords(organizationId, recordTypeId, limit)

List records for an organization. `organization_id` query param is required (handler returns 400 otherwise). 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecordsApi();
final organizationId = organizationId_example; // String | 
final recordTypeId = recordTypeId_example; // String | 
final limit = 56; // int | 

try {
    final result = api_instance.listRecords(organizationId, recordTypeId, limit);
    print(result);
} catch (e) {
    print('Exception when calling RecordsApi->listRecords: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 
 **recordTypeId** | **String**|  | [optional] 
 **limit** | **int**|  | [optional] 

### Return type

[**RecordListResponse**](RecordListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecord**
> Record updateRecord(id, updateRecordRequest)

Update a record.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecordsApi();
final id = id_example; // String | 
final updateRecordRequest = UpdateRecordRequest(); // UpdateRecordRequest | 

try {
    final result = api_instance.updateRecord(id, updateRecordRequest);
    print(result);
} catch (e) {
    print('Exception when calling RecordsApi->updateRecord: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateRecordRequest** | [**UpdateRecordRequest**](UpdateRecordRequest.md)|  | 

### Return type

[**Record**](Record.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRecordType**
> RecordType updateRecordType(id, updateRecordTypeRequest)

Update a record type.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = RecordsApi();
final id = id_example; // String | 
final updateRecordTypeRequest = UpdateRecordTypeRequest(); // UpdateRecordTypeRequest | 

try {
    final result = api_instance.updateRecordType(id, updateRecordTypeRequest);
    print(result);
} catch (e) {
    print('Exception when calling RecordsApi->updateRecordType: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateRecordTypeRequest** | [**UpdateRecordTypeRequest**](UpdateRecordTypeRequest.md)|  | 

### Return type

[**RecordType**](RecordType.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

