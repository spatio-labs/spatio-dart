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


/// tests for PersonalAccessTokensApi
void main() {
  // final instance = PersonalAccessTokensApi();

  group('tests for PersonalAccessTokensApi', () {
    // Create a new PAT. The full token is returned only once on creation; the API never reveals the secret again. 
    //
    //Future<CreatePATResponse> createPersonalAccessToken(CreatePATRequest createPATRequest) async
    test('test createPersonalAccessToken', () async {
      // TODO
    });

    // List the scope strings PATs can be issued with.
    //
    //Future<PATScopesResponse> listAvailablePATScopes() async
    test('test listAvailablePATScopes', () async {
      // TODO
    });

    // List the caller's personal access tokens (with available scopes).
    //
    //Future<PATListResponse> listPersonalAccessTokens() async
    test('test listPersonalAccessTokens', () async {
      // TODO
    });

    // Revoke a PAT.
    //
    //Future revokePersonalAccessToken(String id) async
    test('test revokePersonalAccessToken', () async {
      // TODO
    });

    // Rename or re-describe a PAT (scopes are immutable).
    //
    //Future<PersonalAccessToken> updatePersonalAccessToken(String id, UpdatePATRequest updatePATRequest) async
    test('test updatePersonalAccessToken', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCreatePAT(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCreatePAT', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListPATs(String org, String workspace) async
    test('test workspaceListPATs', () async {
      // TODO
    });

    //Future workspaceRevokePAT(String org, String workspace, String id) async
    test('test workspaceRevokePAT', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceUpdatePAT(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceUpdatePAT', () async {
      // TODO
    });

  });
}
