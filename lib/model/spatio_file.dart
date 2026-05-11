//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SpatioFile {
  /// Returns a new [SpatioFile] instance.
  SpatioFile({
    required this.id,
    this.provider,
    this.accountId,
    required this.name,
    required this.size,
    required this.mimeType,
    this.folderId,
    required this.storageType,
    this.downloadUrl,
    this.metadata = const {},
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  String name;

  /// Bytes.
  int size;

  String mimeType;

  String? folderId;

  /// Backing storage class — `r2`, `gdrive`, `dropbox`, etc. Provider-specific; treat as opaque. 
  String storageType;

  /// Pre-signed download URL when one is cached on the row. Use `GET /v1/files/{id}/download` for a guaranteed-fresh URL — this field can lag past expiry. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? downloadUrl;

  Map<String, Object> metadata;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpatioFile &&
    other.id == id &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.name == name &&
    other.size == size &&
    other.mimeType == mimeType &&
    other.folderId == folderId &&
    other.storageType == storageType &&
    other.downloadUrl == downloadUrl &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (name.hashCode) +
    (size.hashCode) +
    (mimeType.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode) +
    (storageType.hashCode) +
    (downloadUrl == null ? 0 : downloadUrl!.hashCode) +
    (metadata.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'SpatioFile[id=$id, provider=$provider, accountId=$accountId, name=$name, size=$size, mimeType=$mimeType, folderId=$folderId, storageType=$storageType, downloadUrl=$downloadUrl, metadata=$metadata, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
      json[r'name'] = this.name;
      json[r'size'] = this.size;
      json[r'mimeType'] = this.mimeType;
    if (this.folderId != null) {
      json[r'folderId'] = this.folderId;
    } else {
      json[r'folderId'] = null;
    }
      json[r'storageType'] = this.storageType;
    if (this.downloadUrl != null) {
      json[r'downloadUrl'] = this.downloadUrl;
    } else {
      json[r'downloadUrl'] = null;
    }
      json[r'metadata'] = this.metadata;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SpatioFile] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpatioFile? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "SpatioFile[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "SpatioFile[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "SpatioFile[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "SpatioFile[name]" has a null value in JSON.');
        assert(json.containsKey(r'size'), 'Required key "SpatioFile[size]" is missing from JSON.');
        assert(json[r'size'] != null, 'Required key "SpatioFile[size]" has a null value in JSON.');
        assert(json.containsKey(r'mimeType'), 'Required key "SpatioFile[mimeType]" is missing from JSON.');
        assert(json[r'mimeType'] != null, 'Required key "SpatioFile[mimeType]" has a null value in JSON.');
        assert(json.containsKey(r'storageType'), 'Required key "SpatioFile[storageType]" is missing from JSON.');
        assert(json[r'storageType'] != null, 'Required key "SpatioFile[storageType]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "SpatioFile[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "SpatioFile[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "SpatioFile[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "SpatioFile[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return SpatioFile(
        id: mapValueOfType<String>(json, r'id')!,
        provider: mapValueOfType<String>(json, r'provider'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        name: mapValueOfType<String>(json, r'name')!,
        size: mapValueOfType<int>(json, r'size')!,
        mimeType: mapValueOfType<String>(json, r'mimeType')!,
        folderId: mapValueOfType<String>(json, r'folderId'),
        storageType: mapValueOfType<String>(json, r'storageType')!,
        downloadUrl: mapValueOfType<String>(json, r'downloadUrl'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<SpatioFile> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpatioFile>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpatioFile.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpatioFile> mapFromJson(dynamic json) {
    final map = <String, SpatioFile>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpatioFile.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpatioFile-objects as value to a dart map
  static Map<String, List<SpatioFile>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpatioFile>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpatioFile.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'size',
    'mimeType',
    'storageType',
    'createdAt',
    'updatedAt',
  };
}

