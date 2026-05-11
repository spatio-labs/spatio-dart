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


/// tests for FilesApi
void main() {
  // final instance = FilesApi();

  group('tests for FilesApi', () {
    // Delete multiple files in one call.
    //
    //Future<BulkFilesResponse> bulkDeleteFiles(BulkDeleteFilesRequest bulkDeleteFilesRequest) async
    test('test bulkDeleteFiles', () async {
      // TODO
    });

    // Move multiple files to a target folder.
    //
    //Future<BulkFilesResponse> bulkMoveFiles(BulkMoveFilesRequest bulkMoveFilesRequest) async
    test('test bulkMoveFiles', () async {
      // TODO
    });

    // Finalize a chunked-upload session and create the file row.
    //
    //Future<CommitChunkedUploadResponse> commitChunkedUpload(CommitChunkedUploadRequest commitChunkedUploadRequest) async
    test('test commitChunkedUpload', () async {
      // TODO
    });

    // Create a folder.
    //
    //Future<Folder> createFileFolder(CreateFolderRequest createFolderRequest, { String accountId, String provider, String xWorkspaceID }) async
    test('test createFileFolder', () async {
      // TODO
    });

    // Delete a file.
    //
    //Future deleteFile(String id, { String accountId, String xWorkspaceID }) async
    test('test deleteFile', () async {
      // TODO
    });

    // Extract text content from a PDF (or other supported file).
    //
    //Future<ExtractTextResult> extractFileText(String id, { String accountId, String xWorkspaceID, int pageStart, int pageEnd, int maxChars }) async
    test('test extractFileText', () async {
      // TODO
    });

    // Fetch the block manifest for a chunked-uploaded file.
    //
    // Only meaningful for files uploaded via `upload/chunked/_*`. Files uploaded via `upload` or `upload/base64` return `404`. 
    //
    //Future<ChunkedFileManifest> getChunkedFileManifest(String id, { String accountId, String xWorkspaceID }) async
    test('test getChunkedFileManifest', () async {
      // TODO
    });

    // Fetch one file's metadata.
    //
    //Future<SpatioFile> getFile(String id, { String accountId, String xWorkspaceID }) async
    test('test getFile', () async {
      // TODO
    });

    // Mint a fresh signed download URL.
    //
    // Returns a JSON envelope with a pre-signed URL pointing at the backing storage. Clients follow the URL — the platform does not stream bytes through itself. 
    //
    //Future<DownloadFileResponse> getFileDownloadUrl(String id, { String accountId, String xWorkspaceID }) async
    test('test getFileDownloadUrl', () async {
      // TODO
    });

    // Begin a content-addressed chunked upload session.
    //
    // Client computes per-block hashes ahead of time and submits the list. The server replies with which blocks need uploading vs. already-on-server (deduplicated). Subsequent calls upload the missing blocks via `uploadChunkedBlock`, then `commit`. 
    //
    //Future<InitChunkedUploadResponse> initChunkedUpload(InitChunkedUploadRequest initChunkedUploadRequest) async
    test('test initChunkedUpload', () async {
      // TODO
    });

    // List folders across connected file providers.
    //
    //Future<FolderListEnvelope> listFileFolders({ String accountId, String provider, String xWorkspaceID, String parentId, String workspaceId, String organizationId, int limit, int offset }) async
    test('test listFileFolders', () async {
      // TODO
    });

    // List files across connected file providers.
    //
    // Fan-out list. Returns files from every connected file provider unless filtered by `?accountId=` or `?provider=`. Folder contents are scoped via `?folderId=`; omit for account root. 
    //
    //Future<FileListEnvelope> listFiles({ String accountId, String provider, String xWorkspaceID, String folderId, String workspaceId, String organizationId, int limit, int offset, String sortBy, String sortOrder }) async
    test('test listFiles', () async {
      // TODO
    });

    // Aggregate list of files + folders for renderer file-browser views.
    //
    // Calls `listFiles` and `listFileFolders` in parallel and merges the results. Saves a round-trip when the UI shows both side-by-side. 
    //
    //Future<FilesAndFoldersResponse> listFilesAndFolders({ String accountId, String provider, String folderId, String workspaceId, String organizationId, int limit, int offset, String sortBy, String sortOrder }) async
    test('test listFilesAndFolders', () async {
      // TODO
    });

    // Move a single file to a target folder.
    //
    //Future<MoveFileResponse> moveFile(String id, MoveFileRequest moveFileRequest, { String accountId, String xWorkspaceID }) async
    test('test moveFile', () async {
      // TODO
    });

    // Substring-match search across the caller's files.
    //
    // In-memory search — the platform lists up to ~500 files and filters locally on `name` (case-insensitive substring). Not suitable for global search across very large file libraries. 
    //
    //Future<SearchFilesResponse> searchFiles(String query, { String accountId, String provider, String folderId, String workspaceId, String organizationId, int limit, int offset }) async
    test('test searchFiles', () async {
      // TODO
    });

    // Update a file's metadata (name, folder, custom fields).
    //
    //Future<SpatioFile> updateFile(String id, UpdateFileRequest updateFileRequest, { String accountId, String xWorkspaceID }) async
    test('test updateFile', () async {
      // TODO
    });

    // Upload one block for an open chunked-upload session.
    //
    //Future<UploadChunkedBlockResponse> uploadChunkedBlock(String sessionId, String blockHash, MultipartFile block, { int blockIndex }) async
    test('test uploadChunkedBlock', () async {
      // TODO
    });

    // Upload a file via multipart form.
    //
    // Multipart upload. Form field `file` carries the binary; auxiliary form fields scope the upload (`folderId`, `workspaceId`, `organizationId`, `accountId`). Max body size is currently 100 MB. 
    //
    //Future<SpatioFile> uploadFile(MultipartFile file, { String folderId, String workspaceId, String organizationId, String accountId }) async
    test('test uploadFile', () async {
      // TODO
    });

    // Upload a file via JSON with base64-encoded content.
    //
    // Equivalent to `uploadFile` for clients that can't post multipart bodies (e.g. browser fetch with strict CSP). 
    //
    //Future<SpatioFile> uploadFileBase64(UploadFileBase64Request uploadFileBase64Request) async
    test('test uploadFileBase64', () async {
      // TODO
    });

    // Workspace-scoped chunked-upload commit (RBAC-protected).
    //
    //Future<Map<String, Object>> workspaceCommitChunkedUpload(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCommitChunkedUpload', () async {
      // TODO
    });

    // Workspace-scoped create-folder (RBAC-protected).
    //
    //Future<Map<String, Object>> workspaceCreateFileFolder(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCreateFileFolder', () async {
      // TODO
    });

    // Workspace-scoped delete-file.
    //
    //Future workspaceDeleteFile(String org, String workspace, String id) async
    test('test workspaceDeleteFile', () async {
      // TODO
    });

    // Workspace-scoped get-file.
    //
    //Future<Map<String, Object>> workspaceGetFile(String org, String workspace, String id) async
    test('test workspaceGetFile', () async {
      // TODO
    });

    // Workspace-scoped signed-download URL.
    //
    //Future<Map<String, Object>> workspaceGetFileDownload(String org, String workspace, String id) async
    test('test workspaceGetFileDownload', () async {
      // TODO
    });

    // Workspace-scoped chunked-file manifest.
    //
    //Future<Map<String, Object>> workspaceGetFileManifest(String org, String workspace, String id) async
    test('test workspaceGetFileManifest', () async {
      // TODO
    });

    // Workspace-scoped chunked-upload init (RBAC-protected).
    //
    //Future<Map<String, Object>> workspaceInitChunkedUpload(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceInitChunkedUpload', () async {
      // TODO
    });

    // Workspace-scoped list-folders (RBAC-protected).
    //
    //Future<Map<String, Object>> workspaceListFileFolders(String org, String workspace) async
    test('test workspaceListFileFolders', () async {
      // TODO
    });

    // Workspace-scoped list-files (RBAC-protected).
    //
    //Future<Map<String, Object>> workspaceListFiles(String org, String workspace) async
    test('test workspaceListFiles', () async {
      // TODO
    });

    // Workspace-scoped move-file.
    //
    //Future<Map<String, Object>> workspaceMoveFile(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceMoveFile', () async {
      // TODO
    });

    // Workspace-scoped update-file.
    //
    //Future<Map<String, Object>> workspaceUpdateFile(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceUpdateFile', () async {
      // TODO
    });

    // Workspace-scoped chunked-upload block (RBAC-protected).
    //
    //Future<Map<String, Object>> workspaceUploadChunkedBlock(String org, String workspace, MultipartFile body) async
    test('test workspaceUploadChunkedBlock', () async {
      // TODO
    });

    // Workspace-scoped multipart upload (RBAC-protected).
    //
    //Future<Map<String, Object>> workspaceUploadFile(String org, String workspace, { MultipartFile file }) async
    test('test workspaceUploadFile', () async {
      // TODO
    });

    // Workspace-scoped base64 upload (RBAC-protected).
    //
    //Future<Map<String, Object>> workspaceUploadFileBase64(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceUploadFileBase64', () async {
      // TODO
    });

  });
}
