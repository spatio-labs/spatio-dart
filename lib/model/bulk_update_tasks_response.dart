//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkUpdateTasksResponse {
  /// Returns a new [BulkUpdateTasksResponse] instance.
  BulkUpdateTasksResponse({
    required this.success,
    required this.affectedCount,
    this.tasks = const [],
    this.failed = const [],
  });

  bool success;

  int affectedCount;

  List<Task> tasks;

  List<BulkDeleteTasksResponseFailedInner> failed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkUpdateTasksResponse &&
    other.success == success &&
    other.affectedCount == affectedCount &&
    _deepEquality.equals(other.tasks, tasks) &&
    _deepEquality.equals(other.failed, failed);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (affectedCount.hashCode) +
    (tasks.hashCode) +
    (failed.hashCode);

  @override
  String toString() => 'BulkUpdateTasksResponse[success=$success, affectedCount=$affectedCount, tasks=$tasks, failed=$failed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'affectedCount'] = this.affectedCount;
      json[r'tasks'] = this.tasks;
      json[r'failed'] = this.failed;
    return json;
  }

  /// Returns a new [BulkUpdateTasksResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkUpdateTasksResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "BulkUpdateTasksResponse[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "BulkUpdateTasksResponse[success]" has a null value in JSON.');
        assert(json.containsKey(r'affectedCount'), 'Required key "BulkUpdateTasksResponse[affectedCount]" is missing from JSON.');
        assert(json[r'affectedCount'] != null, 'Required key "BulkUpdateTasksResponse[affectedCount]" has a null value in JSON.');
        assert(json.containsKey(r'tasks'), 'Required key "BulkUpdateTasksResponse[tasks]" is missing from JSON.');
        assert(json[r'tasks'] != null, 'Required key "BulkUpdateTasksResponse[tasks]" has a null value in JSON.');
        assert(json.containsKey(r'failed'), 'Required key "BulkUpdateTasksResponse[failed]" is missing from JSON.');
        assert(json[r'failed'] != null, 'Required key "BulkUpdateTasksResponse[failed]" has a null value in JSON.');
        return true;
      }());

      return BulkUpdateTasksResponse(
        success: mapValueOfType<bool>(json, r'success')!,
        affectedCount: mapValueOfType<int>(json, r'affectedCount')!,
        tasks: Task.listFromJson(json[r'tasks']),
        failed: BulkDeleteTasksResponseFailedInner.listFromJson(json[r'failed']),
      );
    }
    return null;
  }

  static List<BulkUpdateTasksResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkUpdateTasksResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkUpdateTasksResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkUpdateTasksResponse> mapFromJson(dynamic json) {
    final map = <String, BulkUpdateTasksResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkUpdateTasksResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkUpdateTasksResponse-objects as value to a dart map
  static Map<String, List<BulkUpdateTasksResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkUpdateTasksResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkUpdateTasksResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'affectedCount',
    'tasks',
    'failed',
  };
}

