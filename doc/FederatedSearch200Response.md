# spatio_sdk.model.FederatedSearch200Response

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**items** | [**List<FederatedSearch200ResponseItemsInner>**](FederatedSearch200ResponseItemsInner.md) |  | [default to const []]
**nextPageTokens** | **Map<String, String>** |  | [optional] [default to const {}]
**perPlatform** | [**Map<String, FederatedSearch200ResponsePerPlatformValue>**](FederatedSearch200ResponsePerPlatformValue.md) |  | [default to const {}]
**errors** | **Map<String, String>** | Per-platform errors. Other platforms still return results. | [optional] [default to const {}]
**totalReturned** | **int** |  | 
**took** | **String** | Aggregate wall-clock time for the fan-out, e.g. \"120ms\". | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


