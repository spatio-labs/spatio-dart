# spatio_sdk.model.Channel

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**provider** | **String** | Registered provider id (e.g. `slack`, `native-chat`).  | [optional] 
**accountId** | **String** |  | [optional] 
**name** | **String** |  | 
**type** | **String** | Provider-specific. Common canonicals: `channel` and `private` (group channels), `im` (1:1 DM), `mpim` (group DM).  | 
**description** | **String** |  | [optional] 
**topic** | **String** |  | [optional] 
**isMember** | **bool** |  | 
**isArchived** | **bool** |  | 
**memberCount** | **int** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


