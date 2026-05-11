//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Agent {
  /// Returns a new [Agent] instance.
  Agent({
    required this.id,
    this.name,
    this.description,
    this.systemPrompt,
    this.tools = const [],
    this.icon,
    this.color,
    this.isDefault,
    this.isPreconfigured,
    this.createdAt,
    this.updatedAt,
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
  String? systemPrompt;

  List<String> tools;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

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
  bool? isDefault;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPreconfigured;

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

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Agent &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.systemPrompt == systemPrompt &&
    _deepEquality.equals(other.tools, tools) &&
    other.icon == icon &&
    other.color == color &&
    other.isDefault == isDefault &&
    other.isPreconfigured == isPreconfigured &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (systemPrompt == null ? 0 : systemPrompt!.hashCode) +
    (tools.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (color == null ? 0 : color!.hashCode) +
    (isDefault == null ? 0 : isDefault!.hashCode) +
    (isPreconfigured == null ? 0 : isPreconfigured!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'Agent[id=$id, name=$name, description=$description, systemPrompt=$systemPrompt, tools=$tools, icon=$icon, color=$color, isDefault=$isDefault, isPreconfigured=$isPreconfigured, createdAt=$createdAt, updatedAt=$updatedAt, metadata=$metadata]';

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
    if (this.systemPrompt != null) {
      json[r'systemPrompt'] = this.systemPrompt;
    } else {
      json[r'systemPrompt'] = null;
    }
      json[r'tools'] = this.tools;
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.color != null) {
      json[r'color'] = this.color;
    } else {
      json[r'color'] = null;
    }
    if (this.isDefault != null) {
      json[r'isDefault'] = this.isDefault;
    } else {
      json[r'isDefault'] = null;
    }
    if (this.isPreconfigured != null) {
      json[r'isPreconfigured'] = this.isPreconfigured;
    } else {
      json[r'isPreconfigured'] = null;
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
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [Agent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Agent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Agent[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Agent[id]" has a null value in JSON.');
        return true;
      }());

      return Agent(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        systemPrompt: mapValueOfType<String>(json, r'systemPrompt'),
        tools: json[r'tools'] is Iterable
            ? (json[r'tools'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        icon: mapValueOfType<String>(json, r'icon'),
        color: mapValueOfType<String>(json, r'color'),
        isDefault: mapValueOfType<bool>(json, r'isDefault'),
        isPreconfigured: mapValueOfType<bool>(json, r'isPreconfigured'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<Agent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Agent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Agent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Agent> mapFromJson(dynamic json) {
    final map = <String, Agent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Agent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Agent-objects as value to a dart map
  static Map<String, List<Agent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Agent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Agent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

