//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class TaskListEnvelope {
  /// Returns a new [TaskListEnvelope] instance.
  TaskListEnvelope({
    this.items = const [],
    this.accounts = const [],
  });

  List<Task> items;

  List<AccountStatus> accounts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TaskListEnvelope &&
    _deepEquality.equals(other.items, items) &&
    _deepEquality.equals(other.accounts, accounts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode) +
    (accounts.hashCode);

  @override
  String toString() => 'TaskListEnvelope[items=$items, accounts=$accounts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
      json[r'accounts'] = this.accounts;
    return json;
  }

  /// Returns a new [TaskListEnvelope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TaskListEnvelope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'items'), 'Required key "TaskListEnvelope[items]" is missing from JSON.');
        assert(json[r'items'] != null, 'Required key "TaskListEnvelope[items]" has a null value in JSON.');
        assert(json.containsKey(r'accounts'), 'Required key "TaskListEnvelope[accounts]" is missing from JSON.');
        assert(json[r'accounts'] != null, 'Required key "TaskListEnvelope[accounts]" has a null value in JSON.');
        return true;
      }());

      return TaskListEnvelope(
        items: Task.listFromJson(json[r'items']),
        accounts: AccountStatus.listFromJson(json[r'accounts']),
      );
    }
    return null;
  }

  static List<TaskListEnvelope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskListEnvelope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskListEnvelope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TaskListEnvelope> mapFromJson(dynamic json) {
    final map = <String, TaskListEnvelope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TaskListEnvelope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TaskListEnvelope-objects as value to a dart map
  static Map<String, List<TaskListEnvelope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TaskListEnvelope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TaskListEnvelope.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'items',
    'accounts',
  };
}

