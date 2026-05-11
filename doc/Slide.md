# spatio_sdk.model.Slide

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
**presentationId** | **String** |  | 
**title** | **String** |  | 
**notes** | **String** | Speaker notes. | [optional] 
**layout** | **String** | Free-form layout id. Provider-specific (`title`, `two-column`, `image-left`, custom). Not enumerated to avoid forcing a breaking change every time a provider adds one.  | [optional] 
**backgroundColor** | **String** |  | [optional] 
**backgroundImageUrl** | **String** |  | [optional] 
**textColor** | **String** |  | [optional] 
**transition** | **String** | Free-form transition id. | [optional] 
**position** | **int** | Zero-based position within the presentation. | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


