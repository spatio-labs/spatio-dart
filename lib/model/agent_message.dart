//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AgentMessage {
  /// Returns a new [AgentMessage] instance.
  AgentMessage({
    required this.id,
    this.conversationId,
    required this.role,
    this.content,
    this.metadata = const {},
    this.createdAt,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? conversationId;

  String role;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  Map<String, Object> metadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentMessage &&
    other.id == id &&
    other.conversationId == conversationId &&
    other.role == role &&
    other.content == content &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (conversationId == null ? 0 : conversationId!.hashCode) +
    (role.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (metadata.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'AgentMessage[id=$id, conversationId=$conversationId, role=$role, content=$content, metadata=$metadata, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.conversationId != null) {
      json[r'conversationId'] = this.conversationId;
    } else {
      json[r'conversationId'] = null;
    }
      json[r'role'] = this.role;
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
      json[r'metadata'] = this.metadata;
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    return json;
  }

  /// Returns a new [AgentMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "AgentMessage[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "AgentMessage[id]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "AgentMessage[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "AgentMessage[role]" has a null value in JSON.');
        return true;
      }());

      return AgentMessage(
        id: mapValueOfType<String>(json, r'id')!,
        conversationId: mapValueOfType<String>(json, r'conversationId'),
        role: mapValueOfType<String>(json, r'role')!,
        content: mapValueOfType<String>(json, r'content'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        createdAt: mapDateTime(json, r'createdAt', r''),
      );
    }
    return null;
  }

  static List<AgentMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentMessage> mapFromJson(dynamic json) {
    final map = <String, AgentMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentMessage-objects as value to a dart map
  static Map<String, List<AgentMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'role',
  };
}

