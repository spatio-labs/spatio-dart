# spatio_sdk.model.CreateEventRequest

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **String** |  | 
**calendarId** | **String** | Specific calendar within the account; omit for the default. | [optional] 
**event** | [**SpatioEvent**](SpatioEvent.md) |  | 
**sendUpdates** | **String** | Notification policy passed through to the provider. | [optional] 
**conferenceType** | **String** | When set, the platform will auto-attach a conference link of the matching type (`spatio`, `meet`, `zoom`, `teams`).  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


