//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:spatio_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WorkspacesApi
void main() {
  // final instance = WorkspacesApi();

  group('tests for WorkspacesApi', () {
    // Accept a workspace invitation by token. The signed-in user's email must match the invitation. Organization-token accept lives at `POST /v1/organizations/{org}/accept-invitation`. 
    //
    //Future<Map<String, Object>> acceptWorkspaceInvitation(String token) async
    test('test acceptWorkspaceInvitation', () async {
      // TODO
    });

    // Add a member directly (skips invitation flow).
    //
    //Future<Map<String, Object>> addWorkspaceMember(String workspaceId, AddWorkspaceMemberRequest addWorkspaceMemberRequest) async
    test('test addWorkspaceMember', () async {
      // TODO
    });

    // Create a workspace. Requires `organizationId` in the body — bare \"personal\" workspaces aren't supported on the public API. 
    //
    //Future<WorkspaceEnvelope> createWorkspace(CreateWorkspaceRequest createWorkspaceRequest) async
    test('test createWorkspace', () async {
      // TODO
    });

    // Invite a user to a workspace.
    //
    //Future<WorkspaceInvitation> createWorkspaceInvitation(String workspaceId, CreateWorkspaceInvitationRequest createWorkspaceInvitationRequest) async
    test('test createWorkspaceInvitation', () async {
      // TODO
    });

    // Fetch invitation details by token (unauthenticated). Used by the renderer to show invitation context before the user signs in. 
    //
    //Future<PublicInvitationPayload> getPublicInvitation(String token) async
    test('test getPublicInvitation', () async {
      // TODO
    });

    // Fetch a single workspace by id.
    //
    //Future<WorkspaceEnvelope> getWorkspace(String workspaceId) async
    test('test getWorkspace', () async {
      // TODO
    });

    // List the caller's workspaces (across organizations).
    //
    //Future<WorkspaceListResponse> listMyWorkspaces() async
    test('test listMyWorkspaces', () async {
      // TODO
    });

    // List pending workspace invitations.
    //
    //Future<WorkspaceInvitationListResponse> listWorkspaceInvitations(String workspaceId) async
    test('test listWorkspaceInvitations', () async {
      // TODO
    });

    // List members of a workspace.
    //
    //Future<WorkspaceMemberListResponse> listWorkspaceMembers(String workspaceId) async
    test('test listWorkspaceMembers', () async {
      // TODO
    });

    // Remove a member from the workspace.
    //
    //Future removeWorkspaceMember(String workspaceId, String memberId) async
    test('test removeWorkspaceMember', () async {
      // TODO
    });

    // Revoke a pending workspace invitation.
    //
    //Future revokeWorkspaceInvitation(String workspaceId, String invitationId) async
    test('test revokeWorkspaceInvitation', () async {
      // TODO
    });

    // Update workspace metadata.
    //
    //Future<WorkspaceEnvelope> updateWorkspace(String workspaceId, UpdateWorkspaceRequest updateWorkspaceRequest) async
    test('test updateWorkspace', () async {
      // TODO
    });

    // Update a member's role.
    //
    //Future<Map<String, Object>> updateWorkspaceMember(String workspaceId, String memberId, UpdateWorkspaceMemberRequest updateWorkspaceMemberRequest) async
    test('test updateWorkspaceMember', () async {
      // TODO
    });

  });
}
