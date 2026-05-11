//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Workspace {
  /// Returns a new [Workspace] instance.
  Workspace({
    required this.id,
    required this.name,
    required this.slug,
    this.description,
    this.logoUrl,
    this.organizationId,
    this.organization,
    this.role,
    this.settings,
    this.isDefault,
    this.memberCount,
    this.billingTier,
    this.createdAt,
    this.updatedAt,
  });

  String id;

  String name;

  String slug;

  String? description;

  String? logoUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organizationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkspaceOrganization? organization;

  /// The caller's role in this workspace (`owner`, `admin`, `member`, `guest`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? role;

  /// Per-workspace settings. Currently emitted as either an object (`{language, timezone, ...}`) on `GET /v1/workspaces/{id}` or a JSON-encoded string on `GET /v1/organizations/{id}/workspaces`. Treat as opaque and parse defensively. 
  Object? settings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isDefault;

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
  String? billingTier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Workspace &&
    other.id == id &&
    other.name == name &&
    other.slug == slug &&
    other.description == description &&
    other.logoUrl == logoUrl &&
    other.organizationId == organizationId &&
    other.organization == organization &&
    other.role == role &&
    other.settings == settings &&
    other.isDefault == isDefault &&
    other.memberCount == memberCount &&
    other.billingTier == billingTier &&
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
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (role == null ? 0 : role!.hashCode) +
    (settings == null ? 0 : settings!.hashCode) +
    (isDefault == null ? 0 : isDefault!.hashCode) +
    (memberCount == null ? 0 : memberCount!.hashCode) +
    (billingTier == null ? 0 : billingTier!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'Workspace[id=$id, name=$name, slug=$slug, description=$description, logoUrl=$logoUrl, organizationId=$organizationId, organization=$organization, role=$role, settings=$settings, isDefault=$isDefault, memberCount=$memberCount, billingTier=$billingTier, createdAt=$createdAt, updatedAt=$updatedAt]';

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
    if (this.organizationId != null) {
      json[r'organizationId'] = this.organizationId;
    } else {
      json[r'organizationId'] = null;
    }
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    if (this.settings != null) {
      json[r'settings'] = this.settings;
    } else {
      json[r'settings'] = null;
    }
    if (this.isDefault != null) {
      json[r'isDefault'] = this.isDefault;
    } else {
      json[r'isDefault'] = null;
    }
    if (this.memberCount != null) {
      json[r'memberCount'] = this.memberCount;
    } else {
      json[r'memberCount'] = null;
    }
    if (this.billingTier != null) {
      json[r'billingTier'] = this.billingTier;
    } else {
      json[r'billingTier'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [Workspace] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Workspace? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Workspace[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Workspace[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "Workspace[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "Workspace[name]" has a null value in JSON.');
        assert(json.containsKey(r'slug'), 'Required key "Workspace[slug]" is missing from JSON.');
        assert(json[r'slug'] != null, 'Required key "Workspace[slug]" has a null value in JSON.');
        return true;
      }());

      return Workspace(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        slug: mapValueOfType<String>(json, r'slug')!,
        description: mapValueOfType<String>(json, r'description'),
        logoUrl: mapValueOfType<String>(json, r'logoUrl'),
        organizationId: mapValueOfType<String>(json, r'organizationId'),
        organization: WorkspaceOrganization.fromJson(json[r'organization']),
        role: mapValueOfType<String>(json, r'role'),
        settings: mapValueOfType<Object>(json, r'settings'),
        isDefault: mapValueOfType<bool>(json, r'isDefault'),
        memberCount: mapValueOfType<int>(json, r'memberCount'),
        billingTier: mapValueOfType<String>(json, r'billingTier'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
      );
    }
    return null;
  }

  static List<Workspace> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Workspace>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Workspace.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Workspace> mapFromJson(dynamic json) {
    final map = <String, Workspace>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Workspace.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Workspace-objects as value to a dart map
  static Map<String, List<Workspace>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Workspace>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Workspace.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'slug',
  };
}

