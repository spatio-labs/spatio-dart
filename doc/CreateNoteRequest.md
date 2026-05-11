# spatio_sdk.model.CreateNoteRequest

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | 
**content** | **String** |  | [optional] 
**icon** | **String** |  | [optional] 
**coverImage** | **String** |  | [optional] 
**parentId** | **String** |  | [optional] 
**properties** | **Map<String, Object>** |  | [optional] [default to const {}]
**accountId** | **String** | Optional override for the target connected account. May also be passed as a `?accountId=` query param.  | [optional] 
**provider** | **String** | Optional provider id (alternative to `accountId` when only one account exists for the provider). May also be passed as a `?provider=` query param.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


