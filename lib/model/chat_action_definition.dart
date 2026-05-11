//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ChatActionDefinition {
  /// Returns a new [ChatActionDefinition] instance.
  ChatActionDefinition({
    required this.id,
    required this.name,
    this.description,
    required this.platform,
    this.category,
    this.inputType,
    this.outputType,
    this.scopes = const [],
    this.metadata = const {},
  });

  String id;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  String platform;

  /// Common values: `read`, `write`, `delete`, `manage`, `sync`.
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

  /// `null` when no scopes are declared (Go nil-slice).
  List<String>? scopes;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatActionDefinition &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.platform == platform &&
    other.category == category &&
    other.inputType == inputType &&
    other.outputType == outputType &&
    _deepEquality.equals(other.scopes, scopes) &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (platform.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (inputType == null ? 0 : inputType!.hashCode) +
    (outputType == null ? 0 : outputType!.hashCode) +
    (scopes == null ? 0 : scopes!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'ChatActionDefinition[id=$id, name=$name, description=$description, platform=$platform, category=$category, inputType=$inputType, outputType=$outputType, scopes=$scopes, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'platform'] = this.platform;
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
    if (this.scopes != null) {
      json[r'scopes'] = this.scopes;
    } else {
      json[r'scopes'] = null;
    }
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [ChatActionDefinition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChatActionDefinition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ChatActionDefinition[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ChatActionDefinition[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "ChatActionDefinition[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "ChatActionDefinition[name]" has a null value in JSON.');
        assert(json.containsKey(r'platform'), 'Required key "ChatActionDefinition[platform]" is missing from JSON.');
        assert(json[r'platform'] != null, 'Required key "ChatActionDefinition[platform]" has a null value in JSON.');
        return true;
      }());

      return ChatActionDefinition(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        platform: mapValueOfType<String>(json, r'platform')!,
        category: mapValueOfType<String>(json, r'category'),
        inputType: mapValueOfType<String>(json, r'inputType'),
        outputType: mapValueOfType<String>(json, r'outputType'),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<ChatActionDefinition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChatActionDefinition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChatActionDefinition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChatActionDefinition> mapFromJson(dynamic json) {
    final map = <String, ChatActionDefinition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChatActionDefinition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChatActionDefinition-objects as value to a dart map
  static Map<String, List<ChatActionDefinition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChatActionDefinition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChatActionDefinition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'platform',
  };
}

