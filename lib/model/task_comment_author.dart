//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class TaskCommentAuthor {
  /// Returns a new [TaskCommentAuthor] instance.
  TaskCommentAuthor({
    required this.id,
    required this.name,
    required this.email,
    this.profilePhoto,
  });

  String id;

  String name;

  String email;

  String? profilePhoto;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskCommentAuthor &&
    other.id == id &&
    other.name == name &&
    other.email == email &&
    other.profilePhoto == profilePhoto;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (email.hashCode) +
    (profilePhoto == null ? 0 : profilePhoto!.hashCode);

  @override
  String toString() => 'TaskCommentAuthor[id=$id, name=$name, email=$email, profilePhoto=$profilePhoto]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'email'] = this.email;
    if (this.profilePhoto != null) {
      json[r'profilePhoto'] = this.profilePhoto;
    } else {
      json[r'profilePhoto'] = null;
    }
    return json;
  }

  /// Returns a new [TaskCommentAuthor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskCommentAuthor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "TaskCommentAuthor[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "TaskCommentAuthor[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "TaskCommentAuthor[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "TaskCommentAuthor[name]" has a null value in JSON.');
        assert(json.containsKey(r'email'), 'Required key "TaskCommentAuthor[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "TaskCommentAuthor[email]" has a null value in JSON.');
        return true;
      }());

      return TaskCommentAuthor(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        profilePhoto: mapValueOfType<String>(json, r'profilePhoto'),
      );
    }
    return null;
  }

  static List<TaskCommentAuthor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskCommentAuthor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskCommentAuthor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskCommentAuthor> mapFromJson(dynamic json) {
    final map = <String, TaskCommentAuthor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskCommentAuthor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskCommentAuthor-objects as value to a dart map
  static Map<String, List<TaskCommentAuthor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskCommentAuthor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskCommentAuthor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'email',
  };
}

