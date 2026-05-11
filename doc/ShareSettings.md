# spatio_sdk.model.ShareSettings

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**isPublic** | **bool** |  | 
**hasPassword** | **bool** |  | 
**shareToken** | **String** | Opaque token embedded in the public URL. Empty when `isPublic` is false.  | [optional] 
**shareUrl** | **String** | Fully-qualified public viewer URL. Computed server-side from `PUBLIC_VIEWER_BASE` (defaults to `https://spatio.app`) and the share token. Empty when the note is private.  | [optional] 
**passwordSetAt** | [**DateTime**](DateTime.md) | When the current password was set, if any. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


