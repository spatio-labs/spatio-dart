//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SpatioEvent {
  /// Returns a new [SpatioEvent] instance.
  SpatioEvent({
    required this.id,
    required this.title,
    this.description,
    required this.startTime,
    required this.endTime,
    required this.allDay,
    this.location,
    this.locationDetails = const {},
    this.organizer,
    this.attendees = const [],
    this.recurrenceRule,
    this.recurrenceId,
    this.originalStart,
    required this.status,
    required this.visibility,
    required this.busy,
    this.reminders = const [],
    this.travelTimeMinutes,
    this.categories = const [],
    this.color,
    this.userId,
    required this.accountId,
    this.provider,
    required this.providerId,
    this.providerData = const {},
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    this.syncedAt,
    this.conferenceData,
    this.attachments = const [],
    this.url,
    this.etag,
    this.sequence,
    this.customData = const {},
  });

  String id;

  String title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  DateTime startTime;

  DateTime endTime;

  bool allDay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? location;

  /// Free-form key/value (lat, lng, room, etc.).
  Map<String, String> locationDetails;

  /// Organizer email.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organizer;

  List<Attendee> attendees;

  /// RFC 5545 RRULE.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recurrenceRule;

  /// Set on instances of a recurring series.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recurrenceId;

  /// Original start of a moved recurring instance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? originalStart;

  /// Provider-mapped event status. Free-form string — common values are `confirmed`, `tentative`, `cancelled`, `needs_action`, and the empty string when the provider doesn't populate it. Not enumerated strictly because providers add custom values and the platform passes them through verbatim. 
  String status;

  /// Free-form visibility string. Common values: `public`, `private`, `confidential`, plus empty when unset. 
  String visibility;

  /// Whether this event marks the time as busy or free.
  bool busy;

  List<Reminder> reminders;

  /// Apple Calendar's local-only travel buffer. Stored on the cached row but not synced to providers that don't model it. 
  int? travelTimeMinutes;

  List<String> categories;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  String accountId;

  /// Standardized provider id (e.g. `google-calendar`, `native-calendar`). Mirrors `provider_id` — both are populated on writes; clients should prefer `provider`. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Legacy alias of `provider`.
  String providerId;

  /// Provider-specific extras.
  Map<String, Object> providerData;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? deletedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? syncedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConferenceData? conferenceData;

  List<Attachment> attachments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? etag;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sequence;

  Map<String, String> customData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpatioEvent &&
    other.id == id &&
    other.title == title &&
    other.description == description &&
    other.startTime == startTime &&
    other.endTime == endTime &&
    other.allDay == allDay &&
    other.location == location &&
    _deepEquality.equals(other.locationDetails, locationDetails) &&
    other.organizer == organizer &&
    _deepEquality.equals(other.attendees, attendees) &&
    other.recurrenceRule == recurrenceRule &&
    other.recurrenceId == recurrenceId &&
    other.originalStart == originalStart &&
    other.status == status &&
    other.visibility == visibility &&
    other.busy == busy &&
    _deepEquality.equals(other.reminders, reminders) &&
    other.travelTimeMinutes == travelTimeMinutes &&
    _deepEquality.equals(other.categories, categories) &&
    other.color == color &&
    other.userId == userId &&
    other.accountId == accountId &&
    other.provider == provider &&
    other.providerId == providerId &&
    _deepEquality.equals(other.providerData, providerData) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.deletedAt == deletedAt &&
    other.syncedAt == syncedAt &&
    other.conferenceData == conferenceData &&
    _deepEquality.equals(other.attachments, attachments) &&
    other.url == url &&
    other.etag == etag &&
    other.sequence == sequence &&
    _deepEquality.equals(other.customData, customData);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (startTime.hashCode) +
    (endTime.hashCode) +
    (allDay.hashCode) +
    (location == null ? 0 : location!.hashCode) +
    (locationDetails.hashCode) +
    (organizer == null ? 0 : organizer!.hashCode) +
    (attendees.hashCode) +
    (recurrenceRule == null ? 0 : recurrenceRule!.hashCode) +
    (recurrenceId == null ? 0 : recurrenceId!.hashCode) +
    (originalStart == null ? 0 : originalStart!.hashCode) +
    (status.hashCode) +
    (visibility.hashCode) +
    (busy.hashCode) +
    (reminders.hashCode) +
    (travelTimeMinutes == null ? 0 : travelTimeMinutes!.hashCode) +
    (categories.hashCode) +
    (color == null ? 0 : color!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (accountId.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (providerId.hashCode) +
    (providerData.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (deletedAt == null ? 0 : deletedAt!.hashCode) +
    (syncedAt == null ? 0 : syncedAt!.hashCode) +
    (conferenceData == null ? 0 : conferenceData!.hashCode) +
    (attachments.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (etag == null ? 0 : etag!.hashCode) +
    (sequence == null ? 0 : sequence!.hashCode) +
    (customData.hashCode);

  @override
  String toString() => 'SpatioEvent[id=$id, title=$title, description=$description, startTime=$startTime, endTime=$endTime, allDay=$allDay, location=$location, locationDetails=$locationDetails, organizer=$organizer, attendees=$attendees, recurrenceRule=$recurrenceRule, recurrenceId=$recurrenceId, originalStart=$originalStart, status=$status, visibility=$visibility, busy=$busy, reminders=$reminders, travelTimeMinutes=$travelTimeMinutes, categories=$categories, color=$color, userId=$userId, accountId=$accountId, provider=$provider, providerId=$providerId, providerData=$providerData, createdAt=$createdAt, updatedAt=$updatedAt, deletedAt=$deletedAt, syncedAt=$syncedAt, conferenceData=$conferenceData, attachments=$attachments, url=$url, etag=$etag, sequence=$sequence, customData=$customData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'start_time'] = this.startTime.toUtc().toIso8601String();
      json[r'end_time'] = this.endTime.toUtc().toIso8601String();
      json[r'all_day'] = this.allDay;
    if (this.location != null) {
      json[r'location'] = this.location;
    } else {
      json[r'location'] = null;
    }
      json[r'location_details'] = this.locationDetails;
    if (this.organizer != null) {
      json[r'organizer'] = this.organizer;
    } else {
      json[r'organizer'] = null;
    }
      json[r'attendees'] = this.attendees;
    if (this.recurrenceRule != null) {
      json[r'recurrence_rule'] = this.recurrenceRule;
    } else {
      json[r'recurrence_rule'] = null;
    }
    if (this.recurrenceId != null) {
      json[r'recurrence_id'] = this.recurrenceId;
    } else {
      json[r'recurrence_id'] = null;
    }
    if (this.originalStart != null) {
      json[r'original_start'] = this.originalStart!.toUtc().toIso8601String();
    } else {
      json[r'original_start'] = null;
    }
      json[r'status'] = this.status;
      json[r'visibility'] = this.visibility;
      json[r'busy'] = this.busy;
      json[r'reminders'] = this.reminders;
    if (this.travelTimeMinutes != null) {
      json[r'travel_time_minutes'] = this.travelTimeMinutes;
    } else {
      json[r'travel_time_minutes'] = null;
    }
      json[r'categories'] = this.categories;
    if (this.color != null) {
      json[r'color'] = this.color;
    } else {
      json[r'color'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
      json[r'account_id'] = this.accountId;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
      json[r'provider_id'] = this.providerId;
      json[r'provider_data'] = this.providerData;
      json[r'created_at'] = this.createdAt.toUtc().toIso8601String();
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    if (this.deletedAt != null) {
      json[r'deleted_at'] = this.deletedAt!.toUtc().toIso8601String();
    } else {
      json[r'deleted_at'] = null;
    }
    if (this.syncedAt != null) {
      json[r'synced_at'] = this.syncedAt!.toUtc().toIso8601String();
    } else {
      json[r'synced_at'] = null;
    }
    if (this.conferenceData != null) {
      json[r'conference_data'] = this.conferenceData;
    } else {
      json[r'conference_data'] = null;
    }
      json[r'attachments'] = this.attachments;
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.etag != null) {
      json[r'etag'] = this.etag;
    } else {
      json[r'etag'] = null;
    }
    if (this.sequence != null) {
      json[r'sequence'] = this.sequence;
    } else {
      json[r'sequence'] = null;
    }
      json[r'custom_data'] = this.customData;
    return json;
  }

  /// Returns a new [SpatioEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpatioEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "SpatioEvent[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "SpatioEvent[id]" has a null value in JSON.');
        assert(json.containsKey(r'title'), 'Required key "SpatioEvent[title]" is missing from JSON.');
        assert(json[r'title'] != null, 'Required key "SpatioEvent[title]" has a null value in JSON.');
        assert(json.containsKey(r'start_time'), 'Required key "SpatioEvent[start_time]" is missing from JSON.');
        assert(json[r'start_time'] != null, 'Required key "SpatioEvent[start_time]" has a null value in JSON.');
        assert(json.containsKey(r'end_time'), 'Required key "SpatioEvent[end_time]" is missing from JSON.');
        assert(json[r'end_time'] != null, 'Required key "SpatioEvent[end_time]" has a null value in JSON.');
        assert(json.containsKey(r'all_day'), 'Required key "SpatioEvent[all_day]" is missing from JSON.');
        assert(json[r'all_day'] != null, 'Required key "SpatioEvent[all_day]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "SpatioEvent[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "SpatioEvent[status]" has a null value in JSON.');
        assert(json.containsKey(r'visibility'), 'Required key "SpatioEvent[visibility]" is missing from JSON.');
        assert(json[r'visibility'] != null, 'Required key "SpatioEvent[visibility]" has a null value in JSON.');
        assert(json.containsKey(r'busy'), 'Required key "SpatioEvent[busy]" is missing from JSON.');
        assert(json[r'busy'] != null, 'Required key "SpatioEvent[busy]" has a null value in JSON.');
        assert(json.containsKey(r'account_id'), 'Required key "SpatioEvent[account_id]" is missing from JSON.');
        assert(json[r'account_id'] != null, 'Required key "SpatioEvent[account_id]" has a null value in JSON.');
        assert(json.containsKey(r'provider_id'), 'Required key "SpatioEvent[provider_id]" is missing from JSON.');
        assert(json[r'provider_id'] != null, 'Required key "SpatioEvent[provider_id]" has a null value in JSON.');
        assert(json.containsKey(r'created_at'), 'Required key "SpatioEvent[created_at]" is missing from JSON.');
        assert(json[r'created_at'] != null, 'Required key "SpatioEvent[created_at]" has a null value in JSON.');
        assert(json.containsKey(r'updated_at'), 'Required key "SpatioEvent[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null, 'Required key "SpatioEvent[updated_at]" has a null value in JSON.');
        return true;
      }());

      return SpatioEvent(
        id: mapValueOfType<String>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        description: mapValueOfType<String>(json, r'description'),
        startTime: mapDateTime(json, r'start_time', r'')!,
        endTime: mapDateTime(json, r'end_time', r'')!,
        allDay: mapValueOfType<bool>(json, r'all_day')!,
        location: mapValueOfType<String>(json, r'location'),
        locationDetails: mapCastOfType<String, String>(json, r'location_details') ?? const {},
        organizer: mapValueOfType<String>(json, r'organizer'),
        attendees: Attendee.listFromJson(json[r'attendees']),
        recurrenceRule: mapValueOfType<String>(json, r'recurrence_rule'),
        recurrenceId: mapValueOfType<String>(json, r'recurrence_id'),
        originalStart: mapDateTime(json, r'original_start', r''),
        status: mapValueOfType<String>(json, r'status')!,
        visibility: mapValueOfType<String>(json, r'visibility')!,
        busy: mapValueOfType<bool>(json, r'busy')!,
        reminders: Reminder.listFromJson(json[r'reminders']),
        travelTimeMinutes: mapValueOfType<int>(json, r'travel_time_minutes'),
        categories: json[r'categories'] is Iterable
            ? (json[r'categories'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        color: mapValueOfType<String>(json, r'color'),
        userId: mapValueOfType<String>(json, r'user_id'),
        accountId: mapValueOfType<String>(json, r'account_id')!,
        provider: mapValueOfType<String>(json, r'provider'),
        providerId: mapValueOfType<String>(json, r'provider_id')!,
        providerData: mapCastOfType<String, Object>(json, r'provider_data') ?? const {},
        createdAt: mapDateTime(json, r'created_at', r'')!,
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
        deletedAt: mapDateTime(json, r'deleted_at', r''),
        syncedAt: mapDateTime(json, r'synced_at', r''),
        conferenceData: ConferenceData.fromJson(json[r'conference_data']),
        attachments: Attachment.listFromJson(json[r'attachments']),
        url: mapValueOfType<String>(json, r'url'),
        etag: mapValueOfType<String>(json, r'etag'),
        sequence: mapValueOfType<int>(json, r'sequence'),
        customData: mapCastOfType<String, String>(json, r'custom_data') ?? const {},
      );
    }
    return null;
  }

  static List<SpatioEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpatioEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpatioEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpatioEvent> mapFromJson(dynamic json) {
    final map = <String, SpatioEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpatioEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpatioEvent-objects as value to a dart map
  static Map<String, List<SpatioEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpatioEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpatioEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'start_time',
    'end_time',
    'all_day',
    'status',
    'visibility',
    'busy',
    'account_id',
    'provider_id',
    'created_at',
    'updated_at',
  };
}

