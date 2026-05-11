//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AccountUsage {
  /// Returns a new [AccountUsage] instance.
  AccountUsage({
    required this.date,
    this.apiCalls,
    this.emailSends,
    this.notesCount,
    this.sheetsCount,
    this.slidesCount,
    this.filesCount,
    this.tasksCount,
  });

  /// Always `today` for the current-day rollup.
  String date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? apiCalls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? emailSends;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? notesCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sheetsCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? slidesCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? filesCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tasksCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountUsage &&
    other.date == date &&
    other.apiCalls == apiCalls &&
    other.emailSends == emailSends &&
    other.notesCount == notesCount &&
    other.sheetsCount == sheetsCount &&
    other.slidesCount == slidesCount &&
    other.filesCount == filesCount &&
    other.tasksCount == tasksCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date.hashCode) +
    (apiCalls == null ? 0 : apiCalls!.hashCode) +
    (emailSends == null ? 0 : emailSends!.hashCode) +
    (notesCount == null ? 0 : notesCount!.hashCode) +
    (sheetsCount == null ? 0 : sheetsCount!.hashCode) +
    (slidesCount == null ? 0 : slidesCount!.hashCode) +
    (filesCount == null ? 0 : filesCount!.hashCode) +
    (tasksCount == null ? 0 : tasksCount!.hashCode);

  @override
  String toString() => 'AccountUsage[date=$date, apiCalls=$apiCalls, emailSends=$emailSends, notesCount=$notesCount, sheetsCount=$sheetsCount, slidesCount=$slidesCount, filesCount=$filesCount, tasksCount=$tasksCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'date'] = this.date;
    if (this.apiCalls != null) {
      json[r'api_calls'] = this.apiCalls;
    } else {
      json[r'api_calls'] = null;
    }
    if (this.emailSends != null) {
      json[r'email_sends'] = this.emailSends;
    } else {
      json[r'email_sends'] = null;
    }
    if (this.notesCount != null) {
      json[r'notes_count'] = this.notesCount;
    } else {
      json[r'notes_count'] = null;
    }
    if (this.sheetsCount != null) {
      json[r'sheets_count'] = this.sheetsCount;
    } else {
      json[r'sheets_count'] = null;
    }
    if (this.slidesCount != null) {
      json[r'slides_count'] = this.slidesCount;
    } else {
      json[r'slides_count'] = null;
    }
    if (this.filesCount != null) {
      json[r'files_count'] = this.filesCount;
    } else {
      json[r'files_count'] = null;
    }
    if (this.tasksCount != null) {
      json[r'tasks_count'] = this.tasksCount;
    } else {
      json[r'tasks_count'] = null;
    }
    return json;
  }

  /// Returns a new [AccountUsage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountUsage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'date'), 'Required key "AccountUsage[date]" is missing from JSON.');
        assert(json[r'date'] != null, 'Required key "AccountUsage[date]" has a null value in JSON.');
        return true;
      }());

      return AccountUsage(
        date: mapValueOfType<String>(json, r'date')!,
        apiCalls: mapValueOfType<int>(json, r'api_calls'),
        emailSends: mapValueOfType<int>(json, r'email_sends'),
        notesCount: mapValueOfType<int>(json, r'notes_count'),
        sheetsCount: mapValueOfType<int>(json, r'sheets_count'),
        slidesCount: mapValueOfType<int>(json, r'slides_count'),
        filesCount: mapValueOfType<int>(json, r'files_count'),
        tasksCount: mapValueOfType<int>(json, r'tasks_count'),
      );
    }
    return null;
  }

  static List<AccountUsage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountUsage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountUsage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountUsage> mapFromJson(dynamic json) {
    final map = <String, AccountUsage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountUsage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountUsage-objects as value to a dart map
  static Map<String, List<AccountUsage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountUsage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountUsage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
  };
}

