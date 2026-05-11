# spatio_sdk.model.Email

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**threadId** | **String** |  | [optional] 
**provider** | **String** |  | [optional] 
**accountId** | **String** |  | [optional] 
**subject** | **String** |  | 
**from** | **String** |  | 
**to** | **List<String>** |  | [default to const []]
**cc** | **List<String>** |  | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**body** | **String** |  | 
**html** | **bool** | `true` when `body` contains HTML, `false` for plain text.  | 
**date** | [**DateTime**](DateTime.md) |  | 
**labels** | **List<String>** |  | [optional] [default to const []]
**isRead** | **bool** |  | 
**isStarred** | **bool** |  | 
**attachments** | [**List<AttachmentMeta>**](AttachmentMeta.md) |  | [optional] [default to const []]
**snippet** | **String** |  | [optional] 
**messageId** | **String** | RFC 5322 Message-ID header. | [optional] 
**inReplyTo** | **String** | RFC 5322 In-Reply-To header — the parent message id this message is a reply to.  | [optional] 
**references** | **List<String>** | RFC 5322 References header (ancestor chain). | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


