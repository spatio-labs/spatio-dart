# spatio_sdk.api.MailApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkArchiveEmails**](MailApi.md#bulkarchiveemails) | **POST** /v1/mail/archive | Archive multiple messages (remove the INBOX label).
[**bulkDeleteEmails**](MailApi.md#bulkdeleteemails) | **POST** /v1/mail/delete | Delete multiple messages in one call.
[**bulkMarkEmailsRead**](MailApi.md#bulkmarkemailsread) | **POST** /v1/mail/mark-read | Mark multiple messages read or unread in one call.
[**createDraft**](MailApi.md#createdraft) | **POST** /v1/mail/drafts | Create a draft.
[**createEmailLabel**](MailApi.md#createemaillabel) | **POST** /v1/mail/labels | Create a label.
[**createMailTemplate**](MailApi.md#createmailtemplate) | **POST** /v1/mail/templates | Create a mail template.
[**deleteDraft**](MailApi.md#deletedraft) | **DELETE** /v1/mail/drafts/{id} | Delete a draft.
[**deleteEmail**](MailApi.md#deleteemail) | **DELETE** /v1/mail/email/{id} | Delete an email.
[**deleteEmailLabel**](MailApi.md#deleteemaillabel) | **DELETE** /v1/mail/labels/{id} | Delete a label.
[**deleteMailTemplate**](MailApi.md#deletemailtemplate) | **DELETE** /v1/mail/templates/{id} | Delete a mail template.
[**getEmail**](MailApi.md#getemail) | **GET** /v1/mail/email/{id} | Fetch one email.
[**getEmailAttachment**](MailApi.md#getemailattachment) | **GET** /v1/mail/attachment/{messageId}/{attachmentId} | Download an attachment.
[**getEmailThread**](MailApi.md#getemailthread) | **GET** /v1/mail/thread/{id} | Fetch a thread (the conversation a message belongs to).
[**getMailTemplate**](MailApi.md#getmailtemplate) | **GET** /v1/mail/templates/{id} | Fetch a mail template.
[**getMailThreadTracking**](MailApi.md#getmailthreadtracking) | **GET** /v1/mail/threads/{threadId}/tracking | Read mail-tracking events for a thread (open log, reply log, etc.).
[**instantiateMailTemplate**](MailApi.md#instantiatemailtemplate) | **POST** /v1/mail/templates/{id}/instantiate | Render a template with variables and return the resulting draft.
[**listDrafts**](MailApi.md#listdrafts) | **GET** /v1/mail/drafts | List drafts across connected mail accounts.
[**listEmailLabels**](MailApi.md#listemaillabels) | **GET** /v1/mail/labels | List labels on the resolved mail account.
[**listEmails**](MailApi.md#listemails) | **GET** /v1/mail/list | List emails across connected mail accounts.
[**listMailTemplates**](MailApi.md#listmailtemplates) | **GET** /v1/mail/templates | List the caller's saved mail templates.
[**replyEmail**](MailApi.md#replyemail) | **POST** /v1/mail/reply | Reply to a specific email.
[**saveMailTemplate**](MailApi.md#savemailtemplate) | **POST** /v1/mail/templates/save | Save-or-create endpoint used by the renderer's \"save as template\" flow. Distinct from POST /v1/mail/templates which is the strict create. 
[**searchEmails**](MailApi.md#searchemails) | **GET** /v1/mail/search | Structured search across connected mail accounts.
[**sendDraft**](MailApi.md#senddraft) | **POST** /v1/mail/drafts/{id}/send | Send a draft.
[**sendEmail**](MailApi.md#sendemail) | **POST** /v1/mail/send | Send an email.
[**updateDraft**](MailApi.md#updatedraft) | **PUT** /v1/mail/drafts/{id} | Update a draft (full replacement of provided fields).
[**updateEmail**](MailApi.md#updateemail) | **PATCH** /v1/mail/email/{id} | Update an email (mark read/star, add/remove labels).
[**updateMailTemplate**](MailApi.md#updatemailtemplate) | **PATCH** /v1/mail/templates/{id} | Update a mail template.
[**workspaceAddMailMessageLabels**](MailApi.md#workspaceaddmailmessagelabels) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/{messageId}/labels | 
[**workspaceCreateMailDraft**](MailApi.md#workspacecreatemaildraft) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts | 
[**workspaceCreateMailLabel**](MailApi.md#workspacecreatemaillabel) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/labels | 
[**workspaceDeleteMail**](MailApi.md#workspacedeletemail) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id} | 
[**workspaceDeleteMailDraft**](MailApi.md#workspacedeletemaildraft) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id} | 
[**workspaceDeleteMailLabel**](MailApi.md#workspacedeletemaillabel) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/mail/labels/{id} | 
[**workspaceGetMail**](MailApi.md#workspacegetmail) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id} | 
[**workspaceGetMailAttachment**](MailApi.md#workspacegetmailattachment) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/attachment/{messageId}/{attachmentId} | 
[**workspaceGetMailById**](MailApi.md#workspacegetmailbyid) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/{id} | Workspace-scoped renderer-compat alias for mail/email/{id}.
[**workspaceGetMailDraft**](MailApi.md#workspacegetmaildraft) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id} | 
[**workspaceGetMailThread**](MailApi.md#workspacegetmailthread) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/thread/{id} | 
[**workspaceListMail**](MailApi.md#workspacelistmail) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/list | 
[**workspaceListMailDrafts**](MailApi.md#workspacelistmaildrafts) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts | 
[**workspaceListMailLabels**](MailApi.md#workspacelistmaillabels) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/labels | 
[**workspacePatchMail**](MailApi.md#workspacepatchmail) | **PATCH** /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id} | 
[**workspaceRemoveMailMessageLabel**](MailApi.md#workspaceremovemailmessagelabel) | **DELETE** /v1/organizations/{org}/workspaces/{workspace}/mail/{messageId}/labels/{labelId} | 
[**workspaceReplyMail**](MailApi.md#workspacereplymail) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/reply | 
[**workspaceSearchMail**](MailApi.md#workspacesearchmail) | **GET** /v1/organizations/{org}/workspaces/{workspace}/mail/search | 
[**workspaceSendMail**](MailApi.md#workspacesendmail) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/send | 
[**workspaceSendMailDraft**](MailApi.md#workspacesendmaildraft) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id}/send | 
[**workspaceSendMailEmailAlias**](MailApi.md#workspacesendmailemailalias) | **POST** /v1/organizations/{org}/workspaces/{workspace}/mail/email | Renderer-compat alias for /mail/send.
[**workspaceUpdateMail**](MailApi.md#workspaceupdatemail) | **PUT** /v1/organizations/{org}/workspaces/{workspace}/mail/email/{id} | 
[**workspaceUpdateMailDraft**](MailApi.md#workspaceupdatemaildraft) | **PUT** /v1/organizations/{org}/workspaces/{workspace}/mail/drafts/{id} | 
[**workspaceUpdateMailLabel**](MailApi.md#workspaceupdatemaillabel) | **PUT** /v1/organizations/{org}/workspaces/{workspace}/mail/labels/{id} | 


# **bulkArchiveEmails**
> BulkArchiveResponse bulkArchiveEmails(bulkArchiveRequest)

Archive multiple messages (remove the INBOX label).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final bulkArchiveRequest = BulkArchiveRequest(); // BulkArchiveRequest | 

try {
    final result = api_instance.bulkArchiveEmails(bulkArchiveRequest);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->bulkArchiveEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkArchiveRequest** | [**BulkArchiveRequest**](BulkArchiveRequest.md)|  | 

### Return type

[**BulkArchiveResponse**](BulkArchiveResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkDeleteEmails**
> BulkDeleteEmailsResponse bulkDeleteEmails(bulkDeleteEmailsRequest)

Delete multiple messages in one call.

Soft-delete by default (moves to provider trash). Set `permanent: true` for a hard delete. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final bulkDeleteEmailsRequest = BulkDeleteEmailsRequest(); // BulkDeleteEmailsRequest | 

try {
    final result = api_instance.bulkDeleteEmails(bulkDeleteEmailsRequest);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->bulkDeleteEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkDeleteEmailsRequest** | [**BulkDeleteEmailsRequest**](BulkDeleteEmailsRequest.md)|  | 

### Return type

[**BulkDeleteEmailsResponse**](BulkDeleteEmailsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkMarkEmailsRead**
> BulkMarkReadResponse bulkMarkEmailsRead(bulkMarkReadRequest)

Mark multiple messages read or unread in one call.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final bulkMarkReadRequest = BulkMarkReadRequest(); // BulkMarkReadRequest | 

try {
    final result = api_instance.bulkMarkEmailsRead(bulkMarkReadRequest);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->bulkMarkEmailsRead: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bulkMarkReadRequest** | [**BulkMarkReadRequest**](BulkMarkReadRequest.md)|  | 

### Return type

[**BulkMarkReadResponse**](BulkMarkReadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createDraft**
> DraftResponse createDraft(createDraftRequest, xWorkspaceID)

Create a draft.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final createDraftRequest = CreateDraftRequest(); // CreateDraftRequest | 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.createDraft(createDraftRequest, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->createDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDraftRequest** | [**CreateDraftRequest**](CreateDraftRequest.md)|  | 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**DraftResponse**](DraftResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEmailLabel**
> CreateLabelResponse createEmailLabel(createLabelRequest, accountId, xWorkspaceID)

Create a label.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final createLabelRequest = CreateLabelRequest(); // CreateLabelRequest | 
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.createEmailLabel(createLabelRequest, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->createEmailLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createLabelRequest** | [**CreateLabelRequest**](CreateLabelRequest.md)|  | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**CreateLabelResponse**](CreateLabelResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMailTemplate**
> Map<String, Object> createMailTemplate(requestBody)

Create a mail template.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.createMailTemplate(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->createMailTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDraft**
> deleteDraft(id, accountId, xWorkspaceID)

Delete a draft.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | Draft id.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    api_instance.deleteDraft(id, accountId, xWorkspaceID);
} catch (e) {
    print('Exception when calling MailApi->deleteDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Draft id. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmail**
> SuccessFlag deleteEmail(id, accountId, xWorkspaceID)

Delete an email.

Soft-deletes (moves to provider trash).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | Email message id.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.deleteEmail(id, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->deleteEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Email message id. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SuccessFlag**](SuccessFlag.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEmailLabel**
> deleteEmailLabel(id, accountId, xWorkspaceID)

Delete a label.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | Label id.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    api_instance.deleteEmailLabel(id, accountId, xWorkspaceID);
} catch (e) {
    print('Exception when calling MailApi->deleteEmailLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Label id. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMailTemplate**
> deleteMailTemplate(id)

Delete a mail template.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | 

try {
    api_instance.deleteMailTemplate(id);
} catch (e) {
    print('Exception when calling MailApi->deleteMailTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmail**
> GetEmailResponse getEmail(id, accountId, xWorkspaceID)

Fetch one email.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | Email message id.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.getEmail(id, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->getEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Email message id. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**GetEmailResponse**](GetEmailResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailAttachment**
> MultipartFile getEmailAttachment(messageId, attachmentId, accountId, xWorkspaceID)

Download an attachment.

Streams the attachment binary. Response `Content-Type` matches the attachment's declared MIME type; `Content-Disposition` sets the filename. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final messageId = messageId_example; // String | Message id the attachment belongs to.
final attachmentId = attachmentId_example; // String | Attachment id within the message.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.getEmailAttachment(messageId, attachmentId, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->getEmailAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**| Message id the attachment belongs to. | 
 **attachmentId** | **String**| Attachment id within the message. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEmailThread**
> GetThreadResponse getEmailThread(id, accountId, xWorkspaceID)

Fetch a thread (the conversation a message belongs to).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | Thread id.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.getEmailThread(id, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->getEmailThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Thread id. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**GetThreadResponse**](GetThreadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailTemplate**
> Map<String, Object> getMailTemplate(id)

Fetch a mail template.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | 

try {
    final result = api_instance.getMailTemplate(id);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->getMailTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMailThreadTracking**
> Map<String, Object> getMailThreadTracking(threadId)

Read mail-tracking events for a thread (open log, reply log, etc.).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final threadId = threadId_example; // String | 

try {
    final result = api_instance.getMailThreadTracking(threadId);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->getMailThreadTracking: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threadId** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **instantiateMailTemplate**
> Map<String, Object> instantiateMailTemplate(id, requestBody)

Render a template with variables and return the resulting draft.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.instantiateMailTemplate(id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->instantiateMailTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDrafts**
> ListDraftsResponse listDrafts(xWorkspaceID, accountIds, providers, limit, nextPageToken)

List drafts across connected mail accounts.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final accountIds = []; // List<String> | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
final providers = []; // List<String> | Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
final limit = 56; // int | 
final nextPageToken = nextPageToken_example; // String | 

try {
    final result = api_instance.listDrafts(xWorkspaceID, accountIds, providers, limit, nextPageToken);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->listDrafts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **accountIds** | [**List<String>**](String.md)| Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  | [optional] [default to const []]
 **providers** | [**List<String>**](String.md)| Repeatable. Restrict to these provider ids (`gmail`, `outlook`). | [optional] [default to const []]
 **limit** | **int**|  | [optional] [default to 50]
 **nextPageToken** | **String**|  | [optional] 

### Return type

[**ListDraftsResponse**](ListDraftsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEmailLabels**
> ListLabelsResponse listEmailLabels(accountId, xWorkspaceID)

List labels on the resolved mail account.

Single-account list. The platform auto-resolves to the caller's sole connected account; pass `?accountId=` to disambiguate when multiple are connected. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.listEmailLabels(accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->listEmailLabels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**ListLabelsResponse**](ListLabelsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listEmails**
> ListEmailsResponse listEmails(accountIds, providers, xWorkspaceID, query, labels, folder, limit, offset)

List emails across connected mail accounts.

Fan-out list. Returns messages across every connected mail provider unless filtered. Pass `?accountIds=` (repeatable) to restrict to specific accounts, `?providers=` to restrict to specific provider ids, or both for the intersection. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final accountIds = []; // List<String> | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
final providers = []; // List<String> | Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final query = query_example; // String | Provider-specific full-text query (e.g. Gmail search syntax).
final labels = []; // List<String> | Repeatable. Filter to messages carrying every label.
final folder = folder_example; // String | Logical folder filter. Canonical values: `inbox`, `sent`, `starred`, `trash`, `archive`. Provider-specific folders accepted as opaque strings. 
final limit = 56; // int | 
final offset = 56; // int | 

try {
    final result = api_instance.listEmails(accountIds, providers, xWorkspaceID, query, labels, folder, limit, offset);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->listEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountIds** | [**List<String>**](String.md)| Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  | [optional] [default to const []]
 **providers** | [**List<String>**](String.md)| Repeatable. Restrict to these provider ids (`gmail`, `outlook`). | [optional] [default to const []]
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **query** | **String**| Provider-specific full-text query (e.g. Gmail search syntax). | [optional] 
 **labels** | [**List<String>**](String.md)| Repeatable. Filter to messages carrying every label. | [optional] [default to const []]
 **folder** | **String**| Logical folder filter. Canonical values: `inbox`, `sent`, `starred`, `trash`, `archive`. Provider-specific folders accepted as opaque strings.  | [optional] 
 **limit** | **int**|  | [optional] [default to 50]
 **offset** | **int**|  | [optional] [default to 0]

### Return type

[**ListEmailsResponse**](ListEmailsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMailTemplates**
> Map<String, Object> listMailTemplates()

List the caller's saved mail templates.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();

try {
    final result = api_instance.listMailTemplates();
    print(result);
} catch (e) {
    print('Exception when calling MailApi->listMailTemplates: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replyEmail**
> SendEmailResponse replyEmail(messageId, replyEmailRequest, xWorkspaceID)

Reply to a specific email.

The original message is identified by `?messageId=`. Body defaults to the original sender as recipient — pass `to`, `cc`, `bcc` to override. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final messageId = messageId_example; // String | Id of the message being replied to.
final replyEmailRequest = ReplyEmailRequest(); // ReplyEmailRequest | 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.replyEmail(messageId, replyEmailRequest, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->replyEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **messageId** | **String**| Id of the message being replied to. | 
 **replyEmailRequest** | [**ReplyEmailRequest**](ReplyEmailRequest.md)|  | 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SendEmailResponse**](SendEmailResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveMailTemplate**
> Map<String, Object> saveMailTemplate(requestBody)

Save-or-create endpoint used by the renderer's \"save as template\" flow. Distinct from POST /v1/mail/templates which is the strict create. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.saveMailTemplate(requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->saveMailTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchEmails**
> SearchEmailsResponse searchEmails(q, accountIds, providers, xWorkspaceID, from, to, subject, hasAttachment, isUnread, isStarred, labels, after, before, limit, nextPageToken)

Structured search across connected mail accounts.

Fan-out search. Mirrors `listEmails`'s account/provider filter semantics. Date range filters are inclusive. The query string itself is passed via `?q=` (not `?query=`); structured filters go in their own params. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final q = q_example; // String | Provider-specific full-text query string.
final accountIds = []; // List<String> | Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used. 
final providers = []; // List<String> | Repeatable. Restrict to these provider ids (`gmail`, `outlook`).
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 
final from = from_example; // String | 
final to = to_example; // String | 
final subject = subject_example; // String | 
final hasAttachment = true; // bool | 
final isUnread = true; // bool | 
final isStarred = true; // bool | 
final labels = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | Inclusive lower-bound date.
final before = 2013-10-20T19:20:30+01:00; // DateTime | Inclusive upper-bound date.
final limit = 56; // int | 
final nextPageToken = nextPageToken_example; // String | Cursor returned by the previous call.

try {
    final result = api_instance.searchEmails(q, accountIds, providers, xWorkspaceID, from, to, subject, hasAttachment, isUnread, isStarred, labels, after, before, limit, nextPageToken);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->searchEmails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Provider-specific full-text query string. | 
 **accountIds** | [**List<String>**](String.md)| Repeatable. Restrict to these connected-account row ids. Mutually orthogonal to `providers` — when both are set the intersection is used.  | [optional] [default to const []]
 **providers** | [**List<String>**](String.md)| Repeatable. Restrict to these provider ids (`gmail`, `outlook`). | [optional] [default to const []]
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 
 **from** | **String**|  | [optional] 
 **to** | **String**|  | [optional] 
 **subject** | **String**|  | [optional] 
 **hasAttachment** | **bool**|  | [optional] 
 **isUnread** | **bool**|  | [optional] 
 **isStarred** | **bool**|  | [optional] 
 **labels** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**| Inclusive lower-bound date. | [optional] 
 **before** | **DateTime**| Inclusive upper-bound date. | [optional] 
 **limit** | **int**|  | [optional] [default to 50]
 **nextPageToken** | **String**| Cursor returned by the previous call. | [optional] 

### Return type

[**SearchEmailsResponse**](SearchEmailsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendDraft**
> SendEmailResponse sendDraft(id, accountId, xWorkspaceID)

Send a draft.

Submits the draft as an outbound message. The draft is consumed by the provider — subsequent `getDraft`/`updateDraft` calls return `404`. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | Draft id.
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.sendDraft(id, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->sendDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Draft id. | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SendEmailResponse**](SendEmailResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendEmail**
> SendEmailResponse sendEmail(sendEmailRequest, xWorkspaceID)

Send an email.

Sends through the resolved connected account (auto-picks if the caller has exactly one connected mail account; errors `ambiguous_account` otherwise unless `accountId` is supplied). 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final sendEmailRequest = SendEmailRequest(); // SendEmailRequest | 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.sendEmail(sendEmailRequest, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->sendEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendEmailRequest** | [**SendEmailRequest**](SendEmailRequest.md)|  | 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**SendEmailResponse**](SendEmailResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDraft**
> DraftResponse updateDraft(id, updateDraftRequest, accountId, xWorkspaceID)

Update a draft (full replacement of provided fields).

PUT replaces the full set of provided fields on the draft. Fields omitted from the body are not modified. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | Draft id.
final updateDraftRequest = UpdateDraftRequest(); // UpdateDraftRequest | 
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.updateDraft(id, updateDraftRequest, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->updateDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Draft id. | 
 **updateDraftRequest** | [**UpdateDraftRequest**](UpdateDraftRequest.md)|  | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**DraftResponse**](DraftResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEmail**
> UpdateEmailResponse updateEmail(id, updateEmailRequest, accountId, xWorkspaceID)

Update an email (mark read/star, add/remove labels).

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | Email message id.
final updateEmailRequest = UpdateEmailRequest(); // UpdateEmailRequest | 
final accountId = accountId_example; // String | Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account. 
final xWorkspaceID = xWorkspaceID_example; // String | Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly. 

try {
    final result = api_instance.updateEmail(id, updateEmailRequest, accountId, xWorkspaceID);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->updateEmail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Email message id. | 
 **updateEmailRequest** | [**UpdateEmailRequest**](UpdateEmailRequest.md)|  | 
 **accountId** | **String**| Connected-account row id. Selects which provider account this request targets when more than one is connected. Mutually exclusive with `provider`. If omitted on a list endpoint the call fans out across every connected account.  | [optional] 
 **xWorkspaceID** | **String**| Workspace scope for unscoped tokens. Workspace-scoped PATs and OAuth tokens carry this implicitly; for session/JWT auth without a scoped PAT, pass it explicitly.  | [optional] 

### Return type

[**UpdateEmailResponse**](UpdateEmailResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMailTemplate**
> Map<String, Object> updateMailTemplate(id, requestBody)

Update a mail template.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.updateMailTemplate(id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->updateMailTemplate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceAddMailMessageLabels**
> Map<String, Object> workspaceAddMailMessageLabels(org, workspace, messageId, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final messageId = messageId_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceAddMailMessageLabels(org, workspace, messageId, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceAddMailMessageLabels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **messageId** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateMailDraft**
> Map<String, Object> workspaceCreateMailDraft(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreateMailDraft(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceCreateMailDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceCreateMailLabel**
> Map<String, Object> workspaceCreateMailLabel(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceCreateMailLabel(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceCreateMailLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceDeleteMail**
> workspaceDeleteMail(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    api_instance.workspaceDeleteMail(org, workspace, id);
} catch (e) {
    print('Exception when calling MailApi->workspaceDeleteMail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceDeleteMailDraft**
> workspaceDeleteMailDraft(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    api_instance.workspaceDeleteMailDraft(org, workspace, id);
} catch (e) {
    print('Exception when calling MailApi->workspaceDeleteMailDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceDeleteMailLabel**
> workspaceDeleteMailLabel(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    api_instance.workspaceDeleteMailLabel(org, workspace, id);
} catch (e) {
    print('Exception when calling MailApi->workspaceDeleteMailLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetMail**
> Map<String, Object> workspaceGetMail(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetMail(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceGetMail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetMailAttachment**
> Map<String, Object> workspaceGetMailAttachment(org, workspace, messageId, attachmentId)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final messageId = messageId_example; // String | 
final attachmentId = attachmentId_example; // String | 

try {
    final result = api_instance.workspaceGetMailAttachment(org, workspace, messageId, attachmentId);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceGetMailAttachment: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **messageId** | **String**|  | 
 **attachmentId** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetMailById**
> Map<String, Object> workspaceGetMailById(org, workspace, id)

Workspace-scoped renderer-compat alias for mail/email/{id}.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetMailById(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceGetMailById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetMailDraft**
> Map<String, Object> workspaceGetMailDraft(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetMailDraft(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceGetMailDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetMailThread**
> Map<String, Object> workspaceGetMailThread(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceGetMailThread(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceGetMailThread: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListMail**
> Map<String, Object> workspaceListMail(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListMail(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceListMail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListMailDrafts**
> Map<String, Object> workspaceListMailDrafts(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListMailDrafts(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceListMailDrafts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceListMailLabels**
> Map<String, Object> workspaceListMailLabels(org, workspace)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 

try {
    final result = api_instance.workspaceListMailLabels(org, workspace);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceListMailLabels: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspacePatchMail**
> Map<String, Object> workspacePatchMail(org, workspace, id, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspacePatchMail(org, workspace, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspacePatchMail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceRemoveMailMessageLabel**
> workspaceRemoveMailMessageLabel(org, workspace, messageId, labelId)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final messageId = messageId_example; // String | 
final labelId = labelId_example; // String | 

try {
    api_instance.workspaceRemoveMailMessageLabel(org, workspace, messageId, labelId);
} catch (e) {
    print('Exception when calling MailApi->workspaceRemoveMailMessageLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **messageId** | **String**|  | 
 **labelId** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceReplyMail**
> Map<String, Object> workspaceReplyMail(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceReplyMail(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceReplyMail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceSearchMail**
> Map<String, Object> workspaceSearchMail(org, workspace, q)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final q = q_example; // String | 

try {
    final result = api_instance.workspaceSearchMail(org, workspace, q);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceSearchMail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **q** | **String**|  | [optional] 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceSendMail**
> Map<String, Object> workspaceSendMail(org, workspace, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceSendMail(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceSendMail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceSendMailDraft**
> Map<String, Object> workspaceSendMailDraft(org, workspace, id)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.workspaceSendMailDraft(org, workspace, id);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceSendMailDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceSendMailEmailAlias**
> Map<String, Object> workspaceSendMailEmailAlias(org, workspace, requestBody)

Renderer-compat alias for /mail/send.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceSendMailEmailAlias(org, workspace, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceSendMailEmailAlias: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUpdateMail**
> Map<String, Object> workspaceUpdateMail(org, workspace, id, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceUpdateMail(org, workspace, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceUpdateMail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUpdateMailDraft**
> Map<String, Object> workspaceUpdateMailDraft(org, workspace, id, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceUpdateMailDraft(org, workspace, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceUpdateMailDraft: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceUpdateMailLabel**
> Map<String, Object> workspaceUpdateMailLabel(org, workspace, id, requestBody)



### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MailApi();
final org = org_example; // String | 
final workspace = workspace_example; // String | 
final id = id_example; // String | 
final requestBody = Map<String, Object>(); // Map<String, Object> | 

try {
    final result = api_instance.workspaceUpdateMailLabel(org, workspace, id, requestBody);
    print(result);
} catch (e) {
    print('Exception when calling MailApi->workspaceUpdateMailLabel: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org** | **String**|  | 
 **workspace** | **String**|  | 
 **id** | **String**|  | 
 **requestBody** | [**Map<String, Object>**](Object.md)|  | 

### Return type

**Map<String, Object>**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

