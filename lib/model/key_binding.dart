//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class KeyBinding {
  /// Returns a new [KeyBinding] instance.
  KeyBinding({
    required this.id,
    required this.actionId,
    this.displayName,
    this.description,
    this.key,
    this.modifiers = const [],
    this.category,
    this.scope,
    this.displayOrder,
    this.isCustom,
    this.metadata = const {},
  });

  String id;

  String actionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

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
  String? key;

  List<String> modifiers;

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
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? displayOrder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isCustom;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KeyBinding &&
    other.id == id &&
    other.actionId == actionId &&
    other.displayName == displayName &&
    other.description == description &&
    other.key == key &&
    _deepEquality.equals(other.modifiers, modifiers) &&
    other.category == category &&
    other.scope == scope &&
    other.displayOrder == displayOrder &&
    other.isCustom == isCustom &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (actionId.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (modifiers.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (displayOrder == null ? 0 : displayOrder!.hashCode) +
    (isCustom == null ? 0 : isCustom!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'KeyBinding[id=$id, actionId=$actionId, displayName=$displayName, description=$description, key=$key, modifiers=$modifiers, category=$category, scope=$scope, displayOrder=$displayOrder, isCustom=$isCustom, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'actionId'] = this.actionId;
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
      json[r'modifiers'] = this.modifiers;
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.displayOrder != null) {
      json[r'displayOrder'] = this.displayOrder;
    } else {
      json[r'displayOrder'] = null;
    }
    if (this.isCustom != null) {
      json[r'isCustom'] = this.isCustom;
    } else {
      json[r'isCustom'] = null;
    }
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [KeyBinding] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KeyBinding? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "KeyBinding[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "KeyBinding[id]" has a null value in JSON.');
        assert(json.containsKey(r'actionId'), 'Required key "KeyBinding[actionId]" is missing from JSON.');
        assert(json[r'actionId'] != null, 'Required key "KeyBinding[actionId]" has a null value in JSON.');
        return true;
      }());

      return KeyBinding(
        id: mapValueOfType<String>(json, r'id')!,
        actionId: mapValueOfType<String>(json, r'actionId')!,
        displayName: mapValueOfType<String>(json, r'displayName'),
        description: mapValueOfType<String>(json, r'description'),
        key: mapValueOfType<String>(json, r'key'),
        modifiers: json[r'modifiers'] is Iterable
            ? (json[r'modifiers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        category: mapValueOfType<String>(json, r'category'),
        scope: mapValueOfType<String>(json, r'scope'),
        displayOrder: mapValueOfType<int>(json, r'displayOrder'),
        isCustom: mapValueOfType<bool>(json, r'isCustom'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<KeyBinding> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KeyBinding>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KeyBinding.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KeyBinding> mapFromJson(dynamic json) {
    final map = <String, KeyBinding>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KeyBinding.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KeyBinding-objects as value to a dart map
  static Map<String, List<KeyBinding>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KeyBinding>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KeyBinding.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'actionId',
  };
}

