//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class TaskProvidersInfo {
  /// Returns a new [TaskProvidersInfo] instance.
  TaskProvidersInfo({
    this.providers = const [],
    required this.platform,
  });

  /// Registered provider ids (e.g. `native-tasks`, `linear`).
  List<String> providers;

  TaskProvidersInfoPlatform platform;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskProvidersInfo &&
    _deepEquality.equals(other.providers, providers) &&
    other.platform == platform;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (providers.hashCode) +
    (platform.hashCode);

  @override
  String toString() => 'TaskProvidersInfo[providers=$providers, platform=$platform]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'providers'] = this.providers;
      json[r'platform'] = this.platform;
    return json;
  }

  /// Returns a new [TaskProvidersInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskProvidersInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'providers'), 'Required key "TaskProvidersInfo[providers]" is missing from JSON.');
        assert(json[r'providers'] != null, 'Required key "TaskProvidersInfo[providers]" has a null value in JSON.');
        assert(json.containsKey(r'platform'), 'Required key "TaskProvidersInfo[platform]" is missing from JSON.');
        assert(json[r'platform'] != null, 'Required key "TaskProvidersInfo[platform]" has a null value in JSON.');
        return true;
      }());

      return TaskProvidersInfo(
        providers: json[r'providers'] is Iterable
            ? (json[r'providers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        platform: TaskProvidersInfoPlatform.fromJson(json[r'platform'])!,
      );
    }
    return null;
  }

  static List<TaskProvidersInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskProvidersInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskProvidersInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskProvidersInfo> mapFromJson(dynamic json) {
    final map = <String, TaskProvidersInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskProvidersInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskProvidersInfo-objects as value to a dart map
  static Map<String, List<TaskProvidersInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskProvidersInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskProvidersInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'providers',
    'platform',
  };
}

