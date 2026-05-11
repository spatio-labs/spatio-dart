//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class TaskCommentList {
  /// Returns a new [TaskCommentList] instance.
  TaskCommentList({
    this.comments = const [],
    required this.total,
  });

  List<TaskComment> comments;

  int total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskCommentList &&
    _deepEquality.equals(other.comments, comments) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (comments.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'TaskCommentList[comments=$comments, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'comments'] = this.comments;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [TaskCommentList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskCommentList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'comments'), 'Required key "TaskCommentList[comments]" is missing from JSON.');
        assert(json[r'comments'] != null, 'Required key "TaskCommentList[comments]" has a null value in JSON.');
        assert(json.containsKey(r'total'), 'Required key "TaskCommentList[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "TaskCommentList[total]" has a null value in JSON.');
        return true;
      }());

      return TaskCommentList(
        comments: TaskComment.listFromJson(json[r'comments']),
        total: mapValueOfType<int>(json, r'total')!,
      );
    }
    return null;
  }

  static List<TaskCommentList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskCommentList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskCommentList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskCommentList> mapFromJson(dynamic json) {
    final map = <String, TaskCommentList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskCommentList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskCommentList-objects as value to a dart map
  static Map<String, List<TaskCommentList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskCommentList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskCommentList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'comments',
    'total',
  };
}

