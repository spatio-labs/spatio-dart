# spatio_sdk.model.SpatioEvent

## Load the model package
```dart
import 'package:spatio_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**title** | **String** |  | 
**description** | **String** |  | [optional] 
**startTime** | [**DateTime**](DateTime.md) |  | 
**endTime** | [**DateTime**](DateTime.md) |  | 
**allDay** | **bool** |  | 
**location** | **String** |  | [optional] 
**locationDetails** | **Map<String, String>** | Free-form key/value (lat, lng, room, etc.). | [optional] [default to const {}]
**organizer** | **String** | Organizer email. | [optional] 
**attendees** | [**List<Attendee>**](Attendee.md) |  | [optional] [default to const []]
**recurrenceRule** | **String** | RFC 5545 RRULE. | [optional] 
**recurrenceId** | **String** | Set on instances of a recurring series. | [optional] 
**originalStart** | [**DateTime**](DateTime.md) | Original start of a moved recurring instance. | [optional] 
**status** | **String** | Provider-mapped event status. Free-form string — common values are `confirmed`, `tentative`, `cancelled`, `needs_action`, and the empty string when the provider doesn't populate it. Not enumerated strictly because providers add custom values and the platform passes them through verbatim.  | 
**visibility** | **String** | Free-form visibility string. Common values: `public`, `private`, `confidential`, plus empty when unset.  | 
**busy** | **bool** | Whether this event marks the time as busy or free. | 
**reminders** | [**List<Reminder>**](Reminder.md) |  | [optional] [default to const []]
**travelTimeMinutes** | **int** | Apple Calendar's local-only travel buffer. Stored on the cached row but not synced to providers that don't model it.  | [optional] 
**categories** | **List<String>** |  | [optional] [default to const []]
**color** | **String** |  | [optional] 
**userId** | **String** |  | [optional] 
**accountId** | **String** |  | 
**provider** | **String** | Standardized provider id (e.g. `google-calendar`, `native-calendar`). Mirrors `provider_id` — both are populated on writes; clients should prefer `provider`.  | [optional] 
**providerId** | **String** | Legacy alias of `provider`. | 
**providerData** | **Map<String, Object>** | Provider-specific extras. | [optional] [default to const {}]
**createdAt** | [**DateTime**](DateTime.md) |  | 
**updatedAt** | [**DateTime**](DateTime.md) |  | 
**deletedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**syncedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**conferenceData** | [**ConferenceData**](ConferenceData.md) |  | [optional] 
**attachments** | [**List<Attachment>**](Attachment.md) |  | [optional] [default to const []]
**url** | **String** |  | [optional] 
**etag** | **String** |  | [optional] 
**sequence** | **int** |  | [optional] 
**customData** | **Map<String, String>** |  | [optional] [default to const {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


