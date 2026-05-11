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


/// tests for OrganizationsApi
void main() {
  // final instance = OrganizationsApi();

  group('tests for OrganizationsApi', () {
    // Accept an invitation to this organization.
    //
    //Future<Map<String, Object>> acceptOrganizationInvitation(String org, AcceptOrganizationInvitationRequest acceptOrganizationInvitationRequest) async
    test('test acceptOrganizationInvitation', () async {
      // TODO
    });

    // Add a member directly (skips invitation flow).
    //
    //Future<Map<String, Object>> addOrganizationMember(String org, AddOrganizationMemberRequest addOrganizationMemberRequest) async
    test('test addOrganizationMember', () async {
      // TODO
    });

    // Create an organization.
    //
    //Future<Map<String, Object>> createOrganization(CreateOrganizationRequest createOrganizationRequest) async
    test('test createOrganization', () async {
      // TODO
    });

    // Create an org-brain concept (admin+ only).
    //
    //Future<Map<String, Object>> createOrganizationConcept(String org, Map<String, Object> requestBody) async
    test('test createOrganizationConcept', () async {
      // TODO
    });

    // Create a custom role (admin+ only).
    //
    //Future<Map<String, Object>> createOrganizationCustomRole(String org, Map<String, Object> requestBody) async
    test('test createOrganizationCustomRole', () async {
      // TODO
    });

    // Invite a user to the organization.
    //
    // Pending invitations count toward seat cap. Free-tier callers at the cap receive a `402` with billing-upgrade payload; paid-tier auto-scales the Stripe quantity. 
    //
    //Future<OrganizationInvitation> createOrganizationInvitation(String org, CreateOrganizationInvitationRequest createOrganizationInvitationRequest) async
    test('test createOrganizationInvitation', () async {
      // TODO
    });

    // Create a workspace inside an organization.
    //
    // Requires the `OrgActionCreateWorkspace` action permission. Slug collisions auto-suffix (`-2`, `-3`, ...). 
    //
    //Future<WorkspaceEnvelope> createOrganizationWorkspace(String org, CreateWorkspaceRequest createWorkspaceRequest) async
    test('test createOrganizationWorkspace', () async {
      // TODO
    });

    // Delete an organization.
    //
    //Future deleteOrganization(String org) async
    test('test deleteOrganization', () async {
      // TODO
    });

    // Delete a concept (admin+ only).
    //
    //Future deleteOrganizationConcept(String org, String slug) async
    test('test deleteOrganizationConcept', () async {
      // TODO
    });

    // Delete a custom role (admin+ only).
    //
    //Future deleteOrganizationCustomRole(String org, String roleId) async
    test('test deleteOrganizationCustomRole', () async {
      // TODO
    });

    // Delete the organization logo.
    //
    //Future deleteOrganizationLogo(String org) async
    test('test deleteOrganizationLogo', () async {
      // TODO
    });

    // Fetch a single organization.
    //
    // **Wire format note:** response uses PascalCase keys (`ID`, `Name`, `Slug`, ...) — distinct from the rest of the SpatioAPI's camelCase convention. Documented as-is; a future cleanup will harmonize. 
    //
    //Future<OrganizationDetailLegacy> getOrganization(String org) async
    test('test getOrganization', () async {
      // TODO
    });

    // Fetch a concept.
    //
    //Future<Map<String, Object>> getOrganizationConcept(String org, String slug) async
    test('test getOrganizationConcept', () async {
      // TODO
    });

    // List the caller's organizations.
    //
    //Future<OrganizationListResponse> listMyOrganizations() async
    test('test listMyOrganizations', () async {
      // TODO
    });

    // Read the organization audit log (admin / billing-admin only).
    //
    //Future<Map<String, Object>> listOrganizationAuditLog(String org, { int limit, String cursor }) async
    test('test listOrganizationAuditLog', () async {
      // TODO
    });

    // List org-brain concepts (curated knowledge surfaced to agents).
    //
    //Future<Map<String, Object>> listOrganizationConcepts(String org) async
    test('test listOrganizationConcepts', () async {
      // TODO
    });

    // List custom roles defined on the organization.
    //
    //Future<Map<String, Object>> listOrganizationCustomRoles(String org) async
    test('test listOrganizationCustomRoles', () async {
      // TODO
    });

    // List pending invitations for an organization.
    //
    //Future<OrganizationInvitationListResponse> listOrganizationInvitations(String org) async
    test('test listOrganizationInvitations', () async {
      // TODO
    });

    // List members of an organization.
    //
    //Future<OrganizationMemberListResponse> listOrganizationMembers(String org) async
    test('test listOrganizationMembers', () async {
      // TODO
    });

    // List workspaces in an organization.
    //
    //Future<WorkspaceListResponse> listOrganizationWorkspaces(String org) async
    test('test listOrganizationWorkspaces', () async {
      // TODO
    });

    // Remove a member from the organization.
    //
    //Future removeOrganizationMember(String org, String memberId) async
    test('test removeOrganizationMember', () async {
      // TODO
    });

    // Revoke and reissue an invitation with a fresh token.
    //
    //Future<OrganizationInvitation> resendOrganizationInvitation(String org, String invitationId) async
    test('test resendOrganizationInvitation', () async {
      // TODO
    });

    // Revoke a pending invitation.
    //
    //Future revokeOrganizationInvitation(String org, String invitationId) async
    test('test revokeOrganizationInvitation', () async {
      // TODO
    });

    // Update organization metadata.
    //
    //Future<Map<String, Object>> updateOrganization(String org, UpdateOrganizationRequest updateOrganizationRequest) async
    test('test updateOrganization', () async {
      // TODO
    });

    // Update a concept (admin+ only).
    //
    //Future<Map<String, Object>> updateOrganizationConcept(String org, String slug, Map<String, Object> requestBody) async
    test('test updateOrganizationConcept', () async {
      // TODO
    });

    // Update a custom role (admin+ only).
    //
    //Future<Map<String, Object>> updateOrganizationCustomRole(String org, String roleId, Map<String, Object> requestBody) async
    test('test updateOrganizationCustomRole', () async {
      // TODO
    });

    // Update a member's role.
    //
    //Future<Map<String, Object>> updateOrganizationMember(String org, String memberId, UpdateOrganizationMemberRequest updateOrganizationMemberRequest) async
    test('test updateOrganizationMember', () async {
      // TODO
    });

    // Upload (or replace) the organization logo. Multipart.
    //
    //Future<Map<String, Object>> uploadOrganizationLogo(String org, { MultipartFile file }) async
    test('test uploadOrganizationLogo', () async {
      // TODO
    });

  });
}
