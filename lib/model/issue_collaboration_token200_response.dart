//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class IssueCollaborationToken200Response {
  /// Returns a new [IssueCollaborationToken200Response] instance.
  IssueCollaborationToken200Response({
    required this.token,
    required this.wsUrl,
    this.room,
    required this.expiresAt,
    required this.expiresIn,
  });

  /// HS256 JWT, signed with the shared platform/worker secret.
  String token;

  /// Base WebSocket URL of the Yjs worker.
  String wsUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? room;

  DateTime expiresAt;

  /// Seconds until the token expires.
  int expiresIn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssueCollaborationToken200Response &&
    other.token == token &&
    other.wsUrl == wsUrl &&
    other.room == room &&
    other.expiresAt == expiresAt &&
    other.expiresIn == expiresIn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token.hashCode) +
    (wsUrl.hashCode) +
    (room == null ? 0 : room!.hashCode) +
    (expiresAt.hashCode) +
    (expiresIn.hashCode);

  @override
  String toString() => 'IssueCollaborationToken200Response[token=$token, wsUrl=$wsUrl, room=$room, expiresAt=$expiresAt, expiresIn=$expiresIn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = this.token;
      json[r'ws_url'] = this.wsUrl;
    if (this.room != null) {
      json[r'room'] = this.room;
    } else {
      json[r'room'] = null;
    }
      json[r'expires_at'] = this.expiresAt.toUtc().toIso8601String();
      json[r'expires_in'] = this.expiresIn;
    return json;
  }

  /// Returns a new [IssueCollaborationToken200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssueCollaborationToken200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'token'), 'Required key "IssueCollaborationToken200Response[token]" is missing from JSON.');
        assert(json[r'token'] != null, 'Required key "IssueCollaborationToken200Response[token]" has a null value in JSON.');
        assert(json.containsKey(r'ws_url'), 'Required key "IssueCollaborationToken200Response[ws_url]" is missing from JSON.');
        assert(json[r'ws_url'] != null, 'Required key "IssueCollaborationToken200Response[ws_url]" has a null value in JSON.');
        assert(json.containsKey(r'expires_at'), 'Required key "IssueCollaborationToken200Response[expires_at]" is missing from JSON.');
        assert(json[r'expires_at'] != null, 'Required key "IssueCollaborationToken200Response[expires_at]" has a null value in JSON.');
        assert(json.containsKey(r'expires_in'), 'Required key "IssueCollaborationToken200Response[expires_in]" is missing from JSON.');
        assert(json[r'expires_in'] != null, 'Required key "IssueCollaborationToken200Response[expires_in]" has a null value in JSON.');
        return true;
      }());

      return IssueCollaborationToken200Response(
        token: mapValueOfType<String>(json, r'token')!,
        wsUrl: mapValueOfType<String>(json, r'ws_url')!,
        room: mapValueOfType<String>(json, r'room'),
        expiresAt: mapDateTime(json, r'expires_at', r'')!,
        expiresIn: mapValueOfType<int>(json, r'expires_in')!,
      );
    }
    return null;
  }

  static List<IssueCollaborationToken200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssueCollaborationToken200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssueCollaborationToken200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssueCollaborationToken200Response> mapFromJson(dynamic json) {
    final map = <String, IssueCollaborationToken200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssueCollaborationToken200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssueCollaborationToken200Response-objects as value to a dart map
  static Map<String, List<IssueCollaborationToken200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssueCollaborationToken200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssueCollaborationToken200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
    'ws_url',
    'expires_at',
    'expires_in',
  };
}

