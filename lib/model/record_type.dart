//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class RecordType {
  /// Returns a new [RecordType] instance.
  RecordType({
    required this.id,
    required this.organizationId,
    this.slug,
    this.name,
    this.namePlural,
    this.icon,
    this.attributeSchema = const [],
    this.createdAt,
    this.updatedAt,
  });

  String id;

  String organizationId;

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
  String? name;

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
  bool operator ==(Object other) => identical(this, other) || other is RecordType &&
    other.id == id &&
    other.organizationId == organizationId &&
    other.slug == slug &&
    other.name == name &&
    other.namePlural == namePlural &&
    other.icon == icon &&
    _deepEquality.equals(other.attributeSchema, attributeSchema) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (organizationId.hashCode) +
    (slug == null ? 0 : slug!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (namePlural == null ? 0 : namePlural!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (attributeSchema.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'RecordType[id=$id, organizationId=$organizationId, slug=$slug, name=$name, namePlural=$namePlural, icon=$icon, attributeSchema=$attributeSchema, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'organization_id'] = this.organizationId;
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
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
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [RecordType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecordType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "RecordType[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "RecordType[id]" has a null value in JSON.');
        assert(json.containsKey(r'organization_id'), 'Required key "RecordType[organization_id]" is missing from JSON.');
        assert(json[r'organization_id'] != null, 'Required key "RecordType[organization_id]" has a null value in JSON.');
        return true;
      }());

      return RecordType(
        id: mapValueOfType<String>(json, r'id')!,
        organizationId: mapValueOfType<String>(json, r'organization_id')!,
        slug: mapValueOfType<String>(json, r'slug'),
        name: mapValueOfType<String>(json, r'name'),
        namePlural: mapValueOfType<String>(json, r'name_plural'),
        icon: mapValueOfType<String>(json, r'icon'),
        attributeSchema: Map.listFromJson(json[r'attribute_schema']),
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<RecordType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecordType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecordType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecordType> mapFromJson(dynamic json) {
    final map = <String, RecordType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecordType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecordType-objects as value to a dart map
  static Map<String, List<RecordType>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecordType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecordType.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'organization_id',
  };
}

