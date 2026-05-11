# spatio_sdk.model.CreateDraftRequest

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **String** |  | [optional] 
**to** | **List<String>** |  | [optional] [default to const []]
**cc** | **List<String>** |  | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**subject** | **String** |  | [optional] 
**body** | **String** |  | [optional] 
**html** | **bool** |  | [optional] 
**attachments** | [**List<AttachmentInput>**](AttachmentInput.md) |  | [optional] [default to const []]
**threadId** | **String** | Provider thread id — set when this draft is a reply, so the sent message lands inside the parent thread.  | [optional] 
**inReplyTo** | **String** |  | [optional] 
**references** | **List<String>** |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


