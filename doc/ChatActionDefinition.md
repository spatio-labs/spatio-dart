# spatio_sdk.model.ChatActionDefinition

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**description** | **String** |  | [optional] 
**platform** | **String** |  | 
**category** | **String** | Common values: `read`, `write`, `delete`, `manage`, `sync`. | [optional] 
**inputType** | **String** |  | [optional] 
**outputType** | **String** |  | [optional] 
**scopes** | **List<String>** | `null` when no scopes are declared (Go nil-slice). | [optional] [default to const []]
**metadata** | **Map<String, Object>** |  | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


