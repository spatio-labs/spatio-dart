//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class FederatedSearch200ResponsePerPlatformValue {
  /// Returns a new [FederatedSearch200ResponsePerPlatformValue] instance.
  FederatedSearch200ResponsePerPlatformValue({
    this.returned,
    this.total,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? returned;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FederatedSearch200ResponsePerPlatformValue &&
    other.returned == returned &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (returned == null ? 0 : returned!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'FederatedSearch200ResponsePerPlatformValue[returned=$returned, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.returned != null) {
      json[r'returned'] = this.returned;
    } else {
      json[r'returned'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [FederatedSearch200ResponsePerPlatformValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FederatedSearch200ResponsePerPlatformValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return FederatedSearch200ResponsePerPlatformValue(
        returned: mapValueOfType<int>(json, r'returned'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<FederatedSearch200ResponsePerPlatformValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FederatedSearch200ResponsePerPlatformValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FederatedSearch200ResponsePerPlatformValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FederatedSearch200ResponsePerPlatformValue> mapFromJson(dynamic json) {
    final map = <String, FederatedSearch200ResponsePerPlatformValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FederatedSearch200ResponsePerPlatformValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FederatedSearch200ResponsePerPlatformValue-objects as value to a dart map
  static Map<String, List<FederatedSearch200ResponsePerPlatformValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FederatedSearch200ResponsePerPlatformValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FederatedSearch200ResponsePerPlatformValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

