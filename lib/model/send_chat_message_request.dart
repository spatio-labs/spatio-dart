//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SendChatMessageRequest {
  /// Returns a new [SendChatMessageRequest] instance.
  SendChatMessageRequest({
    this.accountId,
    required this.channel,
    required this.text,
    this.threadId,
    this.blocks = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  /// Channel or DM id (provider-scoped).
  String channel;

  String text;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? threadId;

  /// Provider-specific rich-message blocks.
  List<Map<String, Object>> blocks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendChatMessageRequest &&
    other.accountId == accountId &&
    other.channel == channel &&
    other.text == text &&
    other.threadId == threadId &&
    _deepEquality.equals(other.blocks, blocks);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (channel.hashCode) +
    (text.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (blocks.hashCode);

  @override
  String toString() => 'SendChatMessageRequest[accountId=$accountId, channel=$channel, text=$text, threadId=$threadId, blocks=$blocks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
      json[r'channel'] = this.channel;
      json[r'text'] = this.text;
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
    }
      json[r'blocks'] = this.blocks;
    return json;
  }

  /// Returns a new [SendChatMessageRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendChatMessageRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'channel'), 'Required key "SendChatMessageRequest[channel]" is missing from JSON.');
        assert(json[r'channel'] != null, 'Required key "SendChatMessageRequest[channel]" has a null value in JSON.');
        assert(json.containsKey(r'text'), 'Required key "SendChatMessageRequest[text]" is missing from JSON.');
        assert(json[r'text'] != null, 'Required key "SendChatMessageRequest[text]" has a null value in JSON.');
        return true;
      }());

      return SendChatMessageRequest(
        accountId: mapValueOfType<String>(json, r'accountId'),
        channel: mapValueOfType<String>(json, r'channel')!,
        text: mapValueOfType<String>(json, r'text')!,
        threadId: mapValueOfType<String>(json, r'threadId'),
        blocks: Map.listFromJson(json[r'blocks']),
      );
    }
    return null;
  }

  static List<SendChatMessageRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendChatMessageRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendChatMessageRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendChatMessageRequest> mapFromJson(dynamic json) {
    final map = <String, SendChatMessageRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendChatMessageRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendChatMessageRequest-objects as value to a dart map
  static Map<String, List<SendChatMessageRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendChatMessageRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendChatMessageRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'channel',
    'text',
  };
}

