//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateRoutineRequest {
  /// Returns a new [CreateRoutineRequest] instance.
  CreateRoutineRequest({
    this.workspaceId,
    required this.name,
    this.description,
    this.schedule = const {},
    this.metadata = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workspaceId;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  Map<String, Object> schedule;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateRoutineRequest &&
    other.workspaceId == workspaceId &&
    other.name == name &&
    other.description == description &&
    _deepEquality.equals(other.schedule, schedule) &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (schedule.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'CreateRoutineRequest[workspaceId=$workspaceId, name=$name, description=$description, schedule=$schedule, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'schedule'] = this.schedule;
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [CreateRoutineRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateRoutineRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "CreateRoutineRequest[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "CreateRoutineRequest[name]" has a null value in JSON.');
        return true;
      }());

      return CreateRoutineRequest(
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        schedule: mapCastOfType<String, Object>(json, r'schedule') ?? const {},
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<CreateRoutineRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRoutineRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRoutineRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateRoutineRequest> mapFromJson(dynamic json) {
    final map = <String, CreateRoutineRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRoutineRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateRoutineRequest-objects as value to a dart map
  static Map<String, List<CreateRoutineRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateRoutineRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateRoutineRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

