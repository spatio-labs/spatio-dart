# spatio_sdk.model.Block

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**noteId** | **String** |  | 
**parentId** | **String** |  | [optional] 
**type** | [**BlockType**](BlockType.md) |  | 
**content** | [**BlockContent**](BlockContent.md) |  | 
**properties** | **Map<String, Object>** |  | [optional] [default to const {}]
**position** | **int** | Order within the parent (0-indexed). | 
**hasChildren** | **bool** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


