//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class KeybindingsApi {
  KeybindingsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Reset a binding to its platform default.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteKeyBindingWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keybindings/{id}'
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

  /// Reset a binding to its platform default.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteKeyBinding(String id,) async {
    final response = await deleteKeyBindingWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Platform default key bindings (no user customizations applied).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDefaultKeyBindingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keybindings/defaults';

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

  /// Platform default key bindings (no user customizations applied).
  Future<KeyBindingListResponse?> getDefaultKeyBindings() async {
    final response = await getDefaultKeyBindingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KeyBindingListResponse',) as KeyBindingListResponse;
    
    }
    return null;
  }

  /// User's merged key bindings (defaults + customizations).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listKeyBindingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keybindings';

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

  /// User's merged key bindings (defaults + customizations).
  Future<KeyBindingListResponse?> listKeyBindings() async {
    final response = await listKeyBindingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KeyBindingListResponse',) as KeyBindingListResponse;
    
    }
    return null;
  }

  /// Reset every customization to its platform default.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> resetAllKeyBindingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keybindings/reset';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Reset every customization to its platform default.
  Future<void> resetAllKeyBindings() async {
    final response = await resetAllKeyBindingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create or update a user key-binding customization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateKeyBindingRequest] updateKeyBindingRequest (required):
  Future<Response> updateKeyBindingWithHttpInfo(String id, UpdateKeyBindingRequest updateKeyBindingRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keybindings/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateKeyBindingRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create or update a user key-binding customization.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateKeyBindingRequest] updateKeyBindingRequest (required):
  Future<KeyBinding?> updateKeyBinding(String id, UpdateKeyBindingRequest updateKeyBindingRequest,) async {
    final response = await updateKeyBindingWithHttpInfo(id, updateKeyBindingRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'KeyBinding',) as KeyBinding;
    
    }
    return null;
  }

  /// Check whether a proposed binding conflicts with existing ones.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ValidateKeyBindingRequest] validateKeyBindingRequest (required):
  Future<Response> validateKeyBindingWithHttpInfo(ValidateKeyBindingRequest validateKeyBindingRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keybindings/validate';

    // ignore: prefer_final_locals
    Object? postBody = validateKeyBindingRequest;

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

  /// Check whether a proposed binding conflicts with existing ones.
  ///
  /// Parameters:
  ///
  /// * [ValidateKeyBindingRequest] validateKeyBindingRequest (required):
  Future<ValidateKeyBindingResponse?> validateKeyBinding(ValidateKeyBindingRequest validateKeyBindingRequest,) async {
    final response = await validateKeyBindingWithHttpInfo(validateKeyBindingRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidateKeyBindingResponse',) as ValidateKeyBindingResponse;
    
    }
    return null;
  }
}
