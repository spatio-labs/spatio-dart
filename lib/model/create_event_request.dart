//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateEventRequest {
  /// Returns a new [CreateEventRequest] instance.
  CreateEventRequest({
    required this.accountId,
    this.calendarId,
    required this.event,
    this.sendUpdates,
    this.conferenceType,
  });

  String accountId;

  /// Specific calendar within the account; omit for the default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? calendarId;

  SpatioEvent event;

  /// Notification policy passed through to the provider.
  CreateEventRequestSendUpdatesEnum? sendUpdates;

  /// When set, the platform will auto-attach a conference link of the matching type (`spatio`, `meet`, `zoom`, `teams`). 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conferenceType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateEventRequest &&
    other.accountId == accountId &&
    other.calendarId == calendarId &&
    other.event == event &&
    other.sendUpdates == sendUpdates &&
    other.conferenceType == conferenceType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId.hashCode) +
    (calendarId == null ? 0 : calendarId!.hashCode) +
    (event.hashCode) +
    (sendUpdates == null ? 0 : sendUpdates!.hashCode) +
    (conferenceType == null ? 0 : conferenceType!.hashCode);

  @override
  String toString() => 'CreateEventRequest[accountId=$accountId, calendarId=$calendarId, event=$event, sendUpdates=$sendUpdates, conferenceType=$conferenceType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account_id'] = this.accountId;
    if (this.calendarId != null) {
      json[r'calendar_id'] = this.calendarId;
    } else {
      json[r'calendar_id'] = null;
    }
      json[r'event'] = this.event;
    if (this.sendUpdates != null) {
      json[r'send_updates'] = this.sendUpdates;
    } else {
      json[r'send_updates'] = null;
    }
    if (this.conferenceType != null) {
      json[r'conference_type'] = this.conferenceType;
    } else {
      json[r'conference_type'] = null;
    }
    return json;
  }

  /// Returns a new [CreateEventRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateEventRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'account_id'), 'Required key "CreateEventRequest[account_id]" is missing from JSON.');
        assert(json[r'account_id'] != null, 'Required key "CreateEventRequest[account_id]" has a null value in JSON.');
        assert(json.containsKey(r'event'), 'Required key "CreateEventRequest[event]" is missing from JSON.');
        assert(json[r'event'] != null, 'Required key "CreateEventRequest[event]" has a null value in JSON.');
        return true;
      }());

      return CreateEventRequest(
        accountId: mapValueOfType<String>(json, r'account_id')!,
        calendarId: mapValueOfType<String>(json, r'calendar_id'),
        event: SpatioEvent.fromJson(json[r'event'])!,
        sendUpdates: CreateEventRequestSendUpdatesEnum.fromJson(json[r'send_updates']),
        conferenceType: mapValueOfType<String>(json, r'conference_type'),
      );
    }
    return null;
  }

  static List<CreateEventRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEventRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEventRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateEventRequest> mapFromJson(dynamic json) {
    final map = <String, CreateEventRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEventRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateEventRequest-objects as value to a dart map
  static Map<String, List<CreateEventRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateEventRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateEventRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account_id',
    'event',
  };
}

/// Notification policy passed through to the provider.
class CreateEventRequestSendUpdatesEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateEventRequestSendUpdatesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = CreateEventRequestSendUpdatesEnum._(r'all');
  static const externalOnly = CreateEventRequestSendUpdatesEnum._(r'externalOnly');
  static const none = CreateEventRequestSendUpdatesEnum._(r'none');

  /// List of all possible values in this [enum][CreateEventRequestSendUpdatesEnum].
  static const values = <CreateEventRequestSendUpdatesEnum>[
    all,
    externalOnly,
    none,
  ];

  static CreateEventRequestSendUpdatesEnum? fromJson(dynamic value) => CreateEventRequestSendUpdatesEnumTypeTransformer().decode(value);

  static List<CreateEventRequestSendUpdatesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEventRequestSendUpdatesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEventRequestSendUpdatesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateEventRequestSendUpdatesEnum] to String,
/// and [decode] dynamic data back to [CreateEventRequestSendUpdatesEnum].
class CreateEventRequestSendUpdatesEnumTypeTransformer {
  factory CreateEventRequestSendUpdatesEnumTypeTransformer() => _instance ??= const CreateEventRequestSendUpdatesEnumTypeTransformer._();

  const CreateEventRequestSendUpdatesEnumTypeTransformer._();

  String encode(CreateEventRequestSendUpdatesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateEventRequestSendUpdatesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateEventRequestSendUpdatesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'all': return CreateEventRequestSendUpdatesEnum.all;
        case r'externalOnly': return CreateEventRequestSendUpdatesEnum.externalOnly;
        case r'none': return CreateEventRequestSendUpdatesEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateEventRequestSendUpdatesEnumTypeTransformer] instance.
  static CreateEventRequestSendUpdatesEnumTypeTransformer? _instance;
}


