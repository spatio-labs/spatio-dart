//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UploadChunkedBlockResponse {
  /// Returns a new [UploadChunkedBlockResponse] instance.
  UploadChunkedBlockResponse({
    required this.blockHash,
    required this.uploaded,
    required this.blocksRemaining,
    required this.progress,
  });

  String blockHash;

  bool uploaded;

  int blocksRemaining;

  /// Percent complete, 0–100.
  double progress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UploadChunkedBlockResponse &&
    other.blockHash == blockHash &&
    other.uploaded == uploaded &&
    other.blocksRemaining == blocksRemaining &&
    other.progress == progress;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blockHash.hashCode) +
    (uploaded.hashCode) +
    (blocksRemaining.hashCode) +
    (progress.hashCode);

  @override
  String toString() => 'UploadChunkedBlockResponse[blockHash=$blockHash, uploaded=$uploaded, blocksRemaining=$blocksRemaining, progress=$progress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'blockHash'] = this.blockHash;
      json[r'uploaded'] = this.uploaded;
      json[r'blocksRemaining'] = this.blocksRemaining;
      json[r'progress'] = this.progress;
    return json;
  }

  /// Returns a new [UploadChunkedBlockResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UploadChunkedBlockResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'blockHash'), 'Required key "UploadChunkedBlockResponse[blockHash]" is missing from JSON.');
        assert(json[r'blockHash'] != null, 'Required key "UploadChunkedBlockResponse[blockHash]" has a null value in JSON.');
        assert(json.containsKey(r'uploaded'), 'Required key "UploadChunkedBlockResponse[uploaded]" is missing from JSON.');
        assert(json[r'uploaded'] != null, 'Required key "UploadChunkedBlockResponse[uploaded]" has a null value in JSON.');
        assert(json.containsKey(r'blocksRemaining'), 'Required key "UploadChunkedBlockResponse[blocksRemaining]" is missing from JSON.');
        assert(json[r'blocksRemaining'] != null, 'Required key "UploadChunkedBlockResponse[blocksRemaining]" has a null value in JSON.');
        assert(json.containsKey(r'progress'), 'Required key "UploadChunkedBlockResponse[progress]" is missing from JSON.');
        assert(json[r'progress'] != null, 'Required key "UploadChunkedBlockResponse[progress]" has a null value in JSON.');
        return true;
      }());

      return UploadChunkedBlockResponse(
        blockHash: mapValueOfType<String>(json, r'blockHash')!,
        uploaded: mapValueOfType<bool>(json, r'uploaded')!,
        blocksRemaining: mapValueOfType<int>(json, r'blocksRemaining')!,
        progress: mapValueOfType<double>(json, r'progress')!,
      );
    }
    return null;
  }

  static List<UploadChunkedBlockResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UploadChunkedBlockResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UploadChunkedBlockResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UploadChunkedBlockResponse> mapFromJson(dynamic json) {
    final map = <String, UploadChunkedBlockResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UploadChunkedBlockResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UploadChunkedBlockResponse-objects as value to a dart map
  static Map<String, List<UploadChunkedBlockResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UploadChunkedBlockResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UploadChunkedBlockResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'blockHash',
    'uploaded',
    'blocksRemaining',
    'progress',
  };
}

