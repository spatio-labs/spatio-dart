//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UploadFileBase64Request {
  /// Returns a new [UploadFileBase64Request] instance.
  UploadFileBase64Request({
    this.accountId,
    required this.name,
    required this.content,
    required this.mimeType,
    this.folderId,
    this.workspaceId,
    this.organizationId,
    this.metadata = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  String name;

  /// Base64-encoded file bytes.
  String content;

  String mimeType;

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

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UploadFileBase64Request &&
    other.accountId == accountId &&
    other.name == name &&
    other.content == content &&
    other.mimeType == mimeType &&
    other.folderId == folderId &&
    other.workspaceId == workspaceId &&
    other.organizationId == organizationId &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (name.hashCode) +
    (content.hashCode) +
    (mimeType.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'UploadFileBase64Request[accountId=$accountId, name=$name, content=$content, mimeType=$mimeType, folderId=$folderId, workspaceId=$workspaceId, organizationId=$organizationId, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
      json[r'name'] = this.name;
      json[r'content'] = this.content;
      json[r'mimeType'] = this.mimeType;
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
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [UploadFileBase64Request] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UploadFileBase64Request? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "UploadFileBase64Request[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "UploadFileBase64Request[name]" has a null value in JSON.');
        assert(json.containsKey(r'content'), 'Required key "UploadFileBase64Request[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "UploadFileBase64Request[content]" has a null value in JSON.');
        assert(json.containsKey(r'mimeType'), 'Required key "UploadFileBase64Request[mimeType]" is missing from JSON.');
        assert(json[r'mimeType'] != null, 'Required key "UploadFileBase64Request[mimeType]" has a null value in JSON.');
        return true;
      }());

      return UploadFileBase64Request(
        accountId: mapValueOfType<String>(json, r'accountId'),
        name: mapValueOfType<String>(json, r'name')!,
        content: mapValueOfType<String>(json, r'content')!,
        mimeType: mapValueOfType<String>(json, r'mimeType')!,
        folderId: mapValueOfType<String>(json, r'folderId'),
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
        organizationId: mapValueOfType<String>(json, r'organizationId'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<UploadFileBase64Request> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UploadFileBase64Request>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UploadFileBase64Request.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UploadFileBase64Request> mapFromJson(dynamic json) {
    final map = <String, UploadFileBase64Request>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UploadFileBase64Request.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UploadFileBase64Request-objects as value to a dart map
  static Map<String, List<UploadFileBase64Request>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UploadFileBase64Request>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UploadFileBase64Request.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'content',
    'mimeType',
  };
}

