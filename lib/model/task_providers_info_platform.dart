//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class TaskProvidersInfoPlatform {
  /// Returns a new [TaskProvidersInfoPlatform] instance.
  TaskProvidersInfoPlatform({
    required this.name,
    required this.description,
  });

  String name;

  String description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskProvidersInfoPlatform &&
    other.name == name &&
    other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description.hashCode);

  @override
  String toString() => 'TaskProvidersInfoPlatform[name=$name, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'description'] = this.description;
    return json;
  }

  /// Returns a new [TaskProvidersInfoPlatform] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskProvidersInfoPlatform? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "TaskProvidersInfoPlatform[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "TaskProvidersInfoPlatform[name]" has a null value in JSON.');
        assert(json.containsKey(r'description'), 'Required key "TaskProvidersInfoPlatform[description]" is missing from JSON.');
        assert(json[r'description'] != null, 'Required key "TaskProvidersInfoPlatform[description]" has a null value in JSON.');
        return true;
      }());

      return TaskProvidersInfoPlatform(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description')!,
      );
    }
    return null;
  }

  static List<TaskProvidersInfoPlatform> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskProvidersInfoPlatform>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskProvidersInfoPlatform.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskProvidersInfoPlatform> mapFromJson(dynamic json) {
    final map = <String, TaskProvidersInfoPlatform>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskProvidersInfoPlatform.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskProvidersInfoPlatform-objects as value to a dart map
  static Map<String, List<TaskProvidersInfoPlatform>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskProvidersInfoPlatform>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskProvidersInfoPlatform.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'description',
  };
}

