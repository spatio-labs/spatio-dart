# spatio_sdk.model.SendEmailRequest

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **String** |  | [optional] 
**to** | **List<String>** |  | [default to const []]
**cc** | **List<String>** |  | [optional] [default to const []]
**bcc** | **List<String>** |  | [optional] [default to const []]
**subject** | **String** |  | 
**body** | **String** |  | 
**html** | **bool** |  | [optional] 
**attachments** | [**List<AttachmentInput>**](AttachmentInput.md) |  | [optional] [default to const []]
**inReplyTo** | **String** |  | [optional] 
**references** | **List<String>** |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


