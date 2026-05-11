# spatio_sdk.model.IssueCollaborationToken200Response

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **String** | HS256 JWT, signed with the shared platform/worker secret. | 
**wsUrl** | **String** | Base WebSocket URL of the Yjs worker. | 
**room** | **String** |  | [optional] 
**expiresAt** | [**DateTime**](DateTime.md) |  | 
**expiresIn** | **int** | Seconds until the token expires. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


