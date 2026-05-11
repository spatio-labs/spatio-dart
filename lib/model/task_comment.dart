//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class TaskComment {
  /// Returns a new [TaskComment] instance.
  TaskComment({
    required this.id,
    required this.taskId,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
    required this.author,
  });

  String id;

  String taskId;

  String content;

  DateTime createdAt;

  DateTime updatedAt;

  TaskCommentAuthor author;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskComment &&
    other.id == id &&
    other.taskId == taskId &&
    other.content == content &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.author == author;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (taskId.hashCode) +
    (content.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (author.hashCode);

  @override
  String toString() => 'TaskComment[id=$id, taskId=$taskId, content=$content, createdAt=$createdAt, updatedAt=$updatedAt, author=$author]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'taskId'] = this.taskId;
      json[r'content'] = this.content;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'author'] = this.author;
    return json;
  }

  /// Returns a new [TaskComment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskComment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "TaskComment[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "TaskComment[id]" has a null value in JSON.');
        assert(json.containsKey(r'taskId'), 'Required key "TaskComment[taskId]" is missing from JSON.');
        assert(json[r'taskId'] != null, 'Required key "TaskComment[taskId]" has a null value in JSON.');
        assert(json.containsKey(r'content'), 'Required key "TaskComment[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "TaskComment[content]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "TaskComment[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "TaskComment[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "TaskComment[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "TaskComment[updatedAt]" has a null value in JSON.');
        assert(json.containsKey(r'author'), 'Required key "TaskComment[author]" is missing from JSON.');
        assert(json[r'author'] != null, 'Required key "TaskComment[author]" has a null value in JSON.');
        return true;
      }());

      return TaskComment(
        id: mapValueOfType<String>(json, r'id')!,
        taskId: mapValueOfType<String>(json, r'taskId')!,
        content: mapValueOfType<String>(json, r'content')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
        author: TaskCommentAuthor.fromJson(json[r'author'])!,
      );
    }
    return null;
  }

  static List<TaskComment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskComment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskComment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskComment> mapFromJson(dynamic json) {
    final map = <String, TaskComment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskComment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskComment-objects as value to a dart map
  static Map<String, List<TaskComment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskComment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskComment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'taskId',
    'content',
    'createdAt',
    'updatedAt',
    'author',
  };
}

