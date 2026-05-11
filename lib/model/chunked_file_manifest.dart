//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ChunkedFileManifest {
  /// Returns a new [ChunkedFileManifest] instance.
  ChunkedFileManifest({
    required this.manifestId,
    required this.fileId,
    required this.fileName,
    required this.version,
    required this.totalSize,
    required this.blockCount,
    this.chunkingAlgorithm,
    this.fileChecksum,
    this.blocks = const [],
  });

  String manifestId;

  String fileId;

  String fileName;

  int version;

  int totalSize;

  int blockCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chunkingAlgorithm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fileChecksum;

  List<Map<String, Object>> blocks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChunkedFileManifest &&
    other.manifestId == manifestId &&
    other.fileId == fileId &&
    other.fileName == fileName &&
    other.version == version &&
    other.totalSize == totalSize &&
    other.blockCount == blockCount &&
    other.chunkingAlgorithm == chunkingAlgorithm &&
    other.fileChecksum == fileChecksum &&
    _deepEquality.equals(other.blocks, blocks);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (manifestId.hashCode) +
    (fileId.hashCode) +
    (fileName.hashCode) +
    (version.hashCode) +
    (totalSize.hashCode) +
    (blockCount.hashCode) +
    (chunkingAlgorithm == null ? 0 : chunkingAlgorithm!.hashCode) +
    (fileChecksum == null ? 0 : fileChecksum!.hashCode) +
    (blocks.hashCode);

  @override
  String toString() => 'ChunkedFileManifest[manifestId=$manifestId, fileId=$fileId, fileName=$fileName, version=$version, totalSize=$totalSize, blockCount=$blockCount, chunkingAlgorithm=$chunkingAlgorithm, fileChecksum=$fileChecksum, blocks=$blocks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'manifestId'] = this.manifestId;
      json[r'fileId'] = this.fileId;
      json[r'fileName'] = this.fileName;
      json[r'version'] = this.version;
      json[r'totalSize'] = this.totalSize;
      json[r'blockCount'] = this.blockCount;
    if (this.chunkingAlgorithm != null) {
      json[r'chunkingAlgorithm'] = this.chunkingAlgorithm;
    } else {
      json[r'chunkingAlgorithm'] = null;
    }
    if (this.fileChecksum != null) {
      json[r'fileChecksum'] = this.fileChecksum;
    } else {
      json[r'fileChecksum'] = null;
    }
      json[r'blocks'] = this.blocks;
    return json;
  }

  /// Returns a new [ChunkedFileManifest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChunkedFileManifest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'manifestId'), 'Required key "ChunkedFileManifest[manifestId]" is missing from JSON.');
        assert(json[r'manifestId'] != null, 'Required key "ChunkedFileManifest[manifestId]" has a null value in JSON.');
        assert(json.containsKey(r'fileId'), 'Required key "ChunkedFileManifest[fileId]" is missing from JSON.');
        assert(json[r'fileId'] != null, 'Required key "ChunkedFileManifest[fileId]" has a null value in JSON.');
        assert(json.containsKey(r'fileName'), 'Required key "ChunkedFileManifest[fileName]" is missing from JSON.');
        assert(json[r'fileName'] != null, 'Required key "ChunkedFileManifest[fileName]" has a null value in JSON.');
        assert(json.containsKey(r'version'), 'Required key "ChunkedFileManifest[version]" is missing from JSON.');
        assert(json[r'version'] != null, 'Required key "ChunkedFileManifest[version]" has a null value in JSON.');
        assert(json.containsKey(r'totalSize'), 'Required key "ChunkedFileManifest[totalSize]" is missing from JSON.');
        assert(json[r'totalSize'] != null, 'Required key "ChunkedFileManifest[totalSize]" has a null value in JSON.');
        assert(json.containsKey(r'blockCount'), 'Required key "ChunkedFileManifest[blockCount]" is missing from JSON.');
        assert(json[r'blockCount'] != null, 'Required key "ChunkedFileManifest[blockCount]" has a null value in JSON.');
        return true;
      }());

      return ChunkedFileManifest(
        manifestId: mapValueOfType<String>(json, r'manifestId')!,
        fileId: mapValueOfType<String>(json, r'fileId')!,
        fileName: mapValueOfType<String>(json, r'fileName')!,
        version: mapValueOfType<int>(json, r'version')!,
        totalSize: mapValueOfType<int>(json, r'totalSize')!,
        blockCount: mapValueOfType<int>(json, r'blockCount')!,
        chunkingAlgorithm: mapValueOfType<String>(json, r'chunkingAlgorithm'),
        fileChecksum: mapValueOfType<String>(json, r'fileChecksum'),
        blocks: Map.listFromJson(json[r'blocks']),
      );
    }
    return null;
  }

  static List<ChunkedFileManifest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChunkedFileManifest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChunkedFileManifest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChunkedFileManifest> mapFromJson(dynamic json) {
    final map = <String, ChunkedFileManifest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChunkedFileManifest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChunkedFileManifest-objects as value to a dart map
  static Map<String, List<ChunkedFileManifest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChunkedFileManifest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChunkedFileManifest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'manifestId',
    'fileId',
    'fileName',
    'version',
    'totalSize',
    'blockCount',
  };
}

