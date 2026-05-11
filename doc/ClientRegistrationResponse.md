# spatio_sdk.model.ClientRegistrationResponse

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientId** | **String** |  | 
**clientSecret** | **String** | Only returned when token_endpoint_auth_method is client_secret_*. | [optional] 
**clientName** | **String** |  | 
**redirectUris** | **List<String>** |  | [default to const []]
**grantTypes** | **List<String>** |  | [optional] [default to const []]
**responseTypes** | **List<String>** |  | [optional] [default to const []]
**scope** | **String** |  | [optional] 
**tokenEndpointAuthMethod** | **String** |  | [optional] 
**registrationAccessToken** | **String** |  | 
**registrationClientUri** | **String** |  | [optional] 
**clientIdIssuedAt** | **int** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


