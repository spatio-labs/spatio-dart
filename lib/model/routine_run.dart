//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class RoutineRun {
  /// Returns a new [RoutineRun] instance.
  RoutineRun({
    required this.id,
    this.routineId,
    this.status,
    this.progress,
    this.metadata = const {},
    this.startedAt,
    this.completedAt,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? routineId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? progress;

  Map<String, Object> metadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startedAt;

  DateTime? completedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoutineRun &&
    other.id == id &&
    other.routineId == routineId &&
    other.status == status &&
    other.progress == progress &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.startedAt == startedAt &&
    other.completedAt == completedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (routineId == null ? 0 : routineId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (progress == null ? 0 : progress!.hashCode) +
    (metadata.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode);

  @override
  String toString() => 'RoutineRun[id=$id, routineId=$routineId, status=$status, progress=$progress, metadata=$metadata, startedAt=$startedAt, completedAt=$completedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.routineId != null) {
      json[r'routineId'] = this.routineId;
    } else {
      json[r'routineId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.progress != null) {
      json[r'progress'] = this.progress;
    } else {
      json[r'progress'] = null;
    }
      json[r'metadata'] = this.metadata;
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'startedAt'] = null;
    }
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
    return json;
  }

  /// Returns a new [RoutineRun] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoutineRun? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "RoutineRun[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "RoutineRun[id]" has a null value in JSON.');
        return true;
      }());

      return RoutineRun(
        id: mapValueOfType<String>(json, r'id')!,
        routineId: mapValueOfType<String>(json, r'routineId'),
        status: mapValueOfType<String>(json, r'status'),
        progress: mapValueOfType<int>(json, r'progress'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        startedAt: mapDateTime(json, r'startedAt', r''),
        completedAt: mapDateTime(json, r'completedAt', r''),
      );
    }
    return null;
  }

  static List<RoutineRun> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoutineRun>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoutineRun.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoutineRun> mapFromJson(dynamic json) {
    final map = <String, RoutineRun>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoutineRun.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoutineRun-objects as value to a dart map
  static Map<String, List<RoutineRun>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoutineRun>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RoutineRun.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

