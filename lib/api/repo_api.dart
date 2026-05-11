//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class RepoApi {
  RepoApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a branch (from a base sha).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> createRepoBranchWithHttpInfo(String owner, String repo, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}/branches'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Create a branch (from a base sha).
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> createRepoBranch(String owner, String repo, Map<String, Object> requestBody,) async {
    final response = await createRepoBranchWithHttpInfo(owner, repo, requestBody,);
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

  /// Open a pull request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> createRepoPullRequestWithHttpInfo(String owner, String repo, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}/pulls'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Open a pull request.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> createRepoPullRequest(String owner, String repo, Map<String, Object> requestBody,) async {
    final response = await createRepoPullRequestWithHttpInfo(owner, repo, requestBody,);
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

  /// Create a repository.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> createRepoRepositoryWithHttpInfo(Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories';

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

  /// Create a repository.
  ///
  /// Parameters:
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> createRepoRepository(Map<String, Object> requestBody,) async {
    final response = await createRepoRepositoryWithHttpInfo(requestBody,);
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

  /// Fetch a single commit.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] sha (required):
  Future<Response> getRepoCommitWithHttpInfo(String owner, String repo, String sha,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}/commits/{sha}'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo)
      .replaceAll('{sha}', sha);

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

  /// Fetch a single commit.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] sha (required):
  Future<Map<String, Object>?> getRepoCommit(String owner, String repo, String sha,) async {
    final response = await getRepoCommitWithHttpInfo(owner, repo, sha,);
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

  /// Fetch a single repository.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Response> getRepoRepositoryWithHttpInfo(String owner, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Fetch a single repository.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Map<String, Object>?> getRepoRepository(String owner, String repo,) async {
    final response = await getRepoRepositoryWithHttpInfo(owner, repo,);
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

  /// Link an existing Spatio task to this repo, allocating a per-repo number.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [LinkRepoTaskRequest] linkRepoTaskRequest (required):
  Future<Response> linkRepoTaskWithHttpInfo(String owner, String repo, LinkRepoTaskRequest linkRepoTaskRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}/tasks/link'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

    // ignore: prefer_final_locals
    Object? postBody = linkRepoTaskRequest;

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

  /// Link an existing Spatio task to this repo, allocating a per-repo number.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [LinkRepoTaskRequest] linkRepoTaskRequest (required):
  Future<Map<String, Object>?> linkRepoTask(String owner, String repo, LinkRepoTaskRequest linkRepoTaskRequest,) async {
    final response = await linkRepoTaskWithHttpInfo(owner, repo, linkRepoTaskRequest,);
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

  /// List branches on a repository.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Response> listRepoBranchesWithHttpInfo(String owner, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}/branches'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// List branches on a repository.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Map<String, Object>?> listRepoBranches(String owner, String repo,) async {
    final response = await listRepoBranchesWithHttpInfo(owner, repo,);
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

  /// List commits on a repository.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] branch:
  ///
  /// * [int] limit:
  Future<Response> listRepoCommitsWithHttpInfo(String owner, String repo, { String? branch, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}/commits'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (branch != null) {
      queryParams.addAll(_queryParams('', 'branch', branch));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// List commits on a repository.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] branch:
  ///
  /// * [int] limit:
  Future<Map<String, Object>?> listRepoCommits(String owner, String repo, { String? branch, int? limit, }) async {
    final response = await listRepoCommitsWithHttpInfo(owner, repo,  branch: branch, limit: limit, );
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

  /// List pull requests on a repository.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Response> listRepoPullRequestsWithHttpInfo(String owner, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}/pulls'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// List pull requests on a repository.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Map<String, Object>?> listRepoPullRequests(String owner, String repo,) async {
    final response = await listRepoPullRequestsWithHttpInfo(owner, repo,);
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

  /// List the caller's accessible repositories.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] visibility:
  ///
  /// * [int] limit:
  Future<Response> listRepoRepositoriesWithHttpInfo({ String? visibility, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (visibility != null) {
      queryParams.addAll(_queryParams('', 'visibility', visibility));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// List the caller's accessible repositories.
  ///
  /// Parameters:
  ///
  /// * [String] visibility:
  ///
  /// * [int] limit:
  Future<Map<String, Object>?> listRepoRepositories({ String? visibility, int? limit, }) async {
    final response = await listRepoRepositoriesWithHttpInfo( visibility: visibility, limit: limit, );
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

  /// List tasks linked to this repo (the \"issues\" surface).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] state:
  ///
  /// * [int] perPage:
  ///
  /// * [int] page:
  Future<Response> listRepoTasksWithHttpInfo(String owner, String repo, { String? state, int? perPage, int? page, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}/tasks'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
    if (perPage != null) {
      queryParams.addAll(_queryParams('', 'per_page', perPage));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
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

  /// List tasks linked to this repo (the \"issues\" surface).
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] state:
  ///
  /// * [int] perPage:
  ///
  /// * [int] page:
  Future<Map<String, Object>?> listRepoTasks(String owner, String repo, { String? state, int? perPage, int? page, }) async {
    final response = await listRepoTasksWithHttpInfo(owner, repo,  state: state, perPage: perPage, page: page, );
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

  /// List CI workflows.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Response> listRepoWorkflowsWithHttpInfo(String owner, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}/workflows'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// List CI workflows.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Map<String, Object>?> listRepoWorkflows(String owner, String repo,) async {
    final response = await listRepoWorkflowsWithHttpInfo(owner, repo,);
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

  /// Merge a pull request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [int] number (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Response> mergeRepoPullRequestWithHttpInfo(String owner, String repo, int number, { Map<String, Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}/pulls/{number}/merge'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo)
      .replaceAll('{number}', number.toString());

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

  /// Merge a pull request.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [int] number (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Map<String, Object>?> mergeRepoPullRequest(String owner, String repo, int number, { Map<String, Object>? requestBody, }) async {
    final response = await mergeRepoPullRequestWithHttpInfo(owner, repo, number,  requestBody: requestBody, );
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

  /// Trigger a workflow_dispatch run.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Response> triggerRepoWorkflowWithHttpInfo(String owner, String repo, String id, { Map<String, Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/repos/repositories/{owner}/{repo}/workflows/{id}/trigger'
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo)
      .replaceAll('{id}', id);

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

  /// Trigger a workflow_dispatch run.
  ///
  /// Parameters:
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Map<String, Object>?> triggerRepoWorkflow(String owner, String repo, String id, { Map<String, Object>? requestBody, }) async {
    final response = await triggerRepoWorkflowWithHttpInfo(owner, repo, id,  requestBody: requestBody, );
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/branches' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceCreateRepoBranchWithHttpInfo(String org, String workspace, String owner, String repo, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/branches'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceCreateRepoBranch(String org, String workspace, String owner, String repo, Map<String, Object> requestBody,) async {
    final response = await workspaceCreateRepoBranchWithHttpInfo(org, workspace, owner, repo, requestBody,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceCreateRepoPullRequestWithHttpInfo(String org, String workspace, String owner, String repo, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceCreateRepoPullRequest(String org, String workspace, String owner, String repo, Map<String, Object> requestBody,) async {
    final response = await workspaceCreateRepoPullRequestWithHttpInfo(org, workspace, owner, repo, requestBody,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/repos/repositories' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceCreateRepoRepositoryWithHttpInfo(String org, String workspace, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceCreateRepoRepository(String org, String workspace, Map<String, Object> requestBody,) async {
    final response = await workspaceCreateRepoRepositoryWithHttpInfo(org, workspace, requestBody,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/commits/{sha}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] sha (required):
  Future<Response> workspaceGetRepoCommitWithHttpInfo(String org, String workspace, String owner, String repo, String sha,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/commits/{sha}'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo)
      .replaceAll('{sha}', sha);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] sha (required):
  Future<Map<String, Object>?> workspaceGetRepoCommit(String org, String workspace, String owner, String repo, String sha,) async {
    final response = await workspaceGetRepoCommitWithHttpInfo(org, workspace, owner, repo, sha,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Response> workspaceGetRepoRepositoryWithHttpInfo(String org, String workspace, String owner, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Map<String, Object>?> workspaceGetRepoRepository(String org, String workspace, String owner, String repo,) async {
    final response = await workspaceGetRepoRepositoryWithHttpInfo(org, workspace, owner, repo,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/tasks/link' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Response> workspaceLinkRepoTaskWithHttpInfo(String org, String workspace, String owner, String repo, Map<String, Object> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/tasks/link'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [Map<String, Object>] requestBody (required):
  Future<Map<String, Object>?> workspaceLinkRepoTask(String org, String workspace, String owner, String repo, Map<String, Object> requestBody,) async {
    final response = await workspaceLinkRepoTaskWithHttpInfo(org, workspace, owner, repo, requestBody,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/branches' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Response> workspaceListRepoBranchesWithHttpInfo(String org, String workspace, String owner, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/branches'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Map<String, Object>?> workspaceListRepoBranches(String org, String workspace, String owner, String repo,) async {
    final response = await workspaceListRepoBranchesWithHttpInfo(org, workspace, owner, repo,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/commits' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Response> workspaceListRepoCommitsWithHttpInfo(String org, String workspace, String owner, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/commits'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Map<String, Object>?> workspaceListRepoCommits(String org, String workspace, String owner, String repo,) async {
    final response = await workspaceListRepoCommitsWithHttpInfo(org, workspace, owner, repo,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Response> workspaceListRepoPullRequestsWithHttpInfo(String org, String workspace, String owner, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Map<String, Object>?> workspaceListRepoPullRequests(String org, String workspace, String owner, String repo,) async {
    final response = await workspaceListRepoPullRequestsWithHttpInfo(org, workspace, owner, repo,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/repos/repositories' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Response> workspaceListRepoRepositoriesWithHttpInfo(String org, String workspace,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  Future<Map<String, Object>?> workspaceListRepoRepositories(String org, String workspace,) async {
    final response = await workspaceListRepoRepositoriesWithHttpInfo(org, workspace,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/tasks' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Response> workspaceListRepoTasksWithHttpInfo(String org, String workspace, String owner, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/tasks'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Map<String, Object>?> workspaceListRepoTasks(String org, String workspace, String owner, String repo,) async {
    final response = await workspaceListRepoTasksWithHttpInfo(org, workspace, owner, repo,);
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

  /// Performs an HTTP 'GET /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/workflows' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Response> workspaceListRepoWorkflowsWithHttpInfo(String org, String workspace, String owner, String repo,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/workflows'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  Future<Map<String, Object>?> workspaceListRepoWorkflows(String org, String workspace, String owner, String repo,) async {
    final response = await workspaceListRepoWorkflowsWithHttpInfo(org, workspace, owner, repo,);
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls/{number}/merge' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [int] number (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Response> workspaceMergeRepoPullRequestWithHttpInfo(String org, String workspace, String owner, String repo, int number, { Map<String, Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/pulls/{number}/merge'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo)
      .replaceAll('{number}', number.toString());

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [int] number (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Map<String, Object>?> workspaceMergeRepoPullRequest(String org, String workspace, String owner, String repo, int number, { Map<String, Object>? requestBody, }) async {
    final response = await workspaceMergeRepoPullRequestWithHttpInfo(org, workspace, owner, repo, number,  requestBody: requestBody, );
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

  /// Performs an HTTP 'POST /v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/workflows/{id}/trigger' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Response> workspaceTriggerRepoWorkflowWithHttpInfo(String org, String workspace, String owner, String repo, String id, { Map<String, Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/organizations/{org}/workspaces/{workspace}/repos/repositories/{owner}/{repo}/workflows/{id}/trigger'
      .replaceAll('{org}', org)
      .replaceAll('{workspace}', workspace)
      .replaceAll('{owner}', owner)
      .replaceAll('{repo}', repo)
      .replaceAll('{id}', id);

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

  /// Parameters:
  ///
  /// * [String] org (required):
  ///
  /// * [String] workspace (required):
  ///
  /// * [String] owner (required):
  ///
  /// * [String] repo (required):
  ///
  /// * [String] id (required):
  ///
  /// * [Map<String, Object>] requestBody:
  Future<Map<String, Object>?> workspaceTriggerRepoWorkflow(String org, String workspace, String owner, String repo, String id, { Map<String, Object>? requestBody, }) async {
    final response = await workspaceTriggerRepoWorkflowWithHttpInfo(org, workspace, owner, repo, id,  requestBody: requestBody, );
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
