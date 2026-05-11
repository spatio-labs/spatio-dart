//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Organization {
  /// Returns a new [Organization] instance.
  Organization({
    required this.id,
    required this.name,
    required this.slug,
    this.description,
    this.logoUrl,
    required this.role,
    this.memberCount,
    this.workspaceCount,
    this.workspaces = const [],
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String name;

  String slug;

  String? description;

  String? logoUrl;

  /// The caller's role in this org (`owner`, `admin`, `billing_admin`, `member`).
  String role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memberCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? workspaceCount;

  /// Compact workspace summaries embedded in the org-list response.
  List<OrganizationWorkspacesInner> workspaces;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Organization &&
    other.id == id &&
    other.name == name &&
    other.slug == slug &&
    other.description == description &&
    other.logoUrl == logoUrl &&
    other.role == role &&
    other.memberCount == memberCount &&
    other.workspaceCount == workspaceCount &&
    _deepEquality.equals(other.workspaces, workspaces) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (slug.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode) +
    (role.hashCode) +
    (memberCount == null ? 0 : memberCount!.hashCode) +
    (workspaceCount == null ? 0 : workspaceCount!.hashCode) +
    (workspaces.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Organization[id=$id, name=$name, slug=$slug, description=$description, logoUrl=$logoUrl, role=$role, memberCount=$memberCount, workspaceCount=$workspaceCount, workspaces=$workspaces, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'slug'] = this.slug;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.logoUrl != null) {
      json[r'logoUrl'] = this.logoUrl;
    } else {
      json[r'logoUrl'] = null;
    }
      json[r'role'] = this.role;
    if (this.memberCount != null) {
      json[r'memberCount'] = this.memberCount;
    } else {
      json[r'memberCount'] = null;
    }
    if (this.workspaceCount != null) {
      json[r'workspaceCount'] = this.workspaceCount;
    } else {
      json[r'workspaceCount'] = null;
    }
      json[r'workspaces'] = this.workspaces;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Organization] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Organization? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Organization[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Organization[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "Organization[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "Organization[name]" has a null value in JSON.');
        assert(json.containsKey(r'slug'), 'Required key "Organization[slug]" is missing from JSON.');
        assert(json[r'slug'] != null, 'Required key "Organization[slug]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "Organization[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "Organization[role]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "Organization[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "Organization[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "Organization[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "Organization[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return Organization(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        description: mapValueOfType<String>(json, r'description'),
        logoUrl: mapValueOfType<String>(json, r'logoUrl'),
        role: mapValueOfType<String>(json, r'role')!,
        memberCount: mapValueOfType<int>(json, r'memberCount'),
        workspaceCount: mapValueOfType<int>(json, r'workspaceCount'),
        workspaces: OrganizationWorkspacesInner.listFromJson(json[r'workspaces']),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<Organization> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Organization>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Organization.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Organization> mapFromJson(dynamic json) {
    final map = <String, Organization>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Organization.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Organization-objects as value to a dart map
  static Map<String, List<Organization>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Organization>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Organization.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'slug',
    'role',
    'createdAt',
    'updatedAt',
  };
}

