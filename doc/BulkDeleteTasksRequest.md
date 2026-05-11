# spatio_sdk.model.BulkDeleteTasksRequest

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**taskIds** | **List<String>** |  | [optional] [default to const []]
**accountIds** | **List<String>** | Parallel slice with taskIds — accountIds[i] targets taskIds[i]. | [optional] [default to const []]
**taskId** | **String** | Singular fallback when only deleting one task. | [optional] 
**accountId** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


