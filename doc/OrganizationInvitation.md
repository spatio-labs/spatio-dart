# spatio_sdk.model.OrganizationInvitation

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**organizationId** | **String** |  | [optional] 
**email** | **String** |  | 
**role** | **String** |  | 
**token** | **String** | Opaque invitation token (omitted on list responses). | [optional] 
**expiresAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**acceptedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**revokedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**invitedBy** | [**OrganizationMemberInvitedBy**](OrganizationMemberInvitedBy.md) |  | [optional] 
**status** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


