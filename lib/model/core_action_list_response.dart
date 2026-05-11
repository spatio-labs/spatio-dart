//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CoreActionListResponse {
  /// Returns a new [CoreActionListResponse] instance.
  CoreActionListResponse({
    this.actions = const [],
    this.total,
  });

  List<CoreAction>? actions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CoreActionListResponse &&
    _deepEquality.equals(other.actions, actions) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actions == null ? 0 : actions!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'CoreActionListResponse[actions=$actions, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actions != null) {
      json[r'actions'] = this.actions;
    } else {
      json[r'actions'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [CoreActionListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CoreActionListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'actions'), 'Required key "CoreActionListResponse[actions]" is missing from JSON.');
        return true;
      }());

      return CoreActionListResponse(
        actions: CoreAction.listFromJson(json[r'actions']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<CoreActionListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CoreActionListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CoreActionListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CoreActionListResponse> mapFromJson(dynamic json) {
    final map = <String, CoreActionListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CoreActionListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CoreActionListResponse-objects as value to a dart map
  static Map<String, List<CoreActionListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CoreActionListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CoreActionListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'actions',
  };
}

