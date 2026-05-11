//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ConversationMessage {
  /// Returns a new [ConversationMessage] instance.
  ConversationMessage({
    required this.id,
    required this.conversationId,
    required this.role,
    this.content,
    this.metadata = const {},
    this.createdAt,
  });

  String id;

  String conversationId;

  /// `user`, `assistant`, `system`, or `tool`.
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
  bool operator ==(Object other) => identical(this, other) || other is ConversationMessage &&
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
    (conversationId.hashCode) +
    (role.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (metadata.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'ConversationMessage[id=$id, conversationId=$conversationId, role=$role, content=$content, metadata=$metadata, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'conversation_id'] = this.conversationId;
      json[r'role'] = this.role;
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
      json[r'metadata'] = this.metadata;
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    return json;
  }

  /// Returns a new [ConversationMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConversationMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ConversationMessage[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ConversationMessage[id]" has a null value in JSON.');
        assert(json.containsKey(r'conversation_id'), 'Required key "ConversationMessage[conversation_id]" is missing from JSON.');
        assert(json[r'conversation_id'] != null, 'Required key "ConversationMessage[conversation_id]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "ConversationMessage[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "ConversationMessage[role]" has a null value in JSON.');
        return true;
      }());

      return ConversationMessage(
        id: mapValueOfType<String>(json, r'id')!,
        conversationId: mapValueOfType<String>(json, r'conversation_id')!,
        role: mapValueOfType<String>(json, r'role')!,
        content: mapValueOfType<String>(json, r'content'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        createdAt: mapDateTime(json, r'created_at', r''),
      );
    }
    return null;
  }

  static List<ConversationMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConversationMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConversationMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConversationMessage> mapFromJson(dynamic json) {
    final map = <String, ConversationMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConversationMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConversationMessage-objects as value to a dart map
  static Map<String, List<ConversationMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConversationMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConversationMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'conversation_id',
    'role',
  };
}

