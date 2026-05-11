# spatio_sdk.model.Workspace

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
**organizationId** | **String** |  | [optional] 
**organization** | [**WorkspaceOrganization**](WorkspaceOrganization.md) |  | [optional] 
**role** | **String** | The caller's role in this workspace (`owner`, `admin`, `member`, `guest`). | [optional] 
**settings** | **Object** | Per-workspace settings. Currently emitted as either an object (`{language, timezone, ...}`) on `GET /v1/workspaces/{id}` or a JSON-encoded string on `GET /v1/organizations/{id}/workspaces`. Treat as opaque and parse defensively.  | [optional] 
**isDefault** | **bool** |  | [optional] 
**memberCount** | **int** |  | [optional] 
**billingTier** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


