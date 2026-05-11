# spatio_sdk.model.InitChunkedUploadResponse

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sessionId** | **String** |  | 
**blocksToUpload** | **List<String>** |  | [default to const []]
**blocksAlreadyExist** | **List<String>** | Blocks the platform already has and the client can skip (content-addressed deduplication).  | [default to const []]
**deduplicationPct** | **double** |  | 
**estimatedUploadSize** | **int** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


