# spatio_sdk.model.BlockContent

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**richText** | [**List<RichTextObject>**](RichTextObject.md) |  | [optional] [default to const []]
**language** | **String** | Programming language for `code` blocks. | [optional] 
**checked** | **bool** | Toggle state for `to_do` blocks. | [optional] 
**icon** | **String** | Emoji or short string for `callout` blocks. | [optional] 
**color** | **String** | Theme color for `callout` blocks. | [optional] 
**url** | **String** | Source URL for `image`, `video`, `file` blocks. | [optional] 
**caption** | **String** | Visible caption for media blocks. | [optional] 
**altText** | **String** | Screen-reader description for media blocks. Distinct from `caption` (visible to readers) — required for accessible notes when the image conveys meaning.  | [optional] 
**embedUrl** | **String** | Source URL for `embed` blocks. | [optional] 
**cells** | [**List<List<RichTextObject>>**](List.md) | 2D rich-text grid for `table` and `table_row` blocks. | [optional] [default to const []]
**expression** | **String** | TeX/MathJax expression for `equation` blocks. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


