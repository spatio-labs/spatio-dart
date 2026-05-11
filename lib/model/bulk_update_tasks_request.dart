//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkUpdateTasksRequest {
  /// Returns a new [BulkUpdateTasksRequest] instance.
  BulkUpdateTasksRequest({
    this.taskIds = const [],
    this.accountIds = const [],
    this.accountId,
    required this.updates,
  });

  List<String> taskIds;

  List<String> accountIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  UpdateTaskRequest updates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkUpdateTasksRequest &&
    _deepEquality.equals(other.taskIds, taskIds) &&
    _deepEquality.equals(other.accountIds, accountIds) &&
    other.accountId == accountId &&
    other.updates == updates;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (taskIds.hashCode) +
    (accountIds.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (updates.hashCode);

  @override
  String toString() => 'BulkUpdateTasksRequest[taskIds=$taskIds, accountIds=$accountIds, accountId=$accountId, updates=$updates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'taskIds'] = this.taskIds;
      json[r'accountIds'] = this.accountIds;
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
      json[r'updates'] = this.updates;
    return json;
  }

  /// Returns a new [BulkUpdateTasksRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkUpdateTasksRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'taskIds'), 'Required key "BulkUpdateTasksRequest[taskIds]" is missing from JSON.');
        assert(json[r'taskIds'] != null, 'Required key "BulkUpdateTasksRequest[taskIds]" has a null value in JSON.');
        assert(json.containsKey(r'updates'), 'Required key "BulkUpdateTasksRequest[updates]" is missing from JSON.');
        assert(json[r'updates'] != null, 'Required key "BulkUpdateTasksRequest[updates]" has a null value in JSON.');
        return true;
      }());

      return BulkUpdateTasksRequest(
        taskIds: json[r'taskIds'] is Iterable
            ? (json[r'taskIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        accountIds: json[r'accountIds'] is Iterable
            ? (json[r'accountIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        accountId: mapValueOfType<String>(json, r'accountId'),
        updates: UpdateTaskRequest.fromJson(json[r'updates'])!,
      );
    }
    return null;
  }

  static List<BulkUpdateTasksRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkUpdateTasksRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkUpdateTasksRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkUpdateTasksRequest> mapFromJson(dynamic json) {
    final map = <String, BulkUpdateTasksRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkUpdateTasksRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkUpdateTasksRequest-objects as value to a dart map
  static Map<String, List<BulkUpdateTasksRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkUpdateTasksRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkUpdateTasksRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'taskIds',
    'updates',
  };
}

