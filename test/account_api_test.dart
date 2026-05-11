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


/// tests for AccountApi
void main() {
  // final instance = AccountApi();

  group('tests for AccountApi', () {
    // Change or set the account password.
    //
    //Future changePassword(ChangePasswordRequest changePasswordRequest) async
    test('test changePassword', () async {
      // TODO
    });

    // Atomic check + increment on the agent-task counter (one slot per turn).
    //
    //Future<ConsumeAgentTaskResponse> consumeAgentTask() async
    test('test consumeAgentTask', () async {
      // TODO
    });

    // The caller's subscription tier and status.
    //
    //Future<AccountPlan> getAccountPlan() async
    test('test getAccountPlan', () async {
      // TODO
    });

    // Capability + quota envelope for the caller's tier.
    //
    //Future<AccountTierDetails> getAccountTier() async
    test('test getAccountTier', () async {
      // TODO
    });

    // Today's usage counters across notes, sheets, slides, files, tasks, mail, API.
    //
    //Future<AccountUsage> getAccountUsage() async
    test('test getAccountUsage', () async {
      // TODO
    });

    // Free-trial agent-task counter snapshot. Read-only; does NOT consume a slot. Use POST `/v1/account/usage/consume-agent-task` atomically per turn to gate a tool-using turn. 
    //
    //Future<AgentTaskUsage> getAgentTaskUsage() async
    test('test getAgentTaskUsage', () async {
      // TODO
    });

    // List the linked sign-in methods (password + OAuth providers).
    //
    //Future<SignInMethods> getSignInMethods() async
    test('test getSignInMethods', () async {
      // TODO
    });

    // List the OAuth clients the calling user has granted access to.
    //
    //Future<ConnectedAppsListResponse> listConnectedApps() async
    test('test listConnectedApps', () async {
      // TODO
    });

    // List active sessions for the caller.
    //
    //Future<SessionListResponse> listSessions() async
    test('test listSessions', () async {
      // TODO
    });

    // Revoke a connected app and all of its active tokens.
    //
    //Future revokeConnectedApp(String clientId) async
    test('test revokeConnectedApp', () async {
      // TODO
    });

    // Revoke every session except the caller's current one.
    //
    //Future<RevokeOtherSessionsResponse> revokeOtherSessions() async
    test('test revokeOtherSessions', () async {
      // TODO
    });

    // Revoke a specific session.
    //
    //Future revokeSession(String id) async
    test('test revokeSession', () async {
      // TODO
    });

  });
}
