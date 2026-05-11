# spatio_sdk.model.CreateTaskRequest

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | 
**description** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**dueDate** | [**DateTime**](DateTime.md) |  | [optional] 
**priority** | **String** |  | [optional] 
**labels** | **List<String>** |  | [optional] [default to const []]
**tags** | **List<String>** |  | [optional] [default to const []]
**assigneeId** | **String** |  | [optional] 
**parentTaskId** | **String** |  | [optional] 
**type** | **String** |  | [optional] 
**sourcePlatform** | **String** |  | [optional] 
**sourceId** | **String** |  | [optional] 
**accountId** | **String** | Optional override for the target connected account. May also be passed as `?accountId=`.  | [optional] 
**provider** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


