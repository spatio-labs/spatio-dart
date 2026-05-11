# spatio_sdk.model.ChatMessage

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**provider** | **String** |  | [optional] 
**accountId** | **String** |  | [optional] 
**channelId** | **String** |  | 
**userId** | **String** |  | 
**text** | **String** |  | 
**threadId** | **String** | Set on replies and on parent messages once a thread exists.  | [optional] 
**timestamp** | [**DateTime**](DateTime.md) |  | 
**replyCount** | **int** |  | [optional] 
**extra** | **Map<String, Object>** | Provider-specific extras. | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


