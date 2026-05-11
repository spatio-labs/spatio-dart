# spatio_sdk.model.OrganizationMember

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | `OrganizationMember` row id. | 
**userId** | **String** |  | 
**role** | **String** |  | 
**joinedAt** | [**DateTime**](DateTime.md) |  | 
**invitedBy** | [**OrganizationMemberInvitedBy**](OrganizationMemberInvitedBy.md) |  | [optional] 
**user** | **Map<String, Object>** | Embedded user-profile fields (id, email, name, profilePhoto, ...). | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


