//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CalendarSyncResponse {
  /// Returns a new [CalendarSyncResponse] instance.
  CalendarSyncResponse({
    required this.enqueued,
    this.jobs = const [],
    this.waited,
    this.timedOut,
    this.errors = const [],
  });

  int enqueued;

  List<String> jobs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? waited;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? timedOut;

  List<Map<String, Object>> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarSyncResponse &&
    other.enqueued == enqueued &&
    _deepEquality.equals(other.jobs, jobs) &&
    other.waited == waited &&
    other.timedOut == timedOut &&
    _deepEquality.equals(other.errors, errors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enqueued.hashCode) +
    (jobs.hashCode) +
    (waited == null ? 0 : waited!.hashCode) +
    (timedOut == null ? 0 : timedOut!.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'CalendarSyncResponse[enqueued=$enqueued, jobs=$jobs, waited=$waited, timedOut=$timedOut, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enqueued'] = this.enqueued;
      json[r'jobs'] = this.jobs;
    if (this.waited != null) {
      json[r'waited'] = this.waited;
    } else {
      json[r'waited'] = null;
    }
    if (this.timedOut != null) {
      json[r'timed_out'] = this.timedOut;
    } else {
      json[r'timed_out'] = null;
    }
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [CalendarSyncResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarSyncResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'enqueued'), 'Required key "CalendarSyncResponse[enqueued]" is missing from JSON.');
        assert(json[r'enqueued'] != null, 'Required key "CalendarSyncResponse[enqueued]" has a null value in JSON.');
        assert(json.containsKey(r'jobs'), 'Required key "CalendarSyncResponse[jobs]" is missing from JSON.');
        assert(json[r'jobs'] != null, 'Required key "CalendarSyncResponse[jobs]" has a null value in JSON.');
        return true;
      }());

      return CalendarSyncResponse(
        enqueued: mapValueOfType<int>(json, r'enqueued')!,
        jobs: json[r'jobs'] is Iterable
            ? (json[r'jobs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        waited: mapValueOfType<bool>(json, r'waited'),
        timedOut: mapValueOfType<bool>(json, r'timed_out'),
        errors: Map.listFromJson(json[r'errors']),
      );
    }
    return null;
  }

  static List<CalendarSyncResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarSyncResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarSyncResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalendarSyncResponse> mapFromJson(dynamic json) {
    final map = <String, CalendarSyncResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarSyncResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalendarSyncResponse-objects as value to a dart map
  static Map<String, List<CalendarSyncResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalendarSyncResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CalendarSyncResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enqueued',
    'jobs',
  };
}

