//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CommitChunkedUploadResponse {
  /// Returns a new [CommitChunkedUploadResponse] instance.
  CommitChunkedUploadResponse({
    required this.success,
    required this.fileId,
    required this.manifestId,
    required this.version,
    required this.totalSize,
    this.physicalSize,
    this.deduplicationPct,
    this.totalBlocks,
    this.newBlocks,
    this.deduplicatedBlocks,
  });

  bool success;

  String fileId;

  String manifestId;

  int version;

  int totalSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? physicalSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? deduplicationPct;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalBlocks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? newBlocks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deduplicatedBlocks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommitChunkedUploadResponse &&
    other.success == success &&
    other.fileId == fileId &&
    other.manifestId == manifestId &&
    other.version == version &&
    other.totalSize == totalSize &&
    other.physicalSize == physicalSize &&
    other.deduplicationPct == deduplicationPct &&
    other.totalBlocks == totalBlocks &&
    other.newBlocks == newBlocks &&
    other.deduplicatedBlocks == deduplicatedBlocks;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (fileId.hashCode) +
    (manifestId.hashCode) +
    (version.hashCode) +
    (totalSize.hashCode) +
    (physicalSize == null ? 0 : physicalSize!.hashCode) +
    (deduplicationPct == null ? 0 : deduplicationPct!.hashCode) +
    (totalBlocks == null ? 0 : totalBlocks!.hashCode) +
    (newBlocks == null ? 0 : newBlocks!.hashCode) +
    (deduplicatedBlocks == null ? 0 : deduplicatedBlocks!.hashCode);

  @override
  String toString() => 'CommitChunkedUploadResponse[success=$success, fileId=$fileId, manifestId=$manifestId, version=$version, totalSize=$totalSize, physicalSize=$physicalSize, deduplicationPct=$deduplicationPct, totalBlocks=$totalBlocks, newBlocks=$newBlocks, deduplicatedBlocks=$deduplicatedBlocks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'fileId'] = this.fileId;
      json[r'manifestId'] = this.manifestId;
      json[r'version'] = this.version;
      json[r'totalSize'] = this.totalSize;
    if (this.physicalSize != null) {
      json[r'physicalSize'] = this.physicalSize;
    } else {
      json[r'physicalSize'] = null;
    }
    if (this.deduplicationPct != null) {
      json[r'deduplicationPct'] = this.deduplicationPct;
    } else {
      json[r'deduplicationPct'] = null;
    }
    if (this.totalBlocks != null) {
      json[r'totalBlocks'] = this.totalBlocks;
    } else {
      json[r'totalBlocks'] = null;
    }
    if (this.newBlocks != null) {
      json[r'newBlocks'] = this.newBlocks;
    } else {
      json[r'newBlocks'] = null;
    }
    if (this.deduplicatedBlocks != null) {
      json[r'deduplicatedBlocks'] = this.deduplicatedBlocks;
    } else {
      json[r'deduplicatedBlocks'] = null;
    }
    return json;
  }

  /// Returns a new [CommitChunkedUploadResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommitChunkedUploadResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "CommitChunkedUploadResponse[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "CommitChunkedUploadResponse[success]" has a null value in JSON.');
        assert(json.containsKey(r'fileId'), 'Required key "CommitChunkedUploadResponse[fileId]" is missing from JSON.');
        assert(json[r'fileId'] != null, 'Required key "CommitChunkedUploadResponse[fileId]" has a null value in JSON.');
        assert(json.containsKey(r'manifestId'), 'Required key "CommitChunkedUploadResponse[manifestId]" is missing from JSON.');
        assert(json[r'manifestId'] != null, 'Required key "CommitChunkedUploadResponse[manifestId]" has a null value in JSON.');
        assert(json.containsKey(r'version'), 'Required key "CommitChunkedUploadResponse[version]" is missing from JSON.');
        assert(json[r'version'] != null, 'Required key "CommitChunkedUploadResponse[version]" has a null value in JSON.');
        assert(json.containsKey(r'totalSize'), 'Required key "CommitChunkedUploadResponse[totalSize]" is missing from JSON.');
        assert(json[r'totalSize'] != null, 'Required key "CommitChunkedUploadResponse[totalSize]" has a null value in JSON.');
        return true;
      }());

      return CommitChunkedUploadResponse(
        success: mapValueOfType<bool>(json, r'success')!,
        fileId: mapValueOfType<String>(json, r'fileId')!,
        manifestId: mapValueOfType<String>(json, r'manifestId')!,
        version: mapValueOfType<int>(json, r'version')!,
        totalSize: mapValueOfType<int>(json, r'totalSize')!,
        physicalSize: mapValueOfType<int>(json, r'physicalSize'),
        deduplicationPct: mapValueOfType<double>(json, r'deduplicationPct'),
        totalBlocks: mapValueOfType<int>(json, r'totalBlocks'),
        newBlocks: mapValueOfType<int>(json, r'newBlocks'),
        deduplicatedBlocks: mapValueOfType<int>(json, r'deduplicatedBlocks'),
      );
    }
    return null;
  }

  static List<CommitChunkedUploadResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CommitChunkedUploadResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CommitChunkedUploadResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CommitChunkedUploadResponse> mapFromJson(dynamic json) {
    final map = <String, CommitChunkedUploadResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CommitChunkedUploadResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CommitChunkedUploadResponse-objects as value to a dart map
  static Map<String, List<CommitChunkedUploadResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CommitChunkedUploadResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CommitChunkedUploadResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'fileId',
    'manifestId',
    'version',
    'totalSize',
  };
}

