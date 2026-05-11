# spatio_sdk.model.FederatedSearchRequest

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** |  | 
**platforms** | **List<String>** | Subset to fan out to. Empty means all available platforms. | [optional] [default to const []]
**limit** | **int** |  | [optional] [default to 25]
**pageTokens** | **Map<String, String>** | Per-platform cursor for pagination. | [optional] [default to const {}]
**workspaceId** | **String** |  | [optional] 
**organizationId** | **String** |  | [optional] 
**includeShared** | **bool** |  | [optional] 
**includeArchived** | **bool** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


