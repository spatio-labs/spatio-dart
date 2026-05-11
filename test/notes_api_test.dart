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


/// tests for NotesApi
void main() {
  // final instance = NotesApi();

  group('tests for NotesApi', () {
    // Insert a block in a note.
    //
    //Future<Block> createBlock(String id, CreateBlockRequest createBlockRequest, { String accountId, String xWorkspaceID }) async
    test('test createBlock', () async {
      // TODO
    });

    // Create a note.
    //
    // Creates a new note under the target account. The target is resolved in this order: `accountId` field on the body → `?accountId=` query → `provider` field on the body → `?provider=` query → the caller's single connected account (errors with `ambiguous_account` if more than one is connected and no selector is supplied). 
    //
    //Future<Note> createNote(CreateNoteRequest createNoteRequest, { String accountId, String provider, String xWorkspaceID }) async
    test('test createNote', () async {
      // TODO
    });

    // Create a comment or reply.
    //
    //Future<CommentMutationResponse> createNoteComment(String id, CreateCommentRequest createCommentRequest, { String accountId, String xWorkspaceID }) async
    test('test createNoteComment', () async {
      // TODO
    });

    // Delete a block.
    //
    //Future<SuccessFlag> deleteBlock(String id, { String accountId, String xWorkspaceID }) async
    test('test deleteBlock', () async {
      // TODO
    });

    // Delete a note.
    //
    //Future<SuccessFlag> deleteNote(String id, { String accountId, String xWorkspaceID }) async
    test('test deleteNote', () async {
      // TODO
    });

    // Soft-delete (native) or hard-delete (provider) a comment.
    //
    // Allowed for the comment author and for the note owner. 
    //
    //Future<SuccessFlag> deleteNoteComment(String id, String commentId, { String accountId, String xWorkspaceID }) async
    test('test deleteNoteComment', () async {
      // TODO
    });

    // Disable public sharing.
    //
    // Owner-only. Subsequent public viewer requests 404.
    //
    //Future disableNoteShare(String id, { String accountId, String xWorkspaceID }) async
    test('test disableNoteShare', () async {
      // TODO
    });

    // Enable (or update password on) public sharing.
    //
    // Owner-only. Calling with an empty body or `setPassword: false` flips the note public without changing the password. With `setPassword: true`, applies `password` (empty string clears). 
    //
    //Future<ShareSettings> enableNoteShare(String id, { String accountId, String xWorkspaceID, EnableShareRequest enableShareRequest }) async
    test('test enableNoteShare', () async {
      // TODO
    });

    // Fetch one block.
    //
    //Future<Block> getBlock(String id, { String accountId, String xWorkspaceID }) async
    test('test getBlock', () async {
      // TODO
    });

    // Fetch one note.
    //
    //Future<Note> getNote(String id, { String accountId, String xWorkspaceID }) async
    test('test getNote', () async {
      // TODO
    });

    // Fetch one comment.
    //
    // Useful for permalink hydration when the renderer deep-links into a reply thread. 
    //
    //Future<CommentResponse> getNoteComment(String id, String commentId, { String accountId, String xWorkspaceID }) async
    test('test getNoteComment', () async {
      // TODO
    });

    // Fetch share settings for a note.
    //
    // Owner-only. Returns the current public-share configuration, including the share token and computed public viewer URL when the note is currently public. 
    //
    //Future<ShareSettings> getNoteShareSettings(String id, { String accountId, String xWorkspaceID }) async
    test('test getNoteShareSettings', () async {
      // TODO
    });

    // Fetch a publicly shared note.
    //
    // Unauthenticated. The share token is the credential. For password-protected notes the password is supplied via the `?password=` query param; the response distinguishes \"no password supplied\" from \"wrong password\" so the viewer can render the right prompt.  Unknown tokens and disabled-share notes both return `404` to prevent token enumeration. 
    //
    //Future<Map<String, Object>> getPublicNote(String token, { String password }) async
    test('test getPublicNote', () async {
      // TODO
    });

    // List blocks under a note.
    //
    // Returns the block tree for a note, paginated. Block listing always targets a single account (the one that owns the note) so it does not fan out — the response is a plain `{ blocks, total }`. 
    //
    //Future<BlockListResponse> listBlocks(String id, { String accountId, String xWorkspaceID, String parentId, int limit, int offset }) async
    test('test listBlocks', () async {
      // TODO
    });

    // List comments on a note.
    //
    // Returns active (non-deleted) comments. When `?accountId=` targets an external provider that supports comments (e.g. Notion), the provider is queried directly; otherwise the native store is used. 
    //
    //Future<CommentListResponse> listNoteComments(String id, { String accountId, String xWorkspaceID }) async
    test('test listNoteComments', () async {
      // TODO
    });

    // List notes across connected accounts.
    //
    // Fan-out list. Returns every note visible to the caller across every connected notes provider, paginated by `limit` / `offset`. Pass `?accountId=` or `?provider=` to scope to a single source. 
    //
    //Future<NoteListEnvelope> listNotes({ String accountId, String provider, String xWorkspaceID, bool archived, String parentId, List<String> tags, int limit, int offset, String sortBy, String sortOrder }) async
    test('test listNotes', () async {
      // TODO
    });

    // Reparent or reorder a block.
    //
    //Future<SuccessFlag> moveBlock(String id, MoveBlockRequest moveBlockRequest, { String accountId, String xWorkspaceID }) async
    test('test moveBlock', () async {
      // TODO
    });

    // Rotate the share token, invalidating any outstanding URLs.
    //
    //Future<ShareSettings> rotateNoteShareToken(String id, { String accountId, String xWorkspaceID }) async
    test('test rotateNoteShareToken', () async {
      // TODO
    });

    // Update a block (partial).
    //
    //Future<Block> updateBlock(String id, UpdateBlockRequest updateBlockRequest, { String accountId, String xWorkspaceID }) async
    test('test updateBlock', () async {
      // TODO
    });

    // Update a note (partial).
    //
    //Future<Note> updateNote(String id, UpdateNoteRequest updateNoteRequest, { String accountId, String xWorkspaceID }) async
    test('test updateNote', () async {
      // TODO
    });

    // Edit a comment.
    //
    // Only the comment author can edit. The note owner can delete via `DELETE` but cannot rewrite. 
    //
    //Future<CommentMutationResponse> updateNoteComment(String id, String commentId, UpdateCommentRequest updateCommentRequest, { String accountId, String xWorkspaceID }) async
    test('test updateNoteComment', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCreateNote(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCreateNote', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCreateNoteBlock(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceCreateNoteBlock', () async {
      // TODO
    });

    //Future workspaceDeleteNote(String org, String workspace, String id) async
    test('test workspaceDeleteNote', () async {
      // TODO
    });

    //Future workspaceDeleteNoteBlock(String org, String workspace, String id) async
    test('test workspaceDeleteNoteBlock', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetNote(String org, String workspace, String id) async
    test('test workspaceGetNote', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetNoteBlock(String org, String workspace, String id) async
    test('test workspaceGetNoteBlock', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListNoteBlocks(String org, String workspace, String id) async
    test('test workspaceListNoteBlocks', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListNotes(String org, String workspace) async
    test('test workspaceListNotes', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceMoveNoteBlock(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceMoveNoteBlock', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceUpdateNote(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceUpdateNote', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceUpdateNoteBlock(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceUpdateNoteBlock', () async {
      // TODO
    });

  });
}
