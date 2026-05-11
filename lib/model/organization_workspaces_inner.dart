//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class OrganizationWorkspacesInner {
  /// Returns a new [OrganizationWorkspacesInner] instance.
  OrganizationWorkspacesInner({
    required this.id,
    required this.name,
    required this.slug,
  });

  String id;

  String name;

  String slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationWorkspacesInner &&
    other.id == id &&
    other.name == name &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (slug.hashCode);

  @override
  String toString() => 'OrganizationWorkspacesInner[id=$id, name=$name, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'slug'] = this.slug;
    return json;
  }

  /// Returns a new [OrganizationWorkspacesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationWorkspacesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "OrganizationWorkspacesInner[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "OrganizationWorkspacesInner[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "OrganizationWorkspacesInner[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "OrganizationWorkspacesInner[name]" has a null value in JSON.');
        assert(json.containsKey(r'slug'), 'Required key "OrganizationWorkspacesInner[slug]" is missing from JSON.');
        assert(json[r'slug'] != null, 'Required key "OrganizationWorkspacesInner[slug]" has a null value in JSON.');
        return true;
      }());

      return OrganizationWorkspacesInner(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        slug: mapValueOfType<String>(json, r'slug')!,
      );
    }
    return null;
  }

  static List<OrganizationWorkspacesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrganizationWorkspacesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrganizationWorkspacesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrganizationWorkspacesInner> mapFromJson(dynamic json) {
    final map = <String, OrganizationWorkspacesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrganizationWorkspacesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrganizationWorkspacesInner-objects as value to a dart map
  static Map<String, List<OrganizationWorkspacesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrganizationWorkspacesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrganizationWorkspacesInner.listFromJson(entry.value, growable: growable,);
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

