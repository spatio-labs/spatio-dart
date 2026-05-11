# spatio_sdk.model.Sheet

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**provider** | **String** | Registered provider id (e.g. `native-sheets`). | [optional] 
**accountId** | **String** | Connected-account row this sheet belongs to. | [optional] 
**ownerUserId** | **String** | User id of the sheet owner; non-native providers leave empty. | [optional] 
**name** | **String** |  | 
**description** | **String** |  | [optional] 
**data** | **Map<String, Object>** | Free-form provider blob. Treat as opaque. | [optional] [default to const {}]
**rowCount** | **int** |  | 
**columnCount** | **int** |  | 
**sheetCount** | **int** | Tab count when the file contains multiple sheets. | 
**isPublic** | **bool** |  | 
**isReadOnly** | **bool** |  | 
**fileSize** | **int** |  | [optional] 
**lastAccessedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


