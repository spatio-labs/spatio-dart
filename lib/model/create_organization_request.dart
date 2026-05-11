//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateOrganizationRequest {
  /// Returns a new [CreateOrganizationRequest] instance.
  CreateOrganizationRequest({
    required this.name,
    this.slug,
    this.description,
    this.logoUrl,
    this.createDefaultWorkspace,
    this.defaultWorkspaceName,
  });

  String name;

  /// Auto-generated from `name` if omitted. Slug collisions are auto-suffixed with `-2`, `-3`, etc. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logoUrl;

  /// `true` (default) creates a default workspace alongside the org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? createDefaultWorkspace;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? defaultWorkspaceName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateOrganizationRequest &&
    other.name == name &&
    other.slug == slug &&
    other.description == description &&
    other.logoUrl == logoUrl &&
    other.createDefaultWorkspace == createDefaultWorkspace &&
    other.defaultWorkspaceName == defaultWorkspaceName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (logoUrl == null ? 0 : logoUrl!.hashCode) +
    (createDefaultWorkspace == null ? 0 : createDefaultWorkspace!.hashCode) +
    (defaultWorkspaceName == null ? 0 : defaultWorkspaceName!.hashCode);

  @override
  String toString() => 'CreateOrganizationRequest[name=$name, slug=$slug, description=$description, logoUrl=$logoUrl, createDefaultWorkspace=$createDefaultWorkspace, defaultWorkspaceName=$defaultWorkspaceName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
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
    if (this.createDefaultWorkspace != null) {
      json[r'createDefaultWorkspace'] = this.createDefaultWorkspace;
    } else {
      json[r'createDefaultWorkspace'] = null;
    }
    if (this.defaultWorkspaceName != null) {
      json[r'defaultWorkspaceName'] = this.defaultWorkspaceName;
    } else {
      json[r'defaultWorkspaceName'] = null;
    }
    return json;
  }

  /// Returns a new [CreateOrganizationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateOrganizationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "CreateOrganizationRequest[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "CreateOrganizationRequest[name]" has a null value in JSON.');
        return true;
      }());

      return CreateOrganizationRequest(
        name: mapValueOfType<String>(json, r'name')!,
        slug: mapValueOfType<String>(json, r'slug'),
        description: mapValueOfType<String>(json, r'description'),
        logoUrl: mapValueOfType<String>(json, r'logoUrl'),
        createDefaultWorkspace: mapValueOfType<bool>(json, r'createDefaultWorkspace'),
        defaultWorkspaceName: mapValueOfType<String>(json, r'defaultWorkspaceName'),
      );
    }
    return null;
  }

  static List<CreateOrganizationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateOrganizationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateOrganizationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateOrganizationRequest> mapFromJson(dynamic json) {
    final map = <String, CreateOrganizationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateOrganizationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateOrganizationRequest-objects as value to a dart map
  static Map<String, List<CreateOrganizationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateOrganizationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateOrganizationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

