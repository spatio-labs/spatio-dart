# spatio_sdk.model.ClientRegistrationRequest

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientName** | **String** |  | 
**redirectUris** | **List<String>** |  | [default to const []]
**grantTypes** | **List<String>** |  | [optional] [default to const []]
**responseTypes** | **List<String>** |  | [optional] [default to const []]
**scope** | **String** | Space-separated scope list. Defaults to `read:*`. | [optional] 
**tokenEndpointAuthMethod** | **String** |  | [optional] [default to 'none']
**clientUri** | **String** |  | [optional] 
**logoUri** | **String** |  | [optional] 
**policyUri** | **String** |  | [optional] 
**tosUri** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


