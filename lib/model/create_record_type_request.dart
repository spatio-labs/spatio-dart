//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateRecordTypeRequest {
  /// Returns a new [CreateRecordTypeRequest] instance.
  CreateRecordTypeRequest({
    this.organizationId,
    this.slug,
    required this.name,
    this.namePlural,
    this.icon,
    this.attributeSchema = const [],
  });

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
  String? slug;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? namePlural;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  List<Map<String, Object>> attributeSchema;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateRecordTypeRequest &&
    other.organizationId == organizationId &&
    other.slug == slug &&
    other.name == name &&
    other.namePlural == namePlural &&
    other.icon == icon &&
    _deepEquality.equals(other.attributeSchema, attributeSchema);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (name.hashCode) +
    (namePlural == null ? 0 : namePlural!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (attributeSchema.hashCode);

  @override
  String toString() => 'CreateRecordTypeRequest[organizationId=$organizationId, slug=$slug, name=$name, namePlural=$namePlural, icon=$icon, attributeSchema=$attributeSchema]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.organizationId != null) {
      json[r'organization_id'] = this.organizationId;
    } else {
      json[r'organization_id'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
      json[r'name'] = this.name;
    if (this.namePlural != null) {
      json[r'name_plural'] = this.namePlural;
    } else {
      json[r'name_plural'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
      json[r'attribute_schema'] = this.attributeSchema;
    return json;
  }

  /// Returns a new [CreateRecordTypeRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateRecordTypeRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "CreateRecordTypeRequest[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "CreateRecordTypeRequest[name]" has a null value in JSON.');
        return true;
      }());

      return CreateRecordTypeRequest(
        organizationId: mapValueOfType<String>(json, r'organization_id'),
        slug: mapValueOfType<String>(json, r'slug'),
        name: mapValueOfType<String>(json, r'name')!,
        namePlural: mapValueOfType<String>(json, r'name_plural'),
        icon: mapValueOfType<String>(json, r'icon'),
        attributeSchema: Map.listFromJson(json[r'attribute_schema']),
      );
    }
    return null;
  }

  static List<CreateRecordTypeRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRecordTypeRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRecordTypeRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateRecordTypeRequest> mapFromJson(dynamic json) {
    final map = <String, CreateRecordTypeRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRecordTypeRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateRecordTypeRequest-objects as value to a dart map
  static Map<String, List<CreateRecordTypeRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateRecordTypeRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateRecordTypeRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

