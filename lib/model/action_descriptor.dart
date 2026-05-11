//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ActionDescriptor {
  /// Returns a new [ActionDescriptor] instance.
  ActionDescriptor({
    required this.id,
    this.canonicalId,
    this.name,
    this.description,
    this.category,
    this.inputType,
    this.outputType,
    this.metadata = const {},
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? canonicalId;

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
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inputType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? outputType;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActionDescriptor &&
    other.id == id &&
    other.canonicalId == canonicalId &&
    other.name == name &&
    other.description == description &&
    other.category == category &&
    other.inputType == inputType &&
    other.outputType == outputType &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (canonicalId == null ? 0 : canonicalId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (inputType == null ? 0 : inputType!.hashCode) +
    (outputType == null ? 0 : outputType!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'ActionDescriptor[id=$id, canonicalId=$canonicalId, name=$name, description=$description, category=$category, inputType=$inputType, outputType=$outputType, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.canonicalId != null) {
      json[r'canonical_id'] = this.canonicalId;
    } else {
      json[r'canonical_id'] = null;
    }
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
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.inputType != null) {
      json[r'inputType'] = this.inputType;
    } else {
      json[r'inputType'] = null;
    }
    if (this.outputType != null) {
      json[r'outputType'] = this.outputType;
    } else {
      json[r'outputType'] = null;
    }
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [ActionDescriptor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActionDescriptor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ActionDescriptor[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ActionDescriptor[id]" has a null value in JSON.');
        return true;
      }());

      return ActionDescriptor(
        id: mapValueOfType<String>(json, r'id')!,
        canonicalId: mapValueOfType<String>(json, r'canonical_id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        category: mapValueOfType<String>(json, r'category'),
        inputType: mapValueOfType<String>(json, r'inputType'),
        outputType: mapValueOfType<String>(json, r'outputType'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<ActionDescriptor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActionDescriptor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActionDescriptor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActionDescriptor> mapFromJson(dynamic json) {
    final map = <String, ActionDescriptor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActionDescriptor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActionDescriptor-objects as value to a dart map
  static Map<String, List<ActionDescriptor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActionDescriptor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActionDescriptor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

