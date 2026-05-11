//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class PersonalAccessToken {
  /// Returns a new [PersonalAccessToken] instance.
  PersonalAccessToken({
    required this.id,
    this.name,
    this.description,
    this.scopes = const [],
    this.workspaceId,
    this.createdAt,
    this.lastUsedAt,
    this.expiresAt,
    this.tokenPrefix,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  List<String> scopes;

  String? workspaceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  DateTime? lastUsedAt;

  DateTime? expiresAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenPrefix;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PersonalAccessToken &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    _deepEquality.equals(other.scopes, scopes) &&
    other.workspaceId == workspaceId &&
    other.createdAt == createdAt &&
    other.lastUsedAt == lastUsedAt &&
    other.expiresAt == expiresAt &&
    other.tokenPrefix == tokenPrefix;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (scopes.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (lastUsedAt == null ? 0 : lastUsedAt!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (tokenPrefix == null ? 0 : tokenPrefix!.hashCode);

  @override
  String toString() => 'PersonalAccessToken[id=$id, name=$name, description=$description, scopes=$scopes, workspaceId=$workspaceId, createdAt=$createdAt, lastUsedAt=$lastUsedAt, expiresAt=$expiresAt, tokenPrefix=$tokenPrefix]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'scopes'] = this.scopes;
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.lastUsedAt != null) {
      json[r'lastUsedAt'] = this.lastUsedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastUsedAt'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.tokenPrefix != null) {
      json[r'tokenPrefix'] = this.tokenPrefix;
    } else {
      json[r'tokenPrefix'] = null;
    }
    return json;
  }

  /// Returns a new [PersonalAccessToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PersonalAccessToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "PersonalAccessToken[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "PersonalAccessToken[id]" has a null value in JSON.');
        return true;
      }());

      return PersonalAccessToken(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        lastUsedAt: mapDateTime(json, r'lastUsedAt', r''),
        expiresAt: mapDateTime(json, r'expiresAt', r''),
        tokenPrefix: mapValueOfType<String>(json, r'tokenPrefix'),
      );
    }
    return null;
  }

  static List<PersonalAccessToken> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PersonalAccessToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PersonalAccessToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PersonalAccessToken> mapFromJson(dynamic json) {
    final map = <String, PersonalAccessToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PersonalAccessToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PersonalAccessToken-objects as value to a dart map
  static Map<String, List<PersonalAccessToken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PersonalAccessToken>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PersonalAccessToken.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

