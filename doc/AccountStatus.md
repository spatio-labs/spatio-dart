# spatio_sdk.model.AccountStatus

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **String** | Provider id (e.g. `native-notes`, `notion`, `google-keep`). | 
**accountId** | **String** | Connected-account row id. | 
**accountName** | **String** | Human-readable label for the account, when available. | [optional] 
**status** | **String** | - `ok` — provider call returned without error. - `error` — provider call failed; details in `error`. - `skipped` — connection was filtered out before the provider   call ran. Reserved; not currently emitted by the runtime.  | 
**error** | [**AccountError**](AccountError.md) |  | [optional] 
**nextPageToken** | **String** | Provider-specific cursor for the next page, if any. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


