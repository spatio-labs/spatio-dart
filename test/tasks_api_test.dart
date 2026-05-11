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


/// tests for TasksApi
void main() {
  // final instance = TasksApi();

  group('tests for TasksApi', () {
    // Delete multiple tasks in one call.
    //
    // Replaces the legacy BFF that looped DELETE /v1/tasks/:id. Per-id errors are collected in `failed` rather than failing the whole call — partial success is the norm. 
    //
    //Future<BulkDeleteTasksResponse> bulkDeleteTasks(BulkDeleteTasksRequest bulkDeleteTasksRequest) async
    test('test bulkDeleteTasks', () async {
      // TODO
    });

    // Apply the same update to multiple tasks.
    //
    // Same `updates` payload applied to every id in `taskIds`. As with bulk delete, per-id failures collect in `failed`. 
    //
    //Future<BulkUpdateTasksResponse> bulkUpdateTasks(BulkUpdateTasksRequest bulkUpdateTasksRequest) async
    test('test bulkUpdateTasks', () async {
      // TODO
    });

    // Mark a task complete.
    //
    // Idempotent — completing an already-completed task is a no-op that still returns success. The legacy `POST /v1/tasks/complete/task` endpoint accepts the same operation with the task id in the JSON body instead of the URL; that variant is a renderer-compat shim and is not modeled in the spec. 
    //
    //Future<SuccessFlag> completeTask(String id, { String accountId, String xWorkspaceID }) async
    test('test completeTask', () async {
      // TODO
    });

    // Create a task.
    //
    // Creates a new task under the target account. Target resolution mirrors `POST /v1/notes`: body `accountId` → `?accountId=` → body `provider` → `?provider=` → caller's single connected account (errors `ambiguous_account` if more than one and no selector). 
    //
    //Future<Task> createTask(CreateTaskRequest createTaskRequest, { String accountId, String provider, String xWorkspaceID }) async
    test('test createTask', () async {
      // TODO
    });

    // Create a comment.
    //
    //Future<TaskCommentMutationResponse> createTaskComment(String id, TaskCommentRequest taskCommentRequest, { String accountId, String xWorkspaceID }) async
    test('test createTaskComment', () async {
      // TODO
    });

    // Delete a task.
    //
    //Future<SuccessFlag> deleteTask(String id, { String accountId, String xWorkspaceID }) async
    test('test deleteTask', () async {
      // TODO
    });

    // Delete a task comment.
    //
    // Allowed for the comment author and (for native comments) for the task owner. 
    //
    //Future<SuccessFlag> deleteTaskComment(String id, String commentId, { String accountId, String xWorkspaceID }) async
    test('test deleteTaskComment', () async {
      // TODO
    });

    // Fetch one task.
    //
    //Future<Task> getTask(String id, { String accountId, String xWorkspaceID }) async
    test('test getTask', () async {
      // TODO
    });

    // List comments on a task.
    //
    // Returns active comments. When `?accountId=` targets an external provider that supports comments (e.g. Linear), the provider is queried directly; otherwise the native `TaskComment` table is used. 
    //
    //Future<TaskCommentList> listTaskComments(String id, { String accountId, String xWorkspaceID }) async
    test('test listTaskComments', () async {
      // TODO
    });

    // List supported task providers.
    //
    // Returns the registered task-provider ids and the platform's own metadata. Useful for clients that need to render provider-specific UI (icons, capability flags) before committing to a particular `provider`. 
    //
    //Future<TaskProvidersInfo> listTaskProviders() async
    test('test listTaskProviders', () async {
      // TODO
    });

    // List tasks across connected accounts.
    //
    // Fan-out list. Returns every task visible to the caller across every connected tasks provider. Pass `?accountId=` or `?provider=` to scope to a single source. 
    //
    //Future<TaskListEnvelope> listTasks({ String accountId, String provider, String xWorkspaceID, bool completed, List<String> labels, String parentTaskId, String type, String sourcePlatform, String sourceId, int limit, int offset }) async
    test('test listTasks', () async {
      // TODO
    });

    // Update a task (partial).
    //
    //Future<Task> updateTask(String id, UpdateTaskRequest updateTaskRequest, { String accountId, String xWorkspaceID }) async
    test('test updateTask', () async {
      // TODO
    });

    // Edit a task comment.
    //
    // Only the comment author can edit.
    //
    //Future<TaskCommentMutationResponse> updateTaskComment(String id, String commentId, TaskCommentRequest taskCommentRequest, { String accountId, String xWorkspaceID }) async
    test('test updateTaskComment', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCompleteTask(String org, String workspace, String id) async
    test('test workspaceCompleteTask', () async {
      // TODO
    });

    // Renderer-compat alias for /tasks/{id}/complete.
    //
    //Future<Map<String, Object>> workspaceCompleteTaskAlias(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCompleteTaskAlias', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCreateTask(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCreateTask', () async {
      // TODO
    });

    // Renderer-compat alias for POST /tasks.
    //
    //Future<Map<String, Object>> workspaceCreateTaskAlias(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCreateTaskAlias', () async {
      // TODO
    });

    //Future workspaceDeleteTask(String org, String workspace, String id) async
    test('test workspaceDeleteTask', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetTask(String org, String workspace, String id) async
    test('test workspaceGetTask', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListTaskProviders(String org, String workspace) async
    test('test workspaceListTaskProviders', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListTasks(String org, String workspace) async
    test('test workspaceListTasks', () async {
      // TODO
    });

    // Renderer-compat alias for /tasks.
    //
    //Future<Map<String, Object>> workspaceListTasksAlias(String org, String workspace) async
    test('test workspaceListTasksAlias', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceUpdateTask(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceUpdateTask', () async {
      // TODO
    });

    // Renderer-compat alias for PATCH /tasks/{id}.
    //
    //Future<Map<String, Object>> workspaceUpdateTaskAlias(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceUpdateTaskAlias', () async {
      // TODO
    });

  });
}
