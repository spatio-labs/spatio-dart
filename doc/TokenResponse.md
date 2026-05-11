# spatio_sdk.model.TokenResponse

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **String** | Opaque bearer token. Format `tok_<32 random base64url>`. | 
**tokenType** | **String** |  | 
**expiresIn** | **int** | Seconds until access_token expires. | 
**refreshToken** | **String** |  | [optional] 
**scope** | **String** |  | [optional] 
**idToken** | **String** | Only present when `openid` scope was granted. RS256-signed JWT — verify against the JWKS. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


