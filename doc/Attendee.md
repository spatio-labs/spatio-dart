# spatio_sdk.model.Attendee

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | 
**name** | **String** |  | [optional] 
**status** | [**AttendeeStatus**](AttendeeStatus.md) |  | 
**role** | [**AttendeeRole**](AttendeeRole.md) |  | 
**optional** | **bool** | Legacy boolean — superseded by `role` (`role: optional` carries the same signal). Kept on the wire for client compatibility.  | 
**comment** | **String** |  | [optional] 
**additionalGuests** | **int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


