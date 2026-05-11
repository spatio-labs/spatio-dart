//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class DMAttachRequest {
  /// Returns a new [DMAttachRequest] instance.
  DMAttachRequest({
    required this.kind,
    required this.url,
    this.filename,
    this.sizeBytes,
    this.mimeType,
    this.thumbnailUrl,
    this.width,
    this.height,
    this.accountId,
  });

  /// Attachment kind (`image`, `file`, `audio`, `video`, etc.).
  String kind;

  String url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filename;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sizeBytes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mimeType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thumbnailUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DMAttachRequest &&
    other.kind == kind &&
    other.url == url &&
    other.filename == filename &&
    other.sizeBytes == sizeBytes &&
    other.mimeType == mimeType &&
    other.thumbnailUrl == thumbnailUrl &&
    other.width == width &&
    other.height == height &&
    other.accountId == accountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kind.hashCode) +
    (url.hashCode) +
    (filename == null ? 0 : filename!.hashCode) +
    (sizeBytes == null ? 0 : sizeBytes!.hashCode) +
    (mimeType == null ? 0 : mimeType!.hashCode) +
    (thumbnailUrl == null ? 0 : thumbnailUrl!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode);

  @override
  String toString() => 'DMAttachRequest[kind=$kind, url=$url, filename=$filename, sizeBytes=$sizeBytes, mimeType=$mimeType, thumbnailUrl=$thumbnailUrl, width=$width, height=$height, accountId=$accountId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kind'] = this.kind;
      json[r'url'] = this.url;
    if (this.filename != null) {
      json[r'filename'] = this.filename;
    } else {
      json[r'filename'] = null;
    }
    if (this.sizeBytes != null) {
      json[r'sizeBytes'] = this.sizeBytes;
    } else {
      json[r'sizeBytes'] = null;
    }
    if (this.mimeType != null) {
      json[r'mimeType'] = this.mimeType;
    } else {
      json[r'mimeType'] = null;
    }
    if (this.thumbnailUrl != null) {
      json[r'thumbnailUrl'] = this.thumbnailUrl;
    } else {
      json[r'thumbnailUrl'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    return json;
  }

  /// Returns a new [DMAttachRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DMAttachRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'kind'), 'Required key "DMAttachRequest[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "DMAttachRequest[kind]" has a null value in JSON.');
        assert(json.containsKey(r'url'), 'Required key "DMAttachRequest[url]" is missing from JSON.');
        assert(json[r'url'] != null, 'Required key "DMAttachRequest[url]" has a null value in JSON.');
        return true;
      }());

      return DMAttachRequest(
        kind: mapValueOfType<String>(json, r'kind')!,
        url: mapValueOfType<String>(json, r'url')!,
        filename: mapValueOfType<String>(json, r'filename'),
        sizeBytes: mapValueOfType<int>(json, r'sizeBytes'),
        mimeType: mapValueOfType<String>(json, r'mimeType'),
        thumbnailUrl: mapValueOfType<String>(json, r'thumbnailUrl'),
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
        accountId: mapValueOfType<String>(json, r'accountId'),
      );
    }
    return null;
  }

  static List<DMAttachRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DMAttachRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DMAttachRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DMAttachRequest> mapFromJson(dynamic json) {
    final map = <String, DMAttachRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DMAttachRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DMAttachRequest-objects as value to a dart map
  static Map<String, List<DMAttachRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DMAttachRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DMAttachRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kind',
    'url',
  };
}

