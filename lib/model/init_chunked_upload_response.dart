//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class InitChunkedUploadResponse {
  /// Returns a new [InitChunkedUploadResponse] instance.
  InitChunkedUploadResponse({
    required this.sessionId,
    this.blocksToUpload = const [],
    this.blocksAlreadyExist = const [],
    required this.deduplicationPct,
    required this.estimatedUploadSize,
  });

  String sessionId;

  List<String> blocksToUpload;

  /// Blocks the platform already has and the client can skip (content-addressed deduplication). 
  List<String> blocksAlreadyExist;

  double deduplicationPct;

  int estimatedUploadSize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InitChunkedUploadResponse &&
    other.sessionId == sessionId &&
    _deepEquality.equals(other.blocksToUpload, blocksToUpload) &&
    _deepEquality.equals(other.blocksAlreadyExist, blocksAlreadyExist) &&
    other.deduplicationPct == deduplicationPct &&
    other.estimatedUploadSize == estimatedUploadSize;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sessionId.hashCode) +
    (blocksToUpload.hashCode) +
    (blocksAlreadyExist.hashCode) +
    (deduplicationPct.hashCode) +
    (estimatedUploadSize.hashCode);

  @override
  String toString() => 'InitChunkedUploadResponse[sessionId=$sessionId, blocksToUpload=$blocksToUpload, blocksAlreadyExist=$blocksAlreadyExist, deduplicationPct=$deduplicationPct, estimatedUploadSize=$estimatedUploadSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sessionId'] = this.sessionId;
      json[r'blocksToUpload'] = this.blocksToUpload;
      json[r'blocksAlreadyExist'] = this.blocksAlreadyExist;
      json[r'deduplicationPct'] = this.deduplicationPct;
      json[r'estimatedUploadSize'] = this.estimatedUploadSize;
    return json;
  }

  /// Returns a new [InitChunkedUploadResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InitChunkedUploadResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'sessionId'), 'Required key "InitChunkedUploadResponse[sessionId]" is missing from JSON.');
        assert(json[r'sessionId'] != null, 'Required key "InitChunkedUploadResponse[sessionId]" has a null value in JSON.');
        assert(json.containsKey(r'blocksToUpload'), 'Required key "InitChunkedUploadResponse[blocksToUpload]" is missing from JSON.');
        assert(json[r'blocksToUpload'] != null, 'Required key "InitChunkedUploadResponse[blocksToUpload]" has a null value in JSON.');
        assert(json.containsKey(r'blocksAlreadyExist'), 'Required key "InitChunkedUploadResponse[blocksAlreadyExist]" is missing from JSON.');
        assert(json[r'blocksAlreadyExist'] != null, 'Required key "InitChunkedUploadResponse[blocksAlreadyExist]" has a null value in JSON.');
        assert(json.containsKey(r'deduplicationPct'), 'Required key "InitChunkedUploadResponse[deduplicationPct]" is missing from JSON.');
        assert(json[r'deduplicationPct'] != null, 'Required key "InitChunkedUploadResponse[deduplicationPct]" has a null value in JSON.');
        assert(json.containsKey(r'estimatedUploadSize'), 'Required key "InitChunkedUploadResponse[estimatedUploadSize]" is missing from JSON.');
        assert(json[r'estimatedUploadSize'] != null, 'Required key "InitChunkedUploadResponse[estimatedUploadSize]" has a null value in JSON.');
        return true;
      }());

      return InitChunkedUploadResponse(
        sessionId: mapValueOfType<String>(json, r'sessionId')!,
        blocksToUpload: json[r'blocksToUpload'] is Iterable
            ? (json[r'blocksToUpload'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        blocksAlreadyExist: json[r'blocksAlreadyExist'] is Iterable
            ? (json[r'blocksAlreadyExist'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        deduplicationPct: mapValueOfType<double>(json, r'deduplicationPct')!,
        estimatedUploadSize: mapValueOfType<int>(json, r'estimatedUploadSize')!,
      );
    }
    return null;
  }

  static List<InitChunkedUploadResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InitChunkedUploadResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InitChunkedUploadResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InitChunkedUploadResponse> mapFromJson(dynamic json) {
    final map = <String, InitChunkedUploadResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InitChunkedUploadResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InitChunkedUploadResponse-objects as value to a dart map
  static Map<String, List<InitChunkedUploadResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InitChunkedUploadResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InitChunkedUploadResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sessionId',
    'blocksToUpload',
    'blocksAlreadyExist',
    'deduplicationPct',
    'estimatedUploadSize',
  };
}

