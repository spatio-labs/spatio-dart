//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class GetChatUserResponse {
  /// Returns a new [GetChatUserResponse] instance.
  GetChatUserResponse({
    required this.user,
    required this.provider,
  });

  ChatUser user;

  String provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetChatUserResponse &&
    other.user == user &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (user.hashCode) +
    (provider.hashCode);

  @override
  String toString() => 'GetChatUserResponse[user=$user, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user'] = this.user;
      json[r'provider'] = this.provider;
    return json;
  }

  /// Returns a new [GetChatUserResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetChatUserResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'user'), 'Required key "GetChatUserResponse[user]" is missing from JSON.');
        assert(json[r'user'] != null, 'Required key "GetChatUserResponse[user]" has a null value in JSON.');
        assert(json.containsKey(r'provider'), 'Required key "GetChatUserResponse[provider]" is missing from JSON.');
        assert(json[r'provider'] != null, 'Required key "GetChatUserResponse[provider]" has a null value in JSON.');
        return true;
      }());

      return GetChatUserResponse(
        user: ChatUser.fromJson(json[r'user'])!,
        provider: mapValueOfType<String>(json, r'provider')!,
      );
    }
    return null;
  }

  static List<GetChatUserResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetChatUserResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetChatUserResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetChatUserResponse> mapFromJson(dynamic json) {
    final map = <String, GetChatUserResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetChatUserResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetChatUserResponse-objects as value to a dart map
  static Map<String, List<GetChatUserResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetChatUserResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetChatUserResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'user',
    'provider',
  };
}

