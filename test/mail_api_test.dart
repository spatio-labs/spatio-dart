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


/// tests for MailApi
void main() {
  // final instance = MailApi();

  group('tests for MailApi', () {
    // Archive multiple messages (remove the INBOX label).
    //
    //Future<BulkArchiveResponse> bulkArchiveEmails(BulkArchiveRequest bulkArchiveRequest) async
    test('test bulkArchiveEmails', () async {
      // TODO
    });

    // Delete multiple messages in one call.
    //
    // Soft-delete by default (moves to provider trash). Set `permanent: true` for a hard delete. 
    //
    //Future<BulkDeleteEmailsResponse> bulkDeleteEmails(BulkDeleteEmailsRequest bulkDeleteEmailsRequest) async
    test('test bulkDeleteEmails', () async {
      // TODO
    });

    // Mark multiple messages read or unread in one call.
    //
    //Future<BulkMarkReadResponse> bulkMarkEmailsRead(BulkMarkReadRequest bulkMarkReadRequest) async
    test('test bulkMarkEmailsRead', () async {
      // TODO
    });

    // Create a draft.
    //
    //Future<DraftResponse> createDraft(CreateDraftRequest createDraftRequest, { String xWorkspaceID }) async
    test('test createDraft', () async {
      // TODO
    });

    // Create a label.
    //
    //Future<CreateLabelResponse> createEmailLabel(CreateLabelRequest createLabelRequest, { String accountId, String xWorkspaceID }) async
    test('test createEmailLabel', () async {
      // TODO
    });

    // Create a mail template.
    //
    //Future<Map<String, Object>> createMailTemplate(Map<String, Object> requestBody) async
    test('test createMailTemplate', () async {
      // TODO
    });

    // Delete a draft.
    //
    //Future deleteDraft(String id, { String accountId, String xWorkspaceID }) async
    test('test deleteDraft', () async {
      // TODO
    });

    // Delete an email.
    //
    // Soft-deletes (moves to provider trash).
    //
    //Future<SuccessFlag> deleteEmail(String id, { String accountId, String xWorkspaceID }) async
    test('test deleteEmail', () async {
      // TODO
    });

    // Delete a label.
    //
    //Future deleteEmailLabel(String id, { String accountId, String xWorkspaceID }) async
    test('test deleteEmailLabel', () async {
      // TODO
    });

    // Delete a mail template.
    //
    //Future deleteMailTemplate(String id) async
    test('test deleteMailTemplate', () async {
      // TODO
    });

    // Fetch one email.
    //
    //Future<GetEmailResponse> getEmail(String id, { String accountId, String xWorkspaceID }) async
    test('test getEmail', () async {
      // TODO
    });

    // Download an attachment.
    //
    // Streams the attachment binary. Response `Content-Type` matches the attachment's declared MIME type; `Content-Disposition` sets the filename. 
    //
    //Future<MultipartFile> getEmailAttachment(String messageId, String attachmentId, { String accountId, String xWorkspaceID }) async
    test('test getEmailAttachment', () async {
      // TODO
    });

    // Fetch a thread (the conversation a message belongs to).
    //
    //Future<GetThreadResponse> getEmailThread(String id, { String accountId, String xWorkspaceID }) async
    test('test getEmailThread', () async {
      // TODO
    });

    // Fetch a mail template.
    //
    //Future<Map<String, Object>> getMailTemplate(String id) async
    test('test getMailTemplate', () async {
      // TODO
    });

    // Read mail-tracking events for a thread (open log, reply log, etc.).
    //
    //Future<Map<String, Object>> getMailThreadTracking(String threadId) async
    test('test getMailThreadTracking', () async {
      // TODO
    });

    // Render a template with variables and return the resulting draft.
    //
    //Future<Map<String, Object>> instantiateMailTemplate(String id, Map<String, Object> requestBody) async
    test('test instantiateMailTemplate', () async {
      // TODO
    });

    // List drafts across connected mail accounts.
    //
    //Future<ListDraftsResponse> listDrafts({ String xWorkspaceID, List<String> accountIds, List<String> providers, int limit, String nextPageToken }) async
    test('test listDrafts', () async {
      // TODO
    });

    // List labels on the resolved mail account.
    //
    // Single-account list. The platform auto-resolves to the caller's sole connected account; pass `?accountId=` to disambiguate when multiple are connected. 
    //
    //Future<ListLabelsResponse> listEmailLabels({ String accountId, String xWorkspaceID }) async
    test('test listEmailLabels', () async {
      // TODO
    });

    // List emails across connected mail accounts.
    //
    // Fan-out list. Returns messages across every connected mail provider unless filtered. Pass `?accountIds=` (repeatable) to restrict to specific accounts, `?providers=` to restrict to specific provider ids, or both for the intersection. 
    //
    //Future<ListEmailsResponse> listEmails({ List<String> accountIds, List<String> providers, String xWorkspaceID, String query, List<String> labels, String folder, int limit, int offset }) async
    test('test listEmails', () async {
      // TODO
    });

    // List the caller's saved mail templates.
    //
    //Future<Map<String, Object>> listMailTemplates() async
    test('test listMailTemplates', () async {
      // TODO
    });

    // Reply to a specific email.
    //
    // The original message is identified by `?messageId=`. Body defaults to the original sender as recipient — pass `to`, `cc`, `bcc` to override. 
    //
    //Future<SendEmailResponse> replyEmail(String messageId, ReplyEmailRequest replyEmailRequest, { String xWorkspaceID }) async
    test('test replyEmail', () async {
      // TODO
    });

    // Save-or-create endpoint used by the renderer's \"save as template\" flow. Distinct from POST /v1/mail/templates which is the strict create. 
    //
    //Future<Map<String, Object>> saveMailTemplate(Map<String, Object> requestBody) async
    test('test saveMailTemplate', () async {
      // TODO
    });

    // Structured search across connected mail accounts.
    //
    // Fan-out search. Mirrors `listEmails`'s account/provider filter semantics. Date range filters are inclusive. The query string itself is passed via `?q=` (not `?query=`); structured filters go in their own params. 
    //
    //Future<SearchEmailsResponse> searchEmails(String q, { List<String> accountIds, List<String> providers, String xWorkspaceID, String from, String to, String subject, bool hasAttachment, bool isUnread, bool isStarred, List<String> labels, DateTime after, DateTime before, int limit, String nextPageToken }) async
    test('test searchEmails', () async {
      // TODO
    });

    // Send a draft.
    //
    // Submits the draft as an outbound message. The draft is consumed by the provider — subsequent `getDraft`/`updateDraft` calls return `404`. 
    //
    //Future<SendEmailResponse> sendDraft(String id, { String accountId, String xWorkspaceID }) async
    test('test sendDraft', () async {
      // TODO
    });

    // Send an email.
    //
    // Sends through the resolved connected account (auto-picks if the caller has exactly one connected mail account; errors `ambiguous_account` otherwise unless `accountId` is supplied). 
    //
    //Future<SendEmailResponse> sendEmail(SendEmailRequest sendEmailRequest, { String xWorkspaceID }) async
    test('test sendEmail', () async {
      // TODO
    });

    // Update a draft (full replacement of provided fields).
    //
    // PUT replaces the full set of provided fields on the draft. Fields omitted from the body are not modified. 
    //
    //Future<DraftResponse> updateDraft(String id, UpdateDraftRequest updateDraftRequest, { String accountId, String xWorkspaceID }) async
    test('test updateDraft', () async {
      // TODO
    });

    // Update an email (mark read/star, add/remove labels).
    //
    //Future<UpdateEmailResponse> updateEmail(String id, UpdateEmailRequest updateEmailRequest, { String accountId, String xWorkspaceID }) async
    test('test updateEmail', () async {
      // TODO
    });

    // Update a mail template.
    //
    //Future<Map<String, Object>> updateMailTemplate(String id, Map<String, Object> requestBody) async
    test('test updateMailTemplate', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceAddMailMessageLabels(String org, String workspace, String messageId, Map<String, Object> requestBody) async
    test('test workspaceAddMailMessageLabels', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCreateMailDraft(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCreateMailDraft', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceCreateMailLabel(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceCreateMailLabel', () async {
      // TODO
    });

    //Future workspaceDeleteMail(String org, String workspace, String id) async
    test('test workspaceDeleteMail', () async {
      // TODO
    });

    //Future workspaceDeleteMailDraft(String org, String workspace, String id) async
    test('test workspaceDeleteMailDraft', () async {
      // TODO
    });

    //Future workspaceDeleteMailLabel(String org, String workspace, String id) async
    test('test workspaceDeleteMailLabel', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetMail(String org, String workspace, String id) async
    test('test workspaceGetMail', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetMailAttachment(String org, String workspace, String messageId, String attachmentId) async
    test('test workspaceGetMailAttachment', () async {
      // TODO
    });

    // Workspace-scoped renderer-compat alias for mail/email/{id}.
    //
    //Future<Map<String, Object>> workspaceGetMailById(String org, String workspace, String id) async
    test('test workspaceGetMailById', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetMailDraft(String org, String workspace, String id) async
    test('test workspaceGetMailDraft', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceGetMailThread(String org, String workspace, String id) async
    test('test workspaceGetMailThread', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListMail(String org, String workspace) async
    test('test workspaceListMail', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListMailDrafts(String org, String workspace) async
    test('test workspaceListMailDrafts', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceListMailLabels(String org, String workspace) async
    test('test workspaceListMailLabels', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspacePatchMail(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspacePatchMail', () async {
      // TODO
    });

    //Future workspaceRemoveMailMessageLabel(String org, String workspace, String messageId, String labelId) async
    test('test workspaceRemoveMailMessageLabel', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceReplyMail(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceReplyMail', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceSearchMail(String org, String workspace, { String q }) async
    test('test workspaceSearchMail', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceSendMail(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceSendMail', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceSendMailDraft(String org, String workspace, String id) async
    test('test workspaceSendMailDraft', () async {
      // TODO
    });

    // Renderer-compat alias for /mail/send.
    //
    //Future<Map<String, Object>> workspaceSendMailEmailAlias(String org, String workspace, Map<String, Object> requestBody) async
    test('test workspaceSendMailEmailAlias', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceUpdateMail(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceUpdateMail', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceUpdateMailDraft(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceUpdateMailDraft', () async {
      // TODO
    });

    //Future<Map<String, Object>> workspaceUpdateMailLabel(String org, String workspace, String id, Map<String, Object> requestBody) async
    test('test workspaceUpdateMailLabel', () async {
      // TODO
    });

  });
}
