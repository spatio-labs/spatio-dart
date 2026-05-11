//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkMoveFilesRequest {
  /// Returns a new [BulkMoveFilesRequest] instance.
  BulkMoveFilesRequest({
    this.fileIds = const [],
    this.accountIds = const [],
    this.accountId,
    this.targetFolderId,
    this.folderId,
  });

  List<String> fileIds;

  List<String> accountIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  String? targetFolderId;

  /// Alias for `targetFolderId`.
  String? folderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkMoveFilesRequest &&
    _deepEquality.equals(other.fileIds, fileIds) &&
    _deepEquality.equals(other.accountIds, accountIds) &&
    other.accountId == accountId &&
    other.targetFolderId == targetFolderId &&
    other.folderId == folderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fileIds.hashCode) +
    (accountIds.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (targetFolderId == null ? 0 : targetFolderId!.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode);

  @override
  String toString() => 'BulkMoveFilesRequest[fileIds=$fileIds, accountIds=$accountIds, accountId=$accountId, targetFolderId=$targetFolderId, folderId=$folderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fileIds'] = this.fileIds;
      json[r'accountIds'] = this.accountIds;
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.targetFolderId != null) {
      json[r'targetFolderId'] = this.targetFolderId;
    } else {
      json[r'targetFolderId'] = null;
    }
    if (this.folderId != null) {
      json[r'folderId'] = this.folderId;
    } else {
      json[r'folderId'] = null;
    }
    return json;
  }

  /// Returns a new [BulkMoveFilesRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkMoveFilesRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BulkMoveFilesRequest(
        fileIds: json[r'fileIds'] is Iterable
            ? (json[r'fileIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        accountIds: json[r'accountIds'] is Iterable
            ? (json[r'accountIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        accountId: mapValueOfType<String>(json, r'accountId'),
        targetFolderId: mapValueOfType<String>(json, r'targetFolderId'),
        folderId: mapValueOfType<String>(json, r'folderId'),
      );
    }
    return null;
  }

  static List<BulkMoveFilesRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkMoveFilesRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkMoveFilesRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkMoveFilesRequest> mapFromJson(dynamic json) {
    final map = <String, BulkMoveFilesRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkMoveFilesRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkMoveFilesRequest-objects as value to a dart map
  static Map<String, List<BulkMoveFilesRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkMoveFilesRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkMoveFilesRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

