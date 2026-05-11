# spatio_sdk.model.Note

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Stable provider id for the note. | 
**provider** | **String** | Registered provider id (e.g. `native-notes`). | [optional] 
**accountId** | **String** | Connected-account row this note belongs to. | [optional] 
**ownerUserId** | **String** | User id of the note's owner. Surfaced so the renderer can show \"Shared with you\" when `ownerUserId` differs from the viewer's id. Empty for non-native providers.  | [optional] 
**title** | **String** |  | 
**content** | **String** | Markdown body. The block tree at `/v1/notes/{id}/blocks` is the canonical structured representation; `content` is a flattened markdown view kept for clients that don't render blocks.  | 
**icon** | **String** | Emoji or short string used as the note's icon. | [optional] 
**coverImage** | **String** | URL of the note's cover image. | [optional] 
**parentId** | **String** | Parent note id when notes are nested. | [optional] 
**properties** | **Map<String, Object>** | Free-form provider-specific properties (tags, etc.). | [optional] [default to const {}]
**archived** | **bool** |  | 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 
**lastEditedBy** | **String** | User id of the most recent editor. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


