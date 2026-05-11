//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ChatMessage {
  /// Returns a new [ChatMessage] instance.
  ChatMessage({
    required this.id,
    this.provider,
    this.accountId,
    required this.channelId,
    required this.userId,
    required this.text,
    this.threadId,
    required this.timestamp,
    this.replyCount,
    this.extra = const {},
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  String channelId;

  String userId;

  String text;

  /// Set on replies and on parent messages once a thread exists. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? threadId;

  DateTime timestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? replyCount;

  /// Provider-specific extras.
  Map<String, Object> extra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatMessage &&
    other.id == id &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.channelId == channelId &&
    other.userId == userId &&
    other.text == text &&
    other.threadId == threadId &&
    other.timestamp == timestamp &&
    other.replyCount == replyCount &&
    _deepEquality.equals(other.extra, extra);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (channelId.hashCode) +
    (userId.hashCode) +
    (text.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (timestamp.hashCode) +
    (replyCount == null ? 0 : replyCount!.hashCode) +
    (extra.hashCode);

  @override
  String toString() => 'ChatMessage[id=$id, provider=$provider, accountId=$accountId, channelId=$channelId, userId=$userId, text=$text, threadId=$threadId, timestamp=$timestamp, replyCount=$replyCount, extra=$extra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
      json[r'channelId'] = this.channelId;
      json[r'userId'] = this.userId;
      json[r'text'] = this.text;
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
    }
      json[r'timestamp'] = this.timestamp.toUtc().toIso8601String();
    if (this.replyCount != null) {
      json[r'replyCount'] = this.replyCount;
    } else {
      json[r'replyCount'] = null;
    }
      json[r'extra'] = this.extra;
    return json;
  }

  /// Returns a new [ChatMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChatMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ChatMessage[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ChatMessage[id]" has a null value in JSON.');
        assert(json.containsKey(r'channelId'), 'Required key "ChatMessage[channelId]" is missing from JSON.');
        assert(json[r'channelId'] != null, 'Required key "ChatMessage[channelId]" has a null value in JSON.');
        assert(json.containsKey(r'userId'), 'Required key "ChatMessage[userId]" is missing from JSON.');
        assert(json[r'userId'] != null, 'Required key "ChatMessage[userId]" has a null value in JSON.');
        assert(json.containsKey(r'text'), 'Required key "ChatMessage[text]" is missing from JSON.');
        assert(json[r'text'] != null, 'Required key "ChatMessage[text]" has a null value in JSON.');
        assert(json.containsKey(r'timestamp'), 'Required key "ChatMessage[timestamp]" is missing from JSON.');
        assert(json[r'timestamp'] != null, 'Required key "ChatMessage[timestamp]" has a null value in JSON.');
        return true;
      }());

      return ChatMessage(
        id: mapValueOfType<String>(json, r'id')!,
        provider: mapValueOfType<String>(json, r'provider'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        channelId: mapValueOfType<String>(json, r'channelId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        text: mapValueOfType<String>(json, r'text')!,
        threadId: mapValueOfType<String>(json, r'threadId'),
        timestamp: mapDateTime(json, r'timestamp', r'')!,
        replyCount: mapValueOfType<int>(json, r'replyCount'),
        extra: mapCastOfType<String, Object>(json, r'extra') ?? const {},
      );
    }
    return null;
  }

  static List<ChatMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChatMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChatMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChatMessage> mapFromJson(dynamic json) {
    final map = <String, ChatMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChatMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChatMessage-objects as value to a dart map
  static Map<String, List<ChatMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChatMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChatMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'channelId',
    'userId',
    'text',
    'timestamp',
  };
}

