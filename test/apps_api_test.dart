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


/// tests for AppsApi
void main() {
  // final instance = AppsApi();

  group('tests for AppsApi', () {
    // Register a prototype app (project_path is the on-disk root).
    //
    //Future<App> createApp(CreateAppRequest createAppRequest) async
    test('test createApp', () async {
      // TODO
    });

    // Delete an app.
    //
    //Future deleteApp(String id) async
    test('test deleteApp', () async {
      // TODO
    });

    // Delete one file inside the app's project directory.
    //
    //Future deleteAppFile(String id, String path) async
    test('test deleteAppFile', () async {
      // TODO
    });

    // Fetch an app.
    //
    //Future<App> getApp(String id) async
    test('test getApp', () async {
      // TODO
    });

    // List files inside the app's project directory.
    //
    //Future<AppFileListResponse> listAppFiles(String id, { String path }) async
    test('test listAppFiles', () async {
      // TODO
    });

    // List the caller's prototype apps.
    //
    //Future<AppListResponse> listApps() async
    test('test listApps', () async {
      // TODO
    });

    // Read one file inside the app's project directory. Path is traversal-checked; returns 400 if it escapes project root. 
    //
    //Future<AppFileContentResponse> readAppFile(String id, String path) async
    test('test readAppFile', () async {
      // TODO
    });

    // Update an app.
    //
    //Future<App> updateApp(String id, UpdateAppRequest updateAppRequest) async
    test('test updateApp', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCreateApp(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCreateApp', () async {
      // TODO
    });

    //Future workspaceDeleteApp(String org, String workspace, String id) async
    test('test workspaceDeleteApp', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetApp(String org, String workspace, String id) async
    test('test workspaceGetApp', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListApps(String org, String workspace) async
    test('test workspaceListApps', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceUpdateApp(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceUpdateApp', () async {
      // TODO
    });

    // Write one file inside the app's project directory.
    //
    //Future writeAppFile(String id, WriteAppFileRequest writeAppFileRequest) async
    test('test writeAppFile', () async {
      // TODO
    });

  });
}
