//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AmbiguousAccountError {
  /// Returns a new [AmbiguousAccountError] instance.
  AmbiguousAccountError({
    required this.error,
    this.code,
    this.accounts = const [],
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

  List<AccountChoice> accounts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AmbiguousAccountError &&
    other.error == error &&
    other.code == code &&
    _deepEquality.equals(other.accounts, accounts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (accounts.hashCode);

  @override
  String toString() => 'AmbiguousAccountError[error=$error, code=$code, accounts=$accounts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'error'] = this.error;
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
      json[r'accounts'] = this.accounts;
    return json;
  }

  /// Returns a new [AmbiguousAccountError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AmbiguousAccountError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'error'), 'Required key "AmbiguousAccountError[error]" is missing from JSON.');
        assert(json[r'error'] != null, 'Required key "AmbiguousAccountError[error]" has a null value in JSON.');
        return true;
      }());

      return AmbiguousAccountError(
        error: mapValueOfType<String>(json, r'error')!,
        code: mapValueOfType<String>(json, r'code'),
        accounts: AccountChoice.listFromJson(json[r'accounts']),
      );
    }
    return null;
  }

  static List<AmbiguousAccountError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AmbiguousAccountError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AmbiguousAccountError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AmbiguousAccountError> mapFromJson(dynamic json) {
    final map = <String, AmbiguousAccountError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AmbiguousAccountError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AmbiguousAccountError-objects as value to a dart map
  static Map<String, List<AmbiguousAccountError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AmbiguousAccountError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AmbiguousAccountError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'error',
  };
}

