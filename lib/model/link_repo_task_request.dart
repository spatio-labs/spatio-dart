//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class LinkRepoTaskRequest {
  /// Returns a new [LinkRepoTaskRequest] instance.
  LinkRepoTaskRequest({
    required this.taskId,
  });

  String taskId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LinkRepoTaskRequest &&
    other.taskId == taskId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (taskId.hashCode);

  @override
  String toString() => 'LinkRepoTaskRequest[taskId=$taskId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'task_id'] = this.taskId;
    return json;
  }

  /// Returns a new [LinkRepoTaskRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LinkRepoTaskRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'task_id'), 'Required key "LinkRepoTaskRequest[task_id]" is missing from JSON.');
        assert(json[r'task_id'] != null, 'Required key "LinkRepoTaskRequest[task_id]" has a null value in JSON.');
        return true;
      }());

      return LinkRepoTaskRequest(
        taskId: mapValueOfType<String>(json, r'task_id')!,
      );
    }
    return null;
  }

  static List<LinkRepoTaskRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LinkRepoTaskRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinkRepoTaskRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LinkRepoTaskRequest> mapFromJson(dynamic json) {
    final map = <String, LinkRepoTaskRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LinkRepoTaskRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LinkRepoTaskRequest-objects as value to a dart map
  static Map<String, List<LinkRepoTaskRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LinkRepoTaskRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LinkRepoTaskRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'task_id',
  };
}

