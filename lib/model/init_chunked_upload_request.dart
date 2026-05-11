//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class InitChunkedUploadRequest {
  /// Returns a new [InitChunkedUploadRequest] instance.
  InitChunkedUploadRequest({
    required this.fileName,
    required this.totalSize,
    required this.mimeType,
    this.expectedBlocks = const [],
    this.folderId,
    this.workspaceId,
    this.organizationId,
  });

  String fileName;

  int totalSize;

  String mimeType;

  /// Hashes of every block the client intends to upload.
  List<String> expectedBlocks;

  String? folderId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workspaceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organizationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InitChunkedUploadRequest &&
    other.fileName == fileName &&
    other.totalSize == totalSize &&
    other.mimeType == mimeType &&
    _deepEquality.equals(other.expectedBlocks, expectedBlocks) &&
    other.folderId == folderId &&
    other.workspaceId == workspaceId &&
    other.organizationId == organizationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fileName.hashCode) +
    (totalSize.hashCode) +
    (mimeType.hashCode) +
    (expectedBlocks.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode);

  @override
  String toString() => 'InitChunkedUploadRequest[fileName=$fileName, totalSize=$totalSize, mimeType=$mimeType, expectedBlocks=$expectedBlocks, folderId=$folderId, workspaceId=$workspaceId, organizationId=$organizationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fileName'] = this.fileName;
      json[r'totalSize'] = this.totalSize;
      json[r'mimeType'] = this.mimeType;
      json[r'expectedBlocks'] = this.expectedBlocks;
    if (this.folderId != null) {
      json[r'folderId'] = this.folderId;
    } else {
      json[r'folderId'] = null;
    }
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
    if (this.organizationId != null) {
      json[r'organizationId'] = this.organizationId;
    } else {
      json[r'organizationId'] = null;
    }
    return json;
  }

  /// Returns a new [InitChunkedUploadRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InitChunkedUploadRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'fileName'), 'Required key "InitChunkedUploadRequest[fileName]" is missing from JSON.');
        assert(json[r'fileName'] != null, 'Required key "InitChunkedUploadRequest[fileName]" has a null value in JSON.');
        assert(json.containsKey(r'totalSize'), 'Required key "InitChunkedUploadRequest[totalSize]" is missing from JSON.');
        assert(json[r'totalSize'] != null, 'Required key "InitChunkedUploadRequest[totalSize]" has a null value in JSON.');
        assert(json.containsKey(r'mimeType'), 'Required key "InitChunkedUploadRequest[mimeType]" is missing from JSON.');
        assert(json[r'mimeType'] != null, 'Required key "InitChunkedUploadRequest[mimeType]" has a null value in JSON.');
        assert(json.containsKey(r'expectedBlocks'), 'Required key "InitChunkedUploadRequest[expectedBlocks]" is missing from JSON.');
        assert(json[r'expectedBlocks'] != null, 'Required key "InitChunkedUploadRequest[expectedBlocks]" has a null value in JSON.');
        return true;
      }());

      return InitChunkedUploadRequest(
        fileName: mapValueOfType<String>(json, r'fileName')!,
        totalSize: mapValueOfType<int>(json, r'totalSize')!,
        mimeType: mapValueOfType<String>(json, r'mimeType')!,
        expectedBlocks: json[r'expectedBlocks'] is Iterable
            ? (json[r'expectedBlocks'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        folderId: mapValueOfType<String>(json, r'folderId'),
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
        organizationId: mapValueOfType<String>(json, r'organizationId'),
      );
    }
    return null;
  }

  static List<InitChunkedUploadRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InitChunkedUploadRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InitChunkedUploadRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InitChunkedUploadRequest> mapFromJson(dynamic json) {
    final map = <String, InitChunkedUploadRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InitChunkedUploadRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InitChunkedUploadRequest-objects as value to a dart map
  static Map<String, List<InitChunkedUploadRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InitChunkedUploadRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InitChunkedUploadRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fileName',
    'totalSize',
    'mimeType',
    'expectedBlocks',
  };
}

