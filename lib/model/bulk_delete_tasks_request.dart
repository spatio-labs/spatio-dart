//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkDeleteTasksRequest {
  /// Returns a new [BulkDeleteTasksRequest] instance.
  BulkDeleteTasksRequest({
    this.taskIds = const [],
    this.accountIds = const [],
    this.taskId,
    this.accountId,
  });

  List<String> taskIds;

  /// Parallel slice with taskIds — accountIds[i] targets taskIds[i].
  List<String> accountIds;

  /// Singular fallback when only deleting one task.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? taskId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkDeleteTasksRequest &&
    _deepEquality.equals(other.taskIds, taskIds) &&
    _deepEquality.equals(other.accountIds, accountIds) &&
    other.taskId == taskId &&
    other.accountId == accountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (taskIds.hashCode) +
    (accountIds.hashCode) +
    (taskId == null ? 0 : taskId!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode);

  @override
  String toString() => 'BulkDeleteTasksRequest[taskIds=$taskIds, accountIds=$accountIds, taskId=$taskId, accountId=$accountId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'taskIds'] = this.taskIds;
      json[r'accountIds'] = this.accountIds;
    if (this.taskId != null) {
      json[r'taskId'] = this.taskId;
    } else {
      json[r'taskId'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    return json;
  }

  /// Returns a new [BulkDeleteTasksRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkDeleteTasksRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BulkDeleteTasksRequest(
        taskIds: json[r'taskIds'] is Iterable
            ? (json[r'taskIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        accountIds: json[r'accountIds'] is Iterable
            ? (json[r'accountIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        taskId: mapValueOfType<String>(json, r'taskId'),
        accountId: mapValueOfType<String>(json, r'accountId'),
      );
    }
    return null;
  }

  static List<BulkDeleteTasksRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkDeleteTasksRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkDeleteTasksRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkDeleteTasksRequest> mapFromJson(dynamic json) {
    final map = <String, BulkDeleteTasksRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkDeleteTasksRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkDeleteTasksRequest-objects as value to a dart map
  static Map<String, List<BulkDeleteTasksRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkDeleteTasksRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkDeleteTasksRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

