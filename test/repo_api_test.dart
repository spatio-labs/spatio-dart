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


/// tests for RepoApi
void main() {
  // final instance = RepoApi();

  group('tests for RepoApi', () {
    // Create a branch (from a base sha).
    //
    //Future<Map<String, Object>> createRepoBranch(String owner, String repo, Map<String, Object> requestBody) async
    test('test createRepoBranch', () async {
      // TODO
    });

    // Open a pull request.
    //
    //Future<Map<String, Object>> createRepoPullRequest(String owner, String repo, Map<String, Object> requestBody) async
    test('test createRepoPullRequest', () async {
      // TODO
    });

    // Create a repository.
    //
    //Future<Map<String, Object>> createRepoRepository(Map<String, Object> requestBody) async
    test('test createRepoRepository', () async {
      // TODO
    });

    // Fetch a single commit.
    //
    //Future<Map<String, Object>> getRepoCommit(String owner, String repo, String sha) async
    test('test getRepoCommit', () async {
      // TODO
    });

    // Fetch a single repository.
    //
    //Future<Map<String, Object>> getRepoRepository(String owner, String repo) async
    test('test getRepoRepository', () async {
      // TODO
    });

    // Link an existing Spatio task to this repo, allocating a per-repo number.
    //
    //Future<Map<String, Object>> linkRepoTask(String owner, String repo, LinkRepoTaskRequest linkRepoTaskRequest) async
    test('test linkRepoTask', () async {
      // TODO
    });

    // List branches on a repository.
    //
    //Future<Map<String, Object>> listRepoBranches(String owner, String repo) async
    test('test listRepoBranches', () async {
      // TODO
    });

    // List commits on a repository.
    //
    //Future<Map<String, Object>> listRepoCommits(String owner, String repo, { String branch, int limit }) async
    test('test listRepoCommits', () async {
      // TODO
    });

    // List pull requests on a repository.
    //
    //Future<Map<String, Object>> listRepoPullRequests(String owner, String repo) async
    test('test listRepoPullRequests', () async {
      // TODO
    });

    // List the caller's accessible repositories.
    //
    //Future<Map<String, Object>> listRepoRepositories({ String visibility, int limit }) async
    test('test listRepoRepositories', () async {
      // TODO
    });

    // List tasks linked to this repo (the \"issues\" surface).
    //
    //Future<Map<String, Object>> listRepoTasks(String owner, String repo, { String state, int perPage, int page }) async
    test('test listRepoTasks', () async {
      // TODO
    });

    // List CI workflows.
    //
    //Future<Map<String, Object>> listRepoWorkflows(String owner, String repo) async
    test('test listRepoWorkflows', () async {
      // TODO
    });

    // Merge a pull request.
    //
    //Future<Map<String, Object>> mergeRepoPullRequest(String owner, String repo, int number, { Map<String, Object> requestBody }) async
    test('test mergeRepoPullRequest', () async {
      // TODO
    });

    // Trigger a workflow_dispatch run.
    //
    //Future<Map<String, Object>> triggerRepoWorkflow(String owner, String repo, String id, { Map<String, Object> requestBody }) async
    test('test triggerRepoWorkflow', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCreateRepoBranch(String org, String workspace, String owner, String repo, Map<String, Object> requestBody) async
    test('test workspaceCreateRepoBranch', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCreateRepoPullRequest(String org, String workspace, String owner, String repo, Map<String, Object> requestBody) async
    test('test workspaceCreateRepoPullRequest', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCreateRepoRepository(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCreateRepoRepository', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetRepoCommit(String org, String workspace, String owner, String repo, String sha) async
    test('test workspaceGetRepoCommit', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetRepoRepository(String org, String workspace, String owner, String repo) async
    test('test workspaceGetRepoRepository', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceLinkRepoTask(String org, String workspace, String owner, String repo, Map<String, Object> requestBody) async
    test('test workspaceLinkRepoTask', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListRepoBranches(String org, String workspace, String owner, String repo) async
    test('test workspaceListRepoBranches', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListRepoCommits(String org, String workspace, String owner, String repo) async
    test('test workspaceListRepoCommits', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListRepoPullRequests(String org, String workspace, String owner, String repo) async
    test('test workspaceListRepoPullRequests', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListRepoRepositories(String org, String workspace) async
    test('test workspaceListRepoRepositories', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListRepoTasks(String org, String workspace, String owner, String repo) async
    test('test workspaceListRepoTasks', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListRepoWorkflows(String org, String workspace, String owner, String repo) async
    test('test workspaceListRepoWorkflows', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceMergeRepoPullRequest(String org, String workspace, String owner, String repo, int number, { Map<String, Object> requestBody }) async
    test('test workspaceMergeRepoPullRequest', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceTriggerRepoWorkflow(String org, String workspace, String owner, String repo, String id, { Map<String, Object> requestBody }) async
    test('test workspaceTriggerRepoWorkflow', () async {
      // TODO
    });

  });
}
