# spatio_sdk.model.Recommendation

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**workspaceId** | **String** |  | [optional] 
**userId** | **String** |  | [optional] 
**kind** | **String** | Provider-tagged proposal kind (e.g. `note.draft`, `task.followup`). | [optional] 
**title** | **String** |  | [optional] 
**body** | **String** |  | [optional] 
**status** | **String** |  | 
**payload** | **Map<String, Object>** |  | [optional] [default to const {}]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**expiresAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


