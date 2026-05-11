//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class ContactsApi {
  ContactsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Assign a category to a contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [AssignContactCategoryRequest] assignContactCategoryRequest (required):
  Future<Response> assignContactCategoryWithHttpInfo(String id, AssignContactCategoryRequest assignContactCategoryRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/{id}/categories'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = assignContactCategoryRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Assign a category to a contact.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [AssignContactCategoryRequest] assignContactCategoryRequest (required):
  Future<void> assignContactCategory(String id, AssignContactCategoryRequest assignContactCategoryRequest,) async {
    final response = await assignContactCategoryWithHttpInfo(id, assignContactCategoryRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create a contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateContactRequest] createContactRequest (required):
  Future<Response> createContactWithHttpInfo(CreateContactRequest createContactRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts';

    // ignore: prefer_final_locals
    Object? postBody = createContactRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a contact.
  ///
  /// Parameters:
  ///
  /// * [CreateContactRequest] createContactRequest (required):
  Future<Contact?> createContact(CreateContactRequest createContactRequest,) async {
    final response = await createContactWithHttpInfo(createContactRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Contact',) as Contact;
    
    }
    return null;
  }

  /// Create a contact category.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateContactCategoryRequest] createContactCategoryRequest (required):
  Future<Response> createContactCategoryWithHttpInfo(CreateContactCategoryRequest createContactCategoryRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/categories';

    // ignore: prefer_final_locals
    Object? postBody = createContactCategoryRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a contact category.
  ///
  /// Parameters:
  ///
  /// * [CreateContactCategoryRequest] createContactCategoryRequest (required):
  Future<ContactCategory?> createContactCategory(CreateContactCategoryRequest createContactCategoryRequest,) async {
    final response = await createContactCategoryWithHttpInfo(createContactCategoryRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactCategory',) as ContactCategory;
    
    }
    return null;
  }

  /// Delete a contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteContactWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a contact.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteContact(String id,) async {
    final response = await deleteContactWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a category.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteContactCategoryWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/categories/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a category.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteContactCategory(String id,) async {
    final response = await deleteContactCategoryWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch a contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getContactWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Fetch a contact.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Contact?> getContact(String id,) async {
    final response = await getContactWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Contact',) as Contact;
    
    }
    return null;
  }

  /// List contact categories. Requires `organization_id` query param.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<Response> listContactCategoriesWithHttpInfo(String organizationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/categories';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'organization_id', organizationId));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List contact categories. Requires `organization_id` query param.
  ///
  /// Parameters:
  ///
  /// * [String] organizationId (required):
  Future<ContactCategoryListResponse?> listContactCategories(String organizationId,) async {
    final response = await listContactCategoriesWithHttpInfo(organizationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactCategoryListResponse',) as ContactCategoryListResponse;
    
    }
    return null;
  }

  /// List supported contact providers (native + OAuth-connected).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listContactProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/providers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List supported contact providers (native + OAuth-connected).
  Future<ContactProviderListResponse?> listContactProviders() async {
    final response = await listContactProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactProviderListResponse',) as ContactProviderListResponse;
    
    }
    return null;
  }

  /// List the caller's contacts (across providers).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///
  /// * [String] provider:
  ///
  /// * [String] search:
  Future<Response> listContactsWithHttpInfo({ int? limit, String? provider, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List the caller's contacts (across providers).
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///
  /// * [String] provider:
  ///
  /// * [String] search:
  Future<ContactListResponse?> listContacts({ int? limit, String? provider, String? search, }) async {
    final response = await listContactsWithHttpInfo( limit: limit, provider: provider, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactListResponse',) as ContactListResponse;
    
    }
    return null;
  }

  /// Remove a category from a contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] categoryId (required):
  Future<Response> unassignContactCategoryWithHttpInfo(String id, String categoryId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/{id}/categories/{categoryId}'
      .replaceAll('{id}', id)
      .replaceAll('{categoryId}', categoryId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Remove a category from a contact.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] categoryId (required):
  Future<void> unassignContactCategory(String id, String categoryId,) async {
    final response = await unassignContactCategoryWithHttpInfo(id, categoryId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update a contact.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateContactRequest] updateContactRequest (required):
  Future<Response> updateContactWithHttpInfo(String id, UpdateContactRequest updateContactRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateContactRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a contact.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateContactRequest] updateContactRequest (required):
  Future<Contact?> updateContact(String id, UpdateContactRequest updateContactRequest,) async {
    final response = await updateContactWithHttpInfo(id, updateContactRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Contact',) as Contact;
    
    }
    return null;
  }

  /// Update a category.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateContactCategoryRequest] updateContactCategoryRequest (required):
  Future<Response> updateContactCategoryWithHttpInfo(String id, UpdateContactCategoryRequest updateContactCategoryRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/contacts/categories/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateContactCategoryRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a category.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateContactCategoryRequest] updateContactCategoryRequest (required):
  Future<ContactCategory?> updateContactCategory(String id, UpdateContactCategoryRequest updateContactCategoryRequest,) async {
    final response = await updateContactCategoryWithHttpInfo(id, updateContactCategoryRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ContactCategory',) as ContactCategory;
    
    }
    return null;
  }
}
