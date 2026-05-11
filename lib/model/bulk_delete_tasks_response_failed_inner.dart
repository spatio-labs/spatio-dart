//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkDeleteTasksResponseFailedInner {
  /// Returns a new [BulkDeleteTasksResponseFailedInner] instance.
  BulkDeleteTasksResponseFailedInner({
    required this.taskId,
    required this.error,
  });

  String taskId;

  String error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkDeleteTasksResponseFailedInner &&
    other.taskId == taskId &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (taskId.hashCode) +
    (error.hashCode);

  @override
  String toString() => 'BulkDeleteTasksResponseFailedInner[taskId=$taskId, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'taskId'] = this.taskId;
      json[r'error'] = this.error;
    return json;
  }

  /// Returns a new [BulkDeleteTasksResponseFailedInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkDeleteTasksResponseFailedInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'taskId'), 'Required key "BulkDeleteTasksResponseFailedInner[taskId]" is missing from JSON.');
        assert(json[r'taskId'] != null, 'Required key "BulkDeleteTasksResponseFailedInner[taskId]" has a null value in JSON.');
        assert(json.containsKey(r'error'), 'Required key "BulkDeleteTasksResponseFailedInner[error]" is missing from JSON.');
        assert(json[r'error'] != null, 'Required key "BulkDeleteTasksResponseFailedInner[error]" has a null value in JSON.');
        return true;
      }());

      return BulkDeleteTasksResponseFailedInner(
        taskId: mapValueOfType<String>(json, r'taskId')!,
        error: mapValueOfType<String>(json, r'error')!,
      );
    }
    return null;
  }

  static List<BulkDeleteTasksResponseFailedInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkDeleteTasksResponseFailedInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkDeleteTasksResponseFailedInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkDeleteTasksResponseFailedInner> mapFromJson(dynamic json) {
    final map = <String, BulkDeleteTasksResponseFailedInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkDeleteTasksResponseFailedInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkDeleteTasksResponseFailedInner-objects as value to a dart map
  static Map<String, List<BulkDeleteTasksResponseFailedInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkDeleteTasksResponseFailedInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkDeleteTasksResponseFailedInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'taskId',
    'error',
  };
}

