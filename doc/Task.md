# spatio_sdk.model.Task

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**provider** | **String** | Registered provider id (e.g. `native-tasks`, `linear`). | [optional] 
**accountId** | **String** |  | [optional] 
**ownerUserId** | **String** |  | [optional] 
**title** | **String** |  | 
**description** | **String** |  | [optional] 
**status** | **String** | Free-form status string. Canonical values across most providers: `todo`, `in_progress`, `in_review`, `backlog`, `done`. The platform falls back to `done` when `completed` is true and `status` is empty, else `todo`.  | [optional] 
**completed** | **bool** |  | 
**dueDate** | [**DateTime**](DateTime.md) |  | [optional] 
**priority** | **String** | Priority bucket. Canonical values (mapped from a 0–4 integer): `none`, `low`, `medium`, `high`, `urgent`.  | 
**labels** | **List<String>** |  | [optional] [default to const []]
**tags** | **List<String>** |  | [optional] [default to const []]
**assigneeId** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 
**completedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**parentTaskId** | **String** | Parent task id when this is a subtask. | [optional] 
**metadata** | **Map<String, Object>** | Provider-specific extras. | [optional] [default to const {}]
**type** | **String** | Discriminator. Canonical values: `todo`, `reminder`, `issue`. Empty defaults to `todo`.  | [optional] 
**sourcePlatform** | **String** | When this task was auto-generated from another artifact (e.g. a calendar event reminder), the platform id of that artifact.  | [optional] 
**sourceId** | **String** | Source artifact id paired with `sourcePlatform`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


