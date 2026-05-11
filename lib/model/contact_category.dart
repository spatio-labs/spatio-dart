//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ContactCategory {
  /// Returns a new [ContactCategory] instance.
  ContactCategory({
    required this.id,
    required this.name,
    this.color,
    this.description,
    this.organizationId,
  });

  String id;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color;

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
  String? organizationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactCategory &&
    other.id == id &&
    other.name == name &&
    other.color == color &&
    other.description == description &&
    other.organizationId == organizationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (color == null ? 0 : color!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode);

  @override
  String toString() => 'ContactCategory[id=$id, name=$name, color=$color, description=$description, organizationId=$organizationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.color != null) {
      json[r'color'] = this.color;
    } else {
      json[r'color'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.organizationId != null) {
      json[r'organization_id'] = this.organizationId;
    } else {
      json[r'organization_id'] = null;
    }
    return json;
  }

  /// Returns a new [ContactCategory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactCategory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ContactCategory[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ContactCategory[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "ContactCategory[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "ContactCategory[name]" has a null value in JSON.');
        return true;
      }());

      return ContactCategory(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        color: mapValueOfType<String>(json, r'color'),
        description: mapValueOfType<String>(json, r'description'),
        organizationId: mapValueOfType<String>(json, r'organization_id'),
      );
    }
    return null;
  }

  static List<ContactCategory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactCategory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactCategory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactCategory> mapFromJson(dynamic json) {
    final map = <String, ContactCategory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactCategory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactCategory-objects as value to a dart map
  static Map<String, List<ContactCategory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactCategory>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactCategory.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
  };
}

