//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class TaskCommentRequest {
  /// Returns a new [TaskCommentRequest] instance.
  TaskCommentRequest({
    required this.content,
  });

  String content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskCommentRequest &&
    other.content == content;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode);

  @override
  String toString() => 'TaskCommentRequest[content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
    return json;
  }

  /// Returns a new [TaskCommentRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskCommentRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'content'), 'Required key "TaskCommentRequest[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "TaskCommentRequest[content]" has a null value in JSON.');
        return true;
      }());

      return TaskCommentRequest(
        content: mapValueOfType<String>(json, r'content')!,
      );
    }
    return null;
  }

  static List<TaskCommentRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskCommentRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskCommentRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskCommentRequest> mapFromJson(dynamic json) {
    final map = <String, TaskCommentRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskCommentRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskCommentRequest-objects as value to a dart map
  static Map<String, List<TaskCommentRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskCommentRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskCommentRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'content',
  };
}

