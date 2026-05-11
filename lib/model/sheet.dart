//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Sheet {
  /// Returns a new [Sheet] instance.
  Sheet({
    required this.id,
    this.provider,
    this.accountId,
    this.ownerUserId,
    required this.name,
    this.description,
    this.data = const {},
    required this.rowCount,
    required this.columnCount,
    required this.sheetCount,
    required this.isPublic,
    required this.isReadOnly,
    this.fileSize,
    this.lastAccessedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  /// Registered provider id (e.g. `native-sheets`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Connected-account row this sheet belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  /// User id of the sheet owner; non-native providers leave empty.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ownerUserId;

  String name;

  String? description;

  /// Free-form provider blob. Treat as opaque.
  Map<String, Object> data;

  int rowCount;

  int columnCount;

  /// Tab count when the file contains multiple sheets.
  int sheetCount;

  bool isPublic;

  bool isReadOnly;

  int? fileSize;

  DateTime? lastAccessedAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Sheet &&
    other.id == id &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.ownerUserId == ownerUserId &&
    other.name == name &&
    other.description == description &&
    _deepEquality.equals(other.data, data) &&
    other.rowCount == rowCount &&
    other.columnCount == columnCount &&
    other.sheetCount == sheetCount &&
    other.isPublic == isPublic &&
    other.isReadOnly == isReadOnly &&
    other.fileSize == fileSize &&
    other.lastAccessedAt == lastAccessedAt &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (ownerUserId == null ? 0 : ownerUserId!.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (data.hashCode) +
    (rowCount.hashCode) +
    (columnCount.hashCode) +
    (sheetCount.hashCode) +
    (isPublic.hashCode) +
    (isReadOnly.hashCode) +
    (fileSize == null ? 0 : fileSize!.hashCode) +
    (lastAccessedAt == null ? 0 : lastAccessedAt!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Sheet[id=$id, provider=$provider, accountId=$accountId, ownerUserId=$ownerUserId, name=$name, description=$description, data=$data, rowCount=$rowCount, columnCount=$columnCount, sheetCount=$sheetCount, isPublic=$isPublic, isReadOnly=$isReadOnly, fileSize=$fileSize, lastAccessedAt=$lastAccessedAt, createdAt=$createdAt, updatedAt=$updatedAt]';

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
    if (this.ownerUserId != null) {
      json[r'ownerUserId'] = this.ownerUserId;
    } else {
      json[r'ownerUserId'] = null;
    }
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'data'] = this.data;
      json[r'rowCount'] = this.rowCount;
      json[r'columnCount'] = this.columnCount;
      json[r'sheetCount'] = this.sheetCount;
      json[r'isPublic'] = this.isPublic;
      json[r'isReadOnly'] = this.isReadOnly;
    if (this.fileSize != null) {
      json[r'fileSize'] = this.fileSize;
    } else {
      json[r'fileSize'] = null;
    }
    if (this.lastAccessedAt != null) {
      json[r'lastAccessedAt'] = this.lastAccessedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastAccessedAt'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Sheet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Sheet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Sheet[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Sheet[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "Sheet[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "Sheet[name]" has a null value in JSON.');
        assert(json.containsKey(r'rowCount'), 'Required key "Sheet[rowCount]" is missing from JSON.');
        assert(json[r'rowCount'] != null, 'Required key "Sheet[rowCount]" has a null value in JSON.');
        assert(json.containsKey(r'columnCount'), 'Required key "Sheet[columnCount]" is missing from JSON.');
        assert(json[r'columnCount'] != null, 'Required key "Sheet[columnCount]" has a null value in JSON.');
        assert(json.containsKey(r'sheetCount'), 'Required key "Sheet[sheetCount]" is missing from JSON.');
        assert(json[r'sheetCount'] != null, 'Required key "Sheet[sheetCount]" has a null value in JSON.');
        assert(json.containsKey(r'isPublic'), 'Required key "Sheet[isPublic]" is missing from JSON.');
        assert(json[r'isPublic'] != null, 'Required key "Sheet[isPublic]" has a null value in JSON.');
        assert(json.containsKey(r'isReadOnly'), 'Required key "Sheet[isReadOnly]" is missing from JSON.');
        assert(json[r'isReadOnly'] != null, 'Required key "Sheet[isReadOnly]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "Sheet[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "Sheet[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "Sheet[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "Sheet[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return Sheet(
        id: mapValueOfType<String>(json, r'id')!,
        provider: mapValueOfType<String>(json, r'provider'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        ownerUserId: mapValueOfType<String>(json, r'ownerUserId'),
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        data: mapCastOfType<String, Object>(json, r'data') ?? const {},
        rowCount: mapValueOfType<int>(json, r'rowCount')!,
        columnCount: mapValueOfType<int>(json, r'columnCount')!,
        sheetCount: mapValueOfType<int>(json, r'sheetCount')!,
        isPublic: mapValueOfType<bool>(json, r'isPublic')!,
        isReadOnly: mapValueOfType<bool>(json, r'isReadOnly')!,
        fileSize: mapValueOfType<int>(json, r'fileSize'),
        lastAccessedAt: mapDateTime(json, r'lastAccessedAt', r''),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<Sheet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Sheet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Sheet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Sheet> mapFromJson(dynamic json) {
    final map = <String, Sheet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Sheet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Sheet-objects as value to a dart map
  static Map<String, List<Sheet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Sheet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Sheet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'rowCount',
    'columnCount',
    'sheetCount',
    'isPublic',
    'isReadOnly',
    'createdAt',
    'updatedAt',
  };
}

