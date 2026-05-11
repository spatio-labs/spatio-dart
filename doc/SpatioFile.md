# spatio_sdk.model.SpatioFile

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
**name** | **String** |  | 
**size** | **int** | Bytes. | 
**mimeType** | **String** |  | 
**folderId** | **String** |  | [optional] 
**storageType** | **String** | Backing storage class — `r2`, `gdrive`, `dropbox`, etc. Provider-specific; treat as opaque.  | 
**downloadUrl** | **String** | Pre-signed download URL when one is cached on the row. Use `GET /v1/files/{id}/download` for a guaranteed-fresh URL — this field can lag past expiry.  | [optional] 
**metadata** | **Map<String, Object>** |  | [optional] [default to const {}]
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


