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


/// tests for PlatformsApi
void main() {
  // final instance = PlatformsApi();

  group('tests for PlatformsApi', () {
    // Add a connected account for a platform/provider pair.
    //
    //Future<Map<String, Object>> addPlatformProviderAccount(String platformId, String provider, Map<String, Object> requestBody) async
    test('test addPlatformProviderAccount', () async {
      // TODO
    });

    // Create or update a secret value.
    //
    //Future<Map<String, Object>> createOrUpdatePlatformSecret(String platformId, Map<String, Object> requestBody) async
    test('test createOrUpdatePlatformSecret', () async {
      // TODO
    });

    // Delete a secret.
    //
    //Future deletePlatformSecret(String platformId, String name) async
    test('test deletePlatformSecret', () async {
      // TODO
    });

    // Run an INSERT/UPDATE/DELETE statement against a platform's store.
    //
    //Future<Map<String, Object>> execPlatformData(String platformId, Map<String, Object> requestBody) async
    test('test execPlatformData', () async {
      // TODO
    });

    // Export all secrets for a platform (values included). Caller must be the platform owner. 
    //
    //Future<Map<String, Object>> exportPlatformSecrets(String platformId) async
    test('test exportPlatformSecrets', () async {
      // TODO
    });

    // Generate a short-lived backend JWT a platform's worker can use to call back into platform-service. 
    //
    //Future<Map<String, Object>> generatePlatformBackendToken(String platformId) async
    test('test generatePlatformBackendToken', () async {
      // TODO
    });

    // List the global platform catalog — every platform that exists, not just the ones the caller has installed. 
    //
    //Future<Map<String, Object>> getPlatformCatalog() async
    test('test getPlatformCatalog', () async {
      // TODO
    });

    // Fetch a platform's manifest (capabilities, schema, UI metadata).
    //
    //Future<Map<String, Object>> getPlatformManifest(String platformId) async
    test('test getPlatformManifest', () async {
      // TODO
    });

    // List accounts the caller has connected for a platform.
    //
    //Future<Map<String, Object>> listPlatformAccounts(String platformId) async
    test('test listPlatformAccounts', () async {
      // TODO
    });

    // Discover supported providers + capabilities for a platform.
    //
    //Future<Map<String, Object>> listPlatformProviders(String platformId) async
    test('test listPlatformProviders', () async {
      // TODO
    });

    // List secret keys (values redacted).
    //
    //Future<Map<String, Object>> listPlatformSecrets(String platformId) async
    test('test listPlatformSecrets', () async {
      // TODO
    });

    // List tables in a platform's data store.
    //
    //Future<Map<String, Object>> listPlatformTables(String platformId) async
    test('test listPlatformTables', () async {
      // TODO
    });

    // List installed platforms for the sidebar.
    //
    //Future<Map<String, Object>> listPlatforms() async
    test('test listPlatforms', () async {
      // TODO
    });

    // Run a SELECT query against a platform's data store.
    //
    //Future<Map<String, Object>> queryPlatformData(String platformId, Map<String, Object> requestBody) async
    test('test queryPlatformData', () async {
      // TODO
    });

    // Run pending migrations for a platform.
    //
    //Future<Map<String, Object>> runPlatformMigrations(String platformId) async
    test('test runPlatformMigrations', () async {
      // TODO
    });

  });
}
