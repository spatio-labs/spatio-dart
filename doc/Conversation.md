# spatio_sdk.model.Conversation

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**userId** | **String** |  | 
**title** | **String** |  | 
**context** | **String** | Free-form context tag (e.g. `sidebar:sheets:entity:<id>`). | [optional] 
**cwd** | **String** |  | [optional] 
**sessionId** | **String** |  | [optional] 
**pinned** | **bool** |  | [optional] 
**lastMessageAt** | [**DateTime**](DateTime.md) |  | [optional] 
**messageCount** | **int** |  | [optional] 
**isActive** | **bool** |  | [optional] 
**metadata** | **Map<String, Object>** |  | [optional] [default to const {}]
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


