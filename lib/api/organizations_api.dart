//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class OrganizationsApi {
  OrganizationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Accept an invitation to this organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [AcceptOrganizationInvitationRequest] acceptOrganizationInvitationRequest (required):
  Future<Response> acceptOrganizationInvitationWithHttpInfo(String org, AcceptOrganizationInvitationRequest acceptOrganizationInvitationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/accept-invitation'
      .replaceAll('{org}', org);

    // ignore: prefer_final_locals
    Object? postBody = acceptOrganizationInvitationRequest;

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

  /// Accept an invitation to this organization.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [AcceptOrganizationInvitationRequest] acceptOrganizationInvitationRequest (required):
  Future<Map<String, Object>?> acceptOrganizationInvitation(String org, AcceptOrganizationInvitationRequest acceptOrganizationInvitationRequest,) async {
    final response = await acceptOrganizationInvitationWithHttpInfo(org, acceptOrganizationInvitationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Add a member directly (skips invitation flow).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [AddOrganizationMemberRequest] addOrganizationMemberRequest (required):
  Future<Response> addOrganizationMemberWithHttpInfo(String org, AddOrganizationMemberRequest addOrganizationMemberRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/members'
      .replaceAll('{org}', org);

    // ignore: prefer_final_locals
    Object? postBody = addOrganizationMemberRequest;

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

  /// Add a member directly (skips invitation flow).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [AddOrganizationMemberRequest] addOrganizationMemberRequest (required):
  Future<Map<String, Object>?> addOrganizationMember(String org, AddOrganizationMemberRequest addOrganizationMemberRequest,) async {
    final response = await addOrganizationMemberWithHttpInfo(org, addOrganizationMemberRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Create an organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateOrganizationRequest] createOrganizationRequest (required):
  Future<Response> createOrganizationWithHttpInfo(CreateOrganizationRequest createOrganizationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations';

    // ignore: prefer_final_locals
    Object? postBody = createOrganizationRequest;

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

  /// Create an organization.
  ///
  /// Parameters:
  ///
  /// * [CreateOrganizationRequest] createOrganizationRequest (required):
  Future<Map<String, Object>?> createOrganization(CreateOrganizationRequest createOrganizationRequest,) async {
    final response = await createOrganizationWithHttpInfo(createOrganizationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Create an org-brain concept (admin+ only).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> createOrganizationConceptWithHttpInfo(String org, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/concepts'
      .replaceAll('{org}', org);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Create an org-brain concept (admin+ only).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> createOrganizationConcept(String org, Map<String, Object> requestBody,) async {
    final response = await createOrganizationConceptWithHttpInfo(org, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Create a custom role (admin+ only).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> createOrganizationCustomRoleWithHttpInfo(String org, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/roles'
      .replaceAll('{org}', org);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Create a custom role (admin+ only).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> createOrganizationCustomRole(String org, Map<String, Object> requestBody,) async {
    final response = await createOrganizationCustomRoleWithHttpInfo(org, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Invite a user to the organization.
  ///
  /// Pending invitations count toward seat cap. Free-tier callers at the cap receive a `402` with billing-upgrade payload; paid-tier auto-scales the Stripe quantity. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [CreateOrganizationInvitationRequest] createOrganizationInvitationRequest (required):
  Future<Response> createOrganizationInvitationWithHttpInfo(String org, CreateOrganizationInvitationRequest createOrganizationInvitationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/invitations'
      .replaceAll('{org}', org);

    // ignore: prefer_final_locals
    Object? postBody = createOrganizationInvitationRequest;

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

  /// Invite a user to the organization.
  ///
  /// Pending invitations count toward seat cap. Free-tier callers at the cap receive a `402` with billing-upgrade payload; paid-tier auto-scales the Stripe quantity. 
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [CreateOrganizationInvitationRequest] createOrganizationInvitationRequest (required):
  Future<OrganizationInvitation?> createOrganizationInvitation(String org, CreateOrganizationInvitationRequest createOrganizationInvitationRequest,) async {
    final response = await createOrganizationInvitationWithHttpInfo(org, createOrganizationInvitationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrganizationInvitation',) as OrganizationInvitation;
    
    }
    return null;
  }

  /// Create a workspace inside an organization.
  ///
  /// Requires the `OrgActionCreateWorkspace` action permission. Slug collisions auto-suffix (`-2`, `-3`, ...). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [CreateWorkspaceRequest] createWorkspaceRequest (required):
  Future<Response> createOrganizationWorkspaceWithHttpInfo(String org, CreateWorkspaceRequest createWorkspaceRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces'
      .replaceAll('{org}', org);

    // ignore: prefer_final_locals
    Object? postBody = createWorkspaceRequest;

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

  /// Create a workspace inside an organization.
  ///
  /// Requires the `OrgActionCreateWorkspace` action permission. Slug collisions auto-suffix (`-2`, `-3`, ...). 
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [CreateWorkspaceRequest] createWorkspaceRequest (required):
  Future<WorkspaceEnvelope?> createOrganizationWorkspace(String org, CreateWorkspaceRequest createWorkspaceRequest,) async {
    final response = await createOrganizationWorkspaceWithHttpInfo(org, createWorkspaceRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkspaceEnvelope',) as WorkspaceEnvelope;
    
    }
    return null;
  }

  /// Delete an organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Organization id or slug.
  Future<Response> deleteOrganizationWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}'
      .replaceAll('{org}', org);

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

  /// Delete an organization.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Organization id or slug.
  Future<void> deleteOrganization(String org,) async {
    final response = await deleteOrganizationWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a concept (admin+ only).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] slug (required):
  Future<Response> deleteOrganizationConceptWithHttpInfo(String org, String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/concepts/{slug}'
      .replaceAll('{org}', org)
      .replaceAll('{slug}', slug);

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

  /// Delete a concept (admin+ only).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] slug (required):
  Future<void> deleteOrganizationConcept(String org, String slug,) async {
    final response = await deleteOrganizationConceptWithHttpInfo(org, slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a custom role (admin+ only).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] roleId (required):
  Future<Response> deleteOrganizationCustomRoleWithHttpInfo(String org, String roleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/roles/{roleId}'
      .replaceAll('{org}', org)
      .replaceAll('{roleId}', roleId);

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

  /// Delete a custom role (admin+ only).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] roleId (required):
  Future<void> deleteOrganizationCustomRole(String org, String roleId,) async {
    final response = await deleteOrganizationCustomRoleWithHttpInfo(org, roleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete the organization logo.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<Response> deleteOrganizationLogoWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/logo'
      .replaceAll('{org}', org);

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

  /// Delete the organization logo.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<void> deleteOrganizationLogo(String org,) async {
    final response = await deleteOrganizationLogoWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Fetch a single organization.
  ///
  /// **Wire format note:** response uses PascalCase keys (`ID`, `Name`, `Slug`, ...) — distinct from the rest of the SpatioAPI's camelCase convention. Documented as-is; a future cleanup will harmonize. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Organization id or slug.
  Future<Response> getOrganizationWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}'
      .replaceAll('{org}', org);

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

  /// Fetch a single organization.
  ///
  /// **Wire format note:** response uses PascalCase keys (`ID`, `Name`, `Slug`, ...) — distinct from the rest of the SpatioAPI's camelCase convention. Documented as-is; a future cleanup will harmonize. 
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Organization id or slug.
  Future<OrganizationDetailLegacy?> getOrganization(String org,) async {
    final response = await getOrganizationWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrganizationDetailLegacy',) as OrganizationDetailLegacy;
    
    }
    return null;
  }

  /// Fetch a concept.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] slug (required):
  Future<Response> getOrganizationConceptWithHttpInfo(String org, String slug,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/concepts/{slug}'
      .replaceAll('{org}', org)
      .replaceAll('{slug}', slug);

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

  /// Fetch a concept.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] slug (required):
  Future<Map<String, Object>?> getOrganizationConcept(String org, String slug,) async {
    final response = await getOrganizationConceptWithHttpInfo(org, slug,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// List the caller's organizations.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listMyOrganizationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations';

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

  /// List the caller's organizations.
  Future<OrganizationListResponse?> listMyOrganizations() async {
    final response = await listMyOrganizationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrganizationListResponse',) as OrganizationListResponse;
    
    }
    return null;
  }

  /// Read the organization audit log (admin / billing-admin only).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [int] limit:
  ///
  /// * [String] cursor:
  Future<Response> listOrganizationAuditLogWithHttpInfo(String org, { int? limit, String? cursor, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/audit-log'
      .replaceAll('{org}', org);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
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

  /// Read the organization audit log (admin / billing-admin only).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [int] limit:
  ///
  /// * [String] cursor:
  Future<Map<String, Object>?> listOrganizationAuditLog(String org, { int? limit, String? cursor, }) async {
    final response = await listOrganizationAuditLogWithHttpInfo(org,  limit: limit, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// List org-brain concepts (curated knowledge surfaced to agents).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<Response> listOrganizationConceptsWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/concepts'
      .replaceAll('{org}', org);

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

  /// List org-brain concepts (curated knowledge surfaced to agents).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<Map<String, Object>?> listOrganizationConcepts(String org,) async {
    final response = await listOrganizationConceptsWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// List custom roles defined on the organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<Response> listOrganizationCustomRolesWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/roles'
      .replaceAll('{org}', org);

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

  /// List custom roles defined on the organization.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<Map<String, Object>?> listOrganizationCustomRoles(String org,) async {
    final response = await listOrganizationCustomRolesWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// List pending invitations for an organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<Response> listOrganizationInvitationsWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/invitations'
      .replaceAll('{org}', org);

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

  /// List pending invitations for an organization.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<OrganizationInvitationListResponse?> listOrganizationInvitations(String org,) async {
    final response = await listOrganizationInvitationsWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrganizationInvitationListResponse',) as OrganizationInvitationListResponse;
    
    }
    return null;
  }

  /// List members of an organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<Response> listOrganizationMembersWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/members'
      .replaceAll('{org}', org);

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

  /// List members of an organization.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<OrganizationMemberListResponse?> listOrganizationMembers(String org,) async {
    final response = await listOrganizationMembersWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrganizationMemberListResponse',) as OrganizationMemberListResponse;
    
    }
    return null;
  }

  /// List workspaces in an organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<Response> listOrganizationWorkspacesWithHttpInfo(String org,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces'
      .replaceAll('{org}', org);

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

  /// List workspaces in an organization.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  Future<WorkspaceListResponse?> listOrganizationWorkspaces(String org,) async {
    final response = await listOrganizationWorkspacesWithHttpInfo(org,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkspaceListResponse',) as WorkspaceListResponse;
    
    }
    return null;
  }

  /// Remove a member from the organization.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] memberId (required):
  Future<Response> removeOrganizationMemberWithHttpInfo(String org, String memberId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/members/{memberId}'
      .replaceAll('{org}', org)
      .replaceAll('{memberId}', memberId);

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

  /// Remove a member from the organization.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] memberId (required):
  Future<void> removeOrganizationMember(String org, String memberId,) async {
    final response = await removeOrganizationMemberWithHttpInfo(org, memberId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revoke and reissue an invitation with a fresh token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] invitationId (required):
  Future<Response> resendOrganizationInvitationWithHttpInfo(String org, String invitationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/invitations/{invitationId}/resend'
      .replaceAll('{org}', org)
      .replaceAll('{invitationId}', invitationId);

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

  /// Revoke and reissue an invitation with a fresh token.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] invitationId (required):
  Future<OrganizationInvitation?> resendOrganizationInvitation(String org, String invitationId,) async {
    final response = await resendOrganizationInvitationWithHttpInfo(org, invitationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OrganizationInvitation',) as OrganizationInvitation;
    
    }
    return null;
  }

  /// Revoke a pending invitation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] invitationId (required):
  Future<Response> revokeOrganizationInvitationWithHttpInfo(String org, String invitationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/invitations/{invitationId}'
      .replaceAll('{org}', org)
      .replaceAll('{invitationId}', invitationId);

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

  /// Revoke a pending invitation.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] invitationId (required):
  Future<void> revokeOrganizationInvitation(String org, String invitationId,) async {
    final response = await revokeOrganizationInvitationWithHttpInfo(org, invitationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update organization metadata.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Organization id or slug.
  ///
  /// * [UpdateOrganizationRequest] updateOrganizationRequest (required):
  Future<Response> updateOrganizationWithHttpInfo(String org, UpdateOrganizationRequest updateOrganizationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}'
      .replaceAll('{org}', org);

    // ignore: prefer_final_locals
    Object? postBody = updateOrganizationRequest;

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

  /// Update organization metadata.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///   Organization id or slug.
  ///
  /// * [UpdateOrganizationRequest] updateOrganizationRequest (required):
  Future<Map<String, Object>?> updateOrganization(String org, UpdateOrganizationRequest updateOrganizationRequest,) async {
    final response = await updateOrganizationWithHttpInfo(org, updateOrganizationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Update a concept (admin+ only).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] slug (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> updateOrganizationConceptWithHttpInfo(String org, String slug, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/concepts/{slug}'
      .replaceAll('{org}', org)
      .replaceAll('{slug}', slug);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Update a concept (admin+ only).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] slug (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> updateOrganizationConcept(String org, String slug, Map<String, Object> requestBody,) async {
    final response = await updateOrganizationConceptWithHttpInfo(org, slug, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Update a custom role (admin+ only).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] roleId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> updateOrganizationCustomRoleWithHttpInfo(String org, String roleId, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/roles/{roleId}'
      .replaceAll('{org}', org)
      .replaceAll('{roleId}', roleId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Update a custom role (admin+ only).
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] roleId (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> updateOrganizationCustomRole(String org, String roleId, Map<String, Object> requestBody,) async {
    final response = await updateOrganizationCustomRoleWithHttpInfo(org, roleId, requestBody,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Update a member's role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] memberId (required):
  ///
  /// * [UpdateOrganizationMemberRequest] updateOrganizationMemberRequest (required):
  Future<Response> updateOrganizationMemberWithHttpInfo(String org, String memberId, UpdateOrganizationMemberRequest updateOrganizationMemberRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/members/{memberId}'
      .replaceAll('{org}', org)
      .replaceAll('{memberId}', memberId);

    // ignore: prefer_final_locals
    Object? postBody = updateOrganizationMemberRequest;

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

  /// Update a member's role.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] memberId (required):
  ///
  /// * [UpdateOrganizationMemberRequest] updateOrganizationMemberRequest (required):
  Future<Map<String, Object>?> updateOrganizationMember(String org, String memberId, UpdateOrganizationMemberRequest updateOrganizationMemberRequest,) async {
    final response = await updateOrganizationMemberWithHttpInfo(org, memberId, updateOrganizationMemberRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Upload (or replace) the organization logo. Multipart.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [MultipartFile] file:
  Future<Response> uploadOrganizationLogoWithHttpInfo(String org, { MultipartFile? file, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/logo'
      .replaceAll('{org}', org);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    if (file != null) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    if (hasFields) {
      postBody = mp;
    }

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

  /// Upload (or replace) the organization logo. Multipart.
  ///
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [MultipartFile] file:
  Future<Map<String, Object>?> uploadOrganizationLogo(String org, { MultipartFile? file, }) async {
    final response = await uploadOrganizationLogoWithHttpInfo(org,  file: file, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }
}
