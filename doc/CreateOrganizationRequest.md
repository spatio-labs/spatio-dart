# spatio_sdk.model.CreateOrganizationRequest

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**slug** | **String** | Auto-generated from `name` if omitted. Slug collisions are auto-suffixed with `-2`, `-3`, etc.  | [optional] 
**description** | **String** |  | [optional] 
**logoUrl** | **String** |  | [optional] 
**createDefaultWorkspace** | **bool** | `true` (default) creates a default workspace alongside the org. | [optional] 
**defaultWorkspaceName** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


