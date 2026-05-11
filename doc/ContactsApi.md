# spatio_sdk.api.ContactsApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assignContactCategory**](ContactsApi.md#assigncontactcategory) | **POST** /v1/contacts/{id}/categories | Assign a category to a contact.
[**createContact**](ContactsApi.md#createcontact) | **POST** /v1/contacts | Create a contact.
[**createContactCategory**](ContactsApi.md#createcontactcategory) | **POST** /v1/contacts/categories | Create a contact category.
[**deleteContact**](ContactsApi.md#deletecontact) | **DELETE** /v1/contacts/{id} | Delete a contact.
[**deleteContactCategory**](ContactsApi.md#deletecontactcategory) | **DELETE** /v1/contacts/categories/{id} | Delete a category.
[**getContact**](ContactsApi.md#getcontact) | **GET** /v1/contacts/{id} | Fetch a contact.
[**listContactCategories**](ContactsApi.md#listcontactcategories) | **GET** /v1/contacts/categories | List contact categories. Requires `organization_id` query param.
[**listContactProviders**](ContactsApi.md#listcontactproviders) | **GET** /v1/contacts/providers | List supported contact providers (native + OAuth-connected).
[**listContacts**](ContactsApi.md#listcontacts) | **GET** /v1/contacts | List the caller's contacts (across providers).
[**unassignContactCategory**](ContactsApi.md#unassigncontactcategory) | **DELETE** /v1/contacts/{id}/categories/{categoryId} | Remove a category from a contact.
[**updateContact**](ContactsApi.md#updatecontact) | **PATCH** /v1/contacts/{id} | Update a contact.
[**updateContactCategory**](ContactsApi.md#updatecontactcategory) | **PATCH** /v1/contacts/categories/{id} | Update a category.


# **assignContactCategory**
> assignContactCategory(id, assignContactCategoryRequest)

Assign a category to a contact.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = id_example; // String | 
final assignContactCategoryRequest = AssignContactCategoryRequest(); // AssignContactCategoryRequest | 

try {
    api_instance.assignContactCategory(id, assignContactCategoryRequest);
} catch (e) {
    print('Exception when calling ContactsApi->assignContactCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **assignContactCategoryRequest** | [**AssignContactCategoryRequest**](AssignContactCategoryRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createContact**
> Contact createContact(createContactRequest)

Create a contact.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final createContactRequest = CreateContactRequest(); // CreateContactRequest | 

try {
    final result = api_instance.createContact(createContactRequest);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->createContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createContactRequest** | [**CreateContactRequest**](CreateContactRequest.md)|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createContactCategory**
> ContactCategory createContactCategory(createContactCategoryRequest)

Create a contact category.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final createContactCategoryRequest = CreateContactCategoryRequest(); // CreateContactCategoryRequest | 

try {
    final result = api_instance.createContactCategory(createContactCategoryRequest);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->createContactCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createContactCategoryRequest** | [**CreateContactCategoryRequest**](CreateContactCategoryRequest.md)|  | 

### Return type

[**ContactCategory**](ContactCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteContact**
> deleteContact(id)

Delete a contact.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = id_example; // String | 

try {
    api_instance.deleteContact(id);
} catch (e) {
    print('Exception when calling ContactsApi->deleteContact: $e\n');
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

# **deleteContactCategory**
> deleteContactCategory(id)

Delete a category.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = id_example; // String | 

try {
    api_instance.deleteContactCategory(id);
} catch (e) {
    print('Exception when calling ContactsApi->deleteContactCategory: $e\n');
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

# **getContact**
> Contact getContact(id)

Fetch a contact.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = id_example; // String | 

try {
    final result = api_instance.getContact(id);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->getContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactCategories**
> ContactCategoryListResponse listContactCategories(organizationId)

List contact categories. Requires `organization_id` query param.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final organizationId = organizationId_example; // String | 

try {
    final result = api_instance.listContactCategories(organizationId);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->listContactCategories: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | **String**|  | 

### Return type

[**ContactCategoryListResponse**](ContactCategoryListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContactProviders**
> ContactProviderListResponse listContactProviders()

List supported contact providers (native + OAuth-connected).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();

try {
    final result = api_instance.listContactProviders();
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->listContactProviders: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ContactProviderListResponse**](ContactProviderListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listContacts**
> ContactListResponse listContacts(limit, provider, search)

List the caller's contacts (across providers).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final limit = 56; // int | 
final provider = provider_example; // String | 
final search = search_example; // String | 

try {
    final result = api_instance.listContacts(limit, provider, search);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->listContacts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**|  | [optional] 
 **provider** | **String**|  | [optional] 
 **search** | **String**|  | [optional] 

### Return type

[**ContactListResponse**](ContactListResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unassignContactCategory**
> unassignContactCategory(id, categoryId)

Remove a category from a contact.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = id_example; // String | 
final categoryId = categoryId_example; // String | 

try {
    api_instance.unassignContactCategory(id, categoryId);
} catch (e) {
    print('Exception when calling ContactsApi->unassignContactCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **categoryId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateContact**
> Contact updateContact(id, updateContactRequest)

Update a contact.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = id_example; // String | 
final updateContactRequest = UpdateContactRequest(); // UpdateContactRequest | 

try {
    final result = api_instance.updateContact(id, updateContactRequest);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->updateContact: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateContactRequest** | [**UpdateContactRequest**](UpdateContactRequest.md)|  | 

### Return type

[**Contact**](Contact.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateContactCategory**
> ContactCategory updateContactCategory(id, updateContactCategoryRequest)

Update a category.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ContactsApi();
final id = id_example; // String | 
final updateContactCategoryRequest = UpdateContactCategoryRequest(); // UpdateContactCategoryRequest | 

try {
    final result = api_instance.updateContactCategory(id, updateContactCategoryRequest);
    print(result);
} catch (e) {
    print('Exception when calling ContactsApi->updateContactCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **updateContactCategoryRequest** | [**UpdateContactCategoryRequest**](UpdateContactCategoryRequest.md)|  | 

### Return type

[**ContactCategory**](ContactCategory.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

