//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkFilesResponse {
  /// Returns a new [BulkFilesResponse] instance.
  BulkFilesResponse({
    required this.success,
    required this.affectedCount,
    this.fileIds = const [],
    this.failed = const [],
  });

  bool success;

  int affectedCount;

  List<String> fileIds;

  List<BulkFilesResponseFailedInner> failed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkFilesResponse &&
    other.success == success &&
    other.affectedCount == affectedCount &&
    _deepEquality.equals(other.fileIds, fileIds) &&
    _deepEquality.equals(other.failed, failed);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (affectedCount.hashCode) +
    (fileIds.hashCode) +
    (failed.hashCode);

  @override
  String toString() => 'BulkFilesResponse[success=$success, affectedCount=$affectedCount, fileIds=$fileIds, failed=$failed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'affectedCount'] = this.affectedCount;
      json[r'fileIds'] = this.fileIds;
      json[r'failed'] = this.failed;
    return json;
  }

  /// Returns a new [BulkFilesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkFilesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "BulkFilesResponse[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "BulkFilesResponse[success]" has a null value in JSON.');
        assert(json.containsKey(r'affectedCount'), 'Required key "BulkFilesResponse[affectedCount]" is missing from JSON.');
        assert(json[r'affectedCount'] != null, 'Required key "BulkFilesResponse[affectedCount]" has a null value in JSON.');
        assert(json.containsKey(r'fileIds'), 'Required key "BulkFilesResponse[fileIds]" is missing from JSON.');
        assert(json[r'fileIds'] != null, 'Required key "BulkFilesResponse[fileIds]" has a null value in JSON.');
        assert(json.containsKey(r'failed'), 'Required key "BulkFilesResponse[failed]" is missing from JSON.');
        assert(json[r'failed'] != null, 'Required key "BulkFilesResponse[failed]" has a null value in JSON.');
        return true;
      }());

      return BulkFilesResponse(
        success: mapValueOfType<bool>(json, r'success')!,
        affectedCount: mapValueOfType<int>(json, r'affectedCount')!,
        fileIds: json[r'fileIds'] is Iterable
            ? (json[r'fileIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        failed: BulkFilesResponseFailedInner.listFromJson(json[r'failed']),
      );
    }
    return null;
  }

  static List<BulkFilesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkFilesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkFilesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkFilesResponse> mapFromJson(dynamic json) {
    final map = <String, BulkFilesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkFilesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkFilesResponse-objects as value to a dart map
  static Map<String, List<BulkFilesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkFilesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkFilesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'affectedCount',
    'fileIds',
    'failed',
  };
}

