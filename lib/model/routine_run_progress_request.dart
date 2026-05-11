//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class RoutineRunProgressRequest {
  /// Returns a new [RoutineRunProgressRequest] instance.
  RoutineRunProgressRequest({
    this.progress,
    this.metadata = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? progress;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoutineRunProgressRequest &&
    other.progress == progress &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (progress == null ? 0 : progress!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'RoutineRunProgressRequest[progress=$progress, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.progress != null) {
      json[r'progress'] = this.progress;
    } else {
      json[r'progress'] = null;
    }
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [RoutineRunProgressRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoutineRunProgressRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return RoutineRunProgressRequest(
        progress: mapValueOfType<int>(json, r'progress'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<RoutineRunProgressRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoutineRunProgressRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoutineRunProgressRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoutineRunProgressRequest> mapFromJson(dynamic json) {
    final map = <String, RoutineRunProgressRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoutineRunProgressRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoutineRunProgressRequest-objects as value to a dart map
  static Map<String, List<RoutineRunProgressRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoutineRunProgressRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RoutineRunProgressRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

