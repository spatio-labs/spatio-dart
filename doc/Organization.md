# spatio_sdk.model.Organization

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**slug** | **String** |  | 
**description** | **String** |  | [optional] 
**logoUrl** | **String** |  | [optional] 
**role** | **String** | The caller's role in this org (`owner`, `admin`, `billing_admin`, `member`). | 
**memberCount** | **int** |  | [optional] 
**workspaceCount** | **int** |  | [optional] 
**workspaces** | [**List<OrganizationWorkspacesInner>**](OrganizationWorkspacesInner.md) | Compact workspace summaries embedded in the org-list response. | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


