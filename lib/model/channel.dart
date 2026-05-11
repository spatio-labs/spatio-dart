//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Channel {
  /// Returns a new [Channel] instance.
  Channel({
    required this.id,
    this.provider,
    this.accountId,
    required this.name,
    required this.type,
    this.description,
    this.topic,
    required this.isMember,
    required this.isArchived,
    this.memberCount,
    this.createdAt,
  });

  String id;

  /// Registered provider id (e.g. `slack`, `native-chat`). 
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

  /// Provider-specific. Common canonicals: `channel` and `private` (group channels), `im` (1:1 DM), `mpim` (group DM). 
  String type;

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
  String? topic;

  bool isMember;

  bool isArchived;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memberCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Channel &&
    other.id == id &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.topic == topic &&
    other.isMember == isMember &&
    other.isArchived == isArchived &&
    other.memberCount == memberCount &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (name.hashCode) +
    (type.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (topic == null ? 0 : topic!.hashCode) +
    (isMember.hashCode) +
    (isArchived.hashCode) +
    (memberCount == null ? 0 : memberCount!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'Channel[id=$id, provider=$provider, accountId=$accountId, name=$name, type=$type, description=$description, topic=$topic, isMember=$isMember, isArchived=$isArchived, memberCount=$memberCount, createdAt=$createdAt]';

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
      json[r'type'] = this.type;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.topic != null) {
      json[r'topic'] = this.topic;
    } else {
      json[r'topic'] = null;
    }
      json[r'isMember'] = this.isMember;
      json[r'isArchived'] = this.isArchived;
    if (this.memberCount != null) {
      json[r'memberCount'] = this.memberCount;
    } else {
      json[r'memberCount'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    return json;
  }

  /// Returns a new [Channel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Channel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Channel[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Channel[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "Channel[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "Channel[name]" has a null value in JSON.');
        assert(json.containsKey(r'type'), 'Required key "Channel[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "Channel[type]" has a null value in JSON.');
        assert(json.containsKey(r'isMember'), 'Required key "Channel[isMember]" is missing from JSON.');
        assert(json[r'isMember'] != null, 'Required key "Channel[isMember]" has a null value in JSON.');
        assert(json.containsKey(r'isArchived'), 'Required key "Channel[isArchived]" is missing from JSON.');
        assert(json[r'isArchived'] != null, 'Required key "Channel[isArchived]" has a null value in JSON.');
        return true;
      }());

      return Channel(
        id: mapValueOfType<String>(json, r'id')!,
        provider: mapValueOfType<String>(json, r'provider'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        name: mapValueOfType<String>(json, r'name')!,
        type: mapValueOfType<String>(json, r'type')!,
        description: mapValueOfType<String>(json, r'description'),
        topic: mapValueOfType<String>(json, r'topic'),
        isMember: mapValueOfType<bool>(json, r'isMember')!,
        isArchived: mapValueOfType<bool>(json, r'isArchived')!,
        memberCount: mapValueOfType<int>(json, r'memberCount'),
        createdAt: mapDateTime(json, r'createdAt', r''),
      );
    }
    return null;
  }

  static List<Channel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Channel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Channel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Channel> mapFromJson(dynamic json) {
    final map = <String, Channel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Channel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Channel-objects as value to a dart map
  static Map<String, List<Channel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Channel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Channel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'type',
    'isMember',
    'isArchived',
  };
}

