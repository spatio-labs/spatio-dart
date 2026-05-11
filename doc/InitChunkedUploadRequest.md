# spatio_sdk.model.InitChunkedUploadRequest

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fileName** | **String** |  | 
**totalSize** | **int** |  | 
**mimeType** | **String** |  | 
**expectedBlocks** | **List<String>** | Hashes of every block the client intends to upload. | [default to const []]
**folderId** | **String** |  | [optional] 
**workspaceId** | **String** |  | [optional] 
**organizationId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


