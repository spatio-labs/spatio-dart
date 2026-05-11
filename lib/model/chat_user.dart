//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ChatUser {
  /// Returns a new [ChatUser] instance.
  ChatUser({
    required this.id,
    this.provider,
    this.accountId,
    required this.name,
    this.realName,
    this.email,
    this.avatar,
    required this.isBot,
    required this.isActive,
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

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? realName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatar;

  bool isBot;

  bool isActive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChatUser &&
    other.id == id &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.name == name &&
    other.realName == realName &&
    other.email == email &&
    other.avatar == avatar &&
    other.isBot == isBot &&
    other.isActive == isActive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (name.hashCode) +
    (realName == null ? 0 : realName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (avatar == null ? 0 : avatar!.hashCode) +
    (isBot.hashCode) +
    (isActive.hashCode);

  @override
  String toString() => 'ChatUser[id=$id, provider=$provider, accountId=$accountId, name=$name, realName=$realName, email=$email, avatar=$avatar, isBot=$isBot, isActive=$isActive]';

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
      json[r'name'] = this.name;
    if (this.realName != null) {
      json[r'realName'] = this.realName;
    } else {
      json[r'realName'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.avatar != null) {
      json[r'avatar'] = this.avatar;
    } else {
      json[r'avatar'] = null;
    }
      json[r'isBot'] = this.isBot;
      json[r'isActive'] = this.isActive;
    return json;
  }

  /// Returns a new [ChatUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChatUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ChatUser[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ChatUser[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "ChatUser[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "ChatUser[name]" has a null value in JSON.');
        assert(json.containsKey(r'isBot'), 'Required key "ChatUser[isBot]" is missing from JSON.');
        assert(json[r'isBot'] != null, 'Required key "ChatUser[isBot]" has a null value in JSON.');
        assert(json.containsKey(r'isActive'), 'Required key "ChatUser[isActive]" is missing from JSON.');
        assert(json[r'isActive'] != null, 'Required key "ChatUser[isActive]" has a null value in JSON.');
        return true;
      }());

      return ChatUser(
        id: mapValueOfType<String>(json, r'id')!,
        provider: mapValueOfType<String>(json, r'provider'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        name: mapValueOfType<String>(json, r'name')!,
        realName: mapValueOfType<String>(json, r'realName'),
        email: mapValueOfType<String>(json, r'email'),
        avatar: mapValueOfType<String>(json, r'avatar'),
        isBot: mapValueOfType<bool>(json, r'isBot')!,
        isActive: mapValueOfType<bool>(json, r'isActive')!,
      );
    }
    return null;
  }

  static List<ChatUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChatUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChatUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChatUser> mapFromJson(dynamic json) {
    final map = <String, ChatUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChatUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChatUser-objects as value to a dart map
  static Map<String, List<ChatUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChatUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChatUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'isBot',
    'isActive',
  };
}

