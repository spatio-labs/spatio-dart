//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ValidateKeyBindingResponse {
  /// Returns a new [ValidateKeyBindingResponse] instance.
  ValidateKeyBindingResponse({
    required this.valid,
    this.conflicts = const [],
  });

  bool valid;

  List<Map<String, Object>> conflicts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateKeyBindingResponse &&
    other.valid == valid &&
    _deepEquality.equals(other.conflicts, conflicts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (valid.hashCode) +
    (conflicts.hashCode);

  @override
  String toString() => 'ValidateKeyBindingResponse[valid=$valid, conflicts=$conflicts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'valid'] = this.valid;
      json[r'conflicts'] = this.conflicts;
    return json;
  }

  /// Returns a new [ValidateKeyBindingResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateKeyBindingResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'valid'), 'Required key "ValidateKeyBindingResponse[valid]" is missing from JSON.');
        assert(json[r'valid'] != null, 'Required key "ValidateKeyBindingResponse[valid]" has a null value in JSON.');
        return true;
      }());

      return ValidateKeyBindingResponse(
        valid: mapValueOfType<bool>(json, r'valid')!,
        conflicts: Map.listFromJson(json[r'conflicts']),
      );
    }
    return null;
  }

  static List<ValidateKeyBindingResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateKeyBindingResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateKeyBindingResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateKeyBindingResponse> mapFromJson(dynamic json) {
    final map = <String, ValidateKeyBindingResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateKeyBindingResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateKeyBindingResponse-objects as value to a dart map
  static Map<String, List<ValidateKeyBindingResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateKeyBindingResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateKeyBindingResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'valid',
  };
}

