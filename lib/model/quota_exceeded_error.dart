//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class QuotaExceededError {
  /// Returns a new [QuotaExceededError] instance.
  QuotaExceededError({
    required this.error,
    this.code,
  });

  /// Human-readable error message.
  String error;

  /// Machine-readable error code. Stable across releases for the canonical codes (`ambiguous_account`, `no_notes_provider`, `note_not_found`). Absent for generic errors. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuotaExceededError &&
    other.error == error &&
    other.code == code;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error.hashCode) +
    (code == null ? 0 : code!.hashCode);

  @override
  String toString() => 'QuotaExceededError[error=$error, code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'error'] = this.error;
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    return json;
  }

  /// Returns a new [QuotaExceededError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuotaExceededError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'error'), 'Required key "QuotaExceededError[error]" is missing from JSON.');
        assert(json[r'error'] != null, 'Required key "QuotaExceededError[error]" has a null value in JSON.');
        return true;
      }());

      return QuotaExceededError(
        error: mapValueOfType<String>(json, r'error')!,
        code: mapValueOfType<String>(json, r'code'),
      );
    }
    return null;
  }

  static List<QuotaExceededError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuotaExceededError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuotaExceededError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuotaExceededError> mapFromJson(dynamic json) {
    final map = <String, QuotaExceededError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuotaExceededError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuotaExceededError-objects as value to a dart map
  static Map<String, List<QuotaExceededError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuotaExceededError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuotaExceededError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'error',
  };
}

