//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Folder {
  /// Returns a new [Folder] instance.
  Folder({
    required this.id,
    this.provider,
    this.accountId,
    required this.name,
    this.parentId,
    required this.path,
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

  String? parentId;

  /// Display path from the root (e.g. `/Finance/Q3`).
  String path;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Folder &&
    other.id == id &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.name == name &&
    other.parentId == parentId &&
    other.path == path &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (name.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (path.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Folder[id=$id, provider=$provider, accountId=$accountId, name=$name, parentId=$parentId, path=$path, createdAt=$createdAt, updatedAt=$updatedAt]';

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
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
      json[r'path'] = this.path;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Folder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Folder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Folder[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Folder[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "Folder[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "Folder[name]" has a null value in JSON.');
        assert(json.containsKey(r'path'), 'Required key "Folder[path]" is missing from JSON.');
        assert(json[r'path'] != null, 'Required key "Folder[path]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "Folder[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "Folder[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "Folder[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "Folder[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return Folder(
        id: mapValueOfType<String>(json, r'id')!,
        provider: mapValueOfType<String>(json, r'provider'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        name: mapValueOfType<String>(json, r'name')!,
        parentId: mapValueOfType<String>(json, r'parentId'),
        path: mapValueOfType<String>(json, r'path')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<Folder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Folder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Folder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Folder> mapFromJson(dynamic json) {
    final map = <String, Folder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Folder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Folder-objects as value to a dart map
  static Map<String, List<Folder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Folder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Folder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'path',
    'createdAt',
    'updatedAt',
  };
}

