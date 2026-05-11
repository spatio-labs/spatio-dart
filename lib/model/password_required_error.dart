//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class PasswordRequiredError {
  /// Returns a new [PasswordRequiredError] instance.
  PasswordRequiredError({
    required this.error,
    this.code,
    required this.requiresPassword,
    this.invalidPassword,
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

  bool requiresPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? invalidPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasswordRequiredError &&
    other.error == error &&
    other.code == code &&
    other.requiresPassword == requiresPassword &&
    other.invalidPassword == invalidPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (requiresPassword.hashCode) +
    (invalidPassword == null ? 0 : invalidPassword!.hashCode);

  @override
  String toString() => 'PasswordRequiredError[error=$error, code=$code, requiresPassword=$requiresPassword, invalidPassword=$invalidPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'error'] = this.error;
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
      json[r'requiresPassword'] = this.requiresPassword;
    if (this.invalidPassword != null) {
      json[r'invalidPassword'] = this.invalidPassword;
    } else {
      json[r'invalidPassword'] = null;
    }
    return json;
  }

  /// Returns a new [PasswordRequiredError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasswordRequiredError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'error'), 'Required key "PasswordRequiredError[error]" is missing from JSON.');
        assert(json[r'error'] != null, 'Required key "PasswordRequiredError[error]" has a null value in JSON.');
        assert(json.containsKey(r'requiresPassword'), 'Required key "PasswordRequiredError[requiresPassword]" is missing from JSON.');
        assert(json[r'requiresPassword'] != null, 'Required key "PasswordRequiredError[requiresPassword]" has a null value in JSON.');
        return true;
      }());

      return PasswordRequiredError(
        error: mapValueOfType<String>(json, r'error')!,
        code: mapValueOfType<String>(json, r'code'),
        requiresPassword: mapValueOfType<bool>(json, r'requiresPassword')!,
        invalidPassword: mapValueOfType<bool>(json, r'invalidPassword'),
      );
    }
    return null;
  }

  static List<PasswordRequiredError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PasswordRequiredError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasswordRequiredError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PasswordRequiredError> mapFromJson(dynamic json) {
    final map = <String, PasswordRequiredError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PasswordRequiredError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PasswordRequiredError-objects as value to a dart map
  static Map<String, List<PasswordRequiredError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PasswordRequiredError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PasswordRequiredError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'error',
    'requiresPassword',
  };
}

