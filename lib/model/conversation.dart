//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Conversation {
  /// Returns a new [Conversation] instance.
  Conversation({
    required this.id,
    required this.userId,
    required this.title,
    this.context,
    this.cwd,
    this.sessionId,
    this.pinned,
    this.lastMessageAt,
    this.messageCount,
    this.isActive,
    this.metadata = const {},
    this.createdAt,
    this.updatedAt,
  });

  String id;

  String userId;

  String title;

  /// Free-form context tag (e.g. `sidebar:sheets:entity:<id>`).
  String? context;

  String? cwd;

  String? sessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? pinned;

  DateTime? lastMessageAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? messageCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isActive;

  Map<String, Object> metadata;

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
  bool operator ==(Object other) => identical(this, other) || other is Conversation &&
    other.id == id &&
    other.userId == userId &&
    other.title == title &&
    other.context == context &&
    other.cwd == cwd &&
    other.sessionId == sessionId &&
    other.pinned == pinned &&
    other.lastMessageAt == lastMessageAt &&
    other.messageCount == messageCount &&
    other.isActive == isActive &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (title.hashCode) +
    (context == null ? 0 : context!.hashCode) +
    (cwd == null ? 0 : cwd!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (pinned == null ? 0 : pinned!.hashCode) +
    (lastMessageAt == null ? 0 : lastMessageAt!.hashCode) +
    (messageCount == null ? 0 : messageCount!.hashCode) +
    (isActive == null ? 0 : isActive!.hashCode) +
    (metadata.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'Conversation[id=$id, userId=$userId, title=$title, context=$context, cwd=$cwd, sessionId=$sessionId, pinned=$pinned, lastMessageAt=$lastMessageAt, messageCount=$messageCount, isActive=$isActive, metadata=$metadata, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'user_id'] = this.userId;
      json[r'title'] = this.title;
    if (this.context != null) {
      json[r'context'] = this.context;
    } else {
      json[r'context'] = null;
    }
    if (this.cwd != null) {
      json[r'cwd'] = this.cwd;
    } else {
      json[r'cwd'] = null;
    }
    if (this.sessionId != null) {
      json[r'session_id'] = this.sessionId;
    } else {
      json[r'session_id'] = null;
    }
    if (this.pinned != null) {
      json[r'pinned'] = this.pinned;
    } else {
      json[r'pinned'] = null;
    }
    if (this.lastMessageAt != null) {
      json[r'last_message_at'] = this.lastMessageAt!.toUtc().toIso8601String();
    } else {
      json[r'last_message_at'] = null;
    }
    if (this.messageCount != null) {
      json[r'message_count'] = this.messageCount;
    } else {
      json[r'message_count'] = null;
    }
    if (this.isActive != null) {
      json[r'is_active'] = this.isActive;
    } else {
      json[r'is_active'] = null;
    }
      json[r'metadata'] = this.metadata;
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

  /// Returns a new [Conversation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Conversation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Conversation[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Conversation[id]" has a null value in JSON.');
        assert(json.containsKey(r'user_id'), 'Required key "Conversation[user_id]" is missing from JSON.');
        assert(json[r'user_id'] != null, 'Required key "Conversation[user_id]" has a null value in JSON.');
        assert(json.containsKey(r'title'), 'Required key "Conversation[title]" is missing from JSON.');
        assert(json[r'title'] != null, 'Required key "Conversation[title]" has a null value in JSON.');
        return true;
      }());

      return Conversation(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'user_id')!,
        title: mapValueOfType<String>(json, r'title')!,
        context: mapValueOfType<String>(json, r'context'),
        cwd: mapValueOfType<String>(json, r'cwd'),
        sessionId: mapValueOfType<String>(json, r'session_id'),
        pinned: mapValueOfType<bool>(json, r'pinned'),
        lastMessageAt: mapDateTime(json, r'last_message_at', r''),
        messageCount: mapValueOfType<int>(json, r'message_count'),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        createdAt: mapDateTime(json, r'created_at', r''),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<Conversation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Conversation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Conversation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Conversation> mapFromJson(dynamic json) {
    final map = <String, Conversation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Conversation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Conversation-objects as value to a dart map
  static Map<String, List<Conversation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Conversation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Conversation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'user_id',
    'title',
  };
}

