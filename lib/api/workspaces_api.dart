//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class WorkspacesApi {
  WorkspacesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Accept a workspace invitation by token. The signed-in user's email must match the invitation. Organization-token accept lives at `POST /v1/organizations/{org}/accept-invitation`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<Response> acceptWorkspaceInvitationWithHttpInfo(String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/invitations/{token}/accept'
      .replaceAll('{token}', token);

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

  /// Accept a workspace invitation by token. The signed-in user's email must match the invitation. Organization-token accept lives at `POST /v1/organizations/{org}/accept-invitation`. 
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<Map<String, Object>?> acceptWorkspaceInvitation(String token,) async {
    final response = await acceptWorkspaceInvitationWithHttpInfo(token,);
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
  /// * [String] workspaceId (required):
  ///
  /// * [AddWorkspaceMemberRequest] addWorkspaceMemberRequest (required):
  Future<Response> addWorkspaceMemberWithHttpInfo(String workspaceId, AddWorkspaceMemberRequest addWorkspaceMemberRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/workspaces/{workspaceId}/members'
      .replaceAll('{workspaceId}', workspaceId);

    // ignore: prefer_final_locals
    Object? postBody = addWorkspaceMemberRequest;

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
  /// * [String] workspaceId (required):
  ///
  /// * [AddWorkspaceMemberRequest] addWorkspaceMemberRequest (required):
  Future<Map<String, Object>?> addWorkspaceMember(String workspaceId, AddWorkspaceMemberRequest addWorkspaceMemberRequest,) async {
    final response = await addWorkspaceMemberWithHttpInfo(workspaceId, addWorkspaceMemberRequest,);
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

  /// Create a workspace. Requires `organizationId` in the body — bare \"personal\" workspaces aren't supported on the public API. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateWorkspaceRequest] createWorkspaceRequest (required):
  Future<Response> createWorkspaceWithHttpInfo(CreateWorkspaceRequest createWorkspaceRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/workspaces';

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

  /// Create a workspace. Requires `organizationId` in the body — bare \"personal\" workspaces aren't supported on the public API. 
  ///
  /// Parameters:
  ///
  /// * [CreateWorkspaceRequest] createWorkspaceRequest (required):
  Future<WorkspaceEnvelope?> createWorkspace(CreateWorkspaceRequest createWorkspaceRequest,) async {
    final response = await createWorkspaceWithHttpInfo(createWorkspaceRequest,);
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

  /// Invite a user to a workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  ///
  /// * [CreateWorkspaceInvitationRequest] createWorkspaceInvitationRequest (required):
  Future<Response> createWorkspaceInvitationWithHttpInfo(String workspaceId, CreateWorkspaceInvitationRequest createWorkspaceInvitationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/workspaces/{workspaceId}/invitations'
      .replaceAll('{workspaceId}', workspaceId);

    // ignore: prefer_final_locals
    Object? postBody = createWorkspaceInvitationRequest;

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

  /// Invite a user to a workspace.
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  ///
  /// * [CreateWorkspaceInvitationRequest] createWorkspaceInvitationRequest (required):
  Future<WorkspaceInvitation?> createWorkspaceInvitation(String workspaceId, CreateWorkspaceInvitationRequest createWorkspaceInvitationRequest,) async {
    final response = await createWorkspaceInvitationWithHttpInfo(workspaceId, createWorkspaceInvitationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkspaceInvitation',) as WorkspaceInvitation;
    
    }
    return null;
  }

  /// Fetch invitation details by token (unauthenticated). Used by the renderer to show invitation context before the user signs in. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<Response> getPublicInvitationWithHttpInfo(String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/invitations/{token}'
      .replaceAll('{token}', token);

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

  /// Fetch invitation details by token (unauthenticated). Used by the renderer to show invitation context before the user signs in. 
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<PublicInvitationPayload?> getPublicInvitation(String token,) async {
    final response = await getPublicInvitationWithHttpInfo(token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PublicInvitationPayload',) as PublicInvitationPayload;
    
    }
    return null;
  }

  /// Fetch a single workspace by id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  Future<Response> getWorkspaceWithHttpInfo(String workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/workspaces/{workspaceId}'
      .replaceAll('{workspaceId}', workspaceId);

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

  /// Fetch a single workspace by id.
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  Future<WorkspaceEnvelope?> getWorkspace(String workspaceId,) async {
    final response = await getWorkspaceWithHttpInfo(workspaceId,);
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

  /// List the caller's workspaces (across organizations).
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listMyWorkspacesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/workspaces';

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

  /// List the caller's workspaces (across organizations).
  Future<WorkspaceListResponse?> listMyWorkspaces() async {
    final response = await listMyWorkspacesWithHttpInfo();
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

  /// List pending workspace invitations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  Future<Response> listWorkspaceInvitationsWithHttpInfo(String workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/workspaces/{workspaceId}/invitations'
      .replaceAll('{workspaceId}', workspaceId);

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

  /// List pending workspace invitations.
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  Future<WorkspaceInvitationListResponse?> listWorkspaceInvitations(String workspaceId,) async {
    final response = await listWorkspaceInvitationsWithHttpInfo(workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkspaceInvitationListResponse',) as WorkspaceInvitationListResponse;
    
    }
    return null;
  }

  /// List members of a workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  Future<Response> listWorkspaceMembersWithHttpInfo(String workspaceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/workspaces/{workspaceId}/members'
      .replaceAll('{workspaceId}', workspaceId);

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

  /// List members of a workspace.
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  Future<WorkspaceMemberListResponse?> listWorkspaceMembers(String workspaceId,) async {
    final response = await listWorkspaceMembersWithHttpInfo(workspaceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WorkspaceMemberListResponse',) as WorkspaceMemberListResponse;
    
    }
    return null;
  }

  /// Remove a member from the workspace.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  ///
  /// * [String] memberId (required):
  Future<Response> removeWorkspaceMemberWithHttpInfo(String workspaceId, String memberId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/workspaces/{workspaceId}/members/{memberId}'
      .replaceAll('{workspaceId}', workspaceId)
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

  /// Remove a member from the workspace.
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  ///
  /// * [String] memberId (required):
  Future<void> removeWorkspaceMember(String workspaceId, String memberId,) async {
    final response = await removeWorkspaceMemberWithHttpInfo(workspaceId, memberId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revoke a pending workspace invitation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  ///
  /// * [String] invitationId (required):
  Future<Response> revokeWorkspaceInvitationWithHttpInfo(String workspaceId, String invitationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/workspaces/{workspaceId}/invitations/{invitationId}'
      .replaceAll('{workspaceId}', workspaceId)
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

  /// Revoke a pending workspace invitation.
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  ///
  /// * [String] invitationId (required):
  Future<void> revokeWorkspaceInvitation(String workspaceId, String invitationId,) async {
    final response = await revokeWorkspaceInvitationWithHttpInfo(workspaceId, invitationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update workspace metadata.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  ///
  /// * [UpdateWorkspaceRequest] updateWorkspaceRequest (required):
  Future<Response> updateWorkspaceWithHttpInfo(String workspaceId, UpdateWorkspaceRequest updateWorkspaceRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/workspaces/{workspaceId}'
      .replaceAll('{workspaceId}', workspaceId);

    // ignore: prefer_final_locals
    Object? postBody = updateWorkspaceRequest;

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

  /// Update workspace metadata.
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  ///
  /// * [UpdateWorkspaceRequest] updateWorkspaceRequest (required):
  Future<WorkspaceEnvelope?> updateWorkspace(String workspaceId, UpdateWorkspaceRequest updateWorkspaceRequest,) async {
    final response = await updateWorkspaceWithHttpInfo(workspaceId, updateWorkspaceRequest,);
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

  /// Update a member's role.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workspaceId (required):
  ///
  /// * [String] memberId (required):
  ///
  /// * [UpdateWorkspaceMemberRequest] updateWorkspaceMemberRequest (required):
  Future<Response> updateWorkspaceMemberWithHttpInfo(String workspaceId, String memberId, UpdateWorkspaceMemberRequest updateWorkspaceMemberRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/workspaces/{workspaceId}/members/{memberId}'
      .replaceAll('{workspaceId}', workspaceId)
      .replaceAll('{memberId}', memberId);

    // ignore: prefer_final_locals
    Object? postBody = updateWorkspaceMemberRequest;

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
  /// * [String] workspaceId (required):
  ///
  /// * [String] memberId (required):
  ///
  /// * [UpdateWorkspaceMemberRequest] updateWorkspaceMemberRequest (required):
  Future<Map<String, Object>?> updateWorkspaceMember(String workspaceId, String memberId, UpdateWorkspaceMemberRequest updateWorkspaceMemberRequest,) async {
    final response = await updateWorkspaceMemberWithHttpInfo(workspaceId, memberId, updateWorkspaceMemberRequest,);
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
