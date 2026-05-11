//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CoreAction {
  /// Returns a new [CoreAction] instance.
  CoreAction({
    required this.id,
    this.name,
    this.description,
    this.platform,
    this.category,
    this.icon,
    this.metadata = const {},
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CoreAction &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.platform == platform &&
    other.category == category &&
    other.icon == icon &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'CoreAction[id=$id, name=$name, description=$description, platform=$platform, category=$category, icon=$icon, metadata=$metadata]';

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
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [CoreAction] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CoreAction? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "CoreAction[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "CoreAction[id]" has a null value in JSON.');
        return true;
      }());

      return CoreAction(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        platform: mapValueOfType<String>(json, r'platform'),
        category: mapValueOfType<String>(json, r'category'),
        icon: mapValueOfType<String>(json, r'icon'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<CoreAction> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CoreAction>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CoreAction.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CoreAction> mapFromJson(dynamic json) {
    final map = <String, CoreAction>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CoreAction.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CoreAction-objects as value to a dart map
  static Map<String, List<CoreAction>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CoreAction>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CoreAction.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

