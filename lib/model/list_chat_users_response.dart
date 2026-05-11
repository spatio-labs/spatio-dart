//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ListChatUsersResponse {
  /// Returns a new [ListChatUsersResponse] instance.
  ListChatUsersResponse({
    this.users = const [],
    required this.total,
    this.nextCursor,
    required this.provider,
  });

  List<ChatUser>? users;

  int total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextCursor;

  String provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListChatUsersResponse &&
    _deepEquality.equals(other.users, users) &&
    other.total == total &&
    other.nextCursor == nextCursor &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (users == null ? 0 : users!.hashCode) +
    (total.hashCode) +
    (nextCursor == null ? 0 : nextCursor!.hashCode) +
    (provider.hashCode);

  @override
  String toString() => 'ListChatUsersResponse[users=$users, total=$total, nextCursor=$nextCursor, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.users != null) {
      json[r'users'] = this.users;
    } else {
      json[r'users'] = null;
    }
      json[r'total'] = this.total;
    if (this.nextCursor != null) {
      json[r'nextCursor'] = this.nextCursor;
    } else {
      json[r'nextCursor'] = null;
    }
      json[r'provider'] = this.provider;
    return json;
  }

  /// Returns a new [ListChatUsersResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListChatUsersResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'total'), 'Required key "ListChatUsersResponse[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "ListChatUsersResponse[total]" has a null value in JSON.');
        assert(json.containsKey(r'provider'), 'Required key "ListChatUsersResponse[provider]" is missing from JSON.');
        assert(json[r'provider'] != null, 'Required key "ListChatUsersResponse[provider]" has a null value in JSON.');
        return true;
      }());

      return ListChatUsersResponse(
        users: ChatUser.listFromJson(json[r'users']),
        total: mapValueOfType<int>(json, r'total')!,
        nextCursor: mapValueOfType<String>(json, r'nextCursor'),
        provider: mapValueOfType<String>(json, r'provider')!,
      );
    }
    return null;
  }

  static List<ListChatUsersResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListChatUsersResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListChatUsersResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListChatUsersResponse> mapFromJson(dynamic json) {
    final map = <String, ListChatUsersResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListChatUsersResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListChatUsersResponse-objects as value to a dart map
  static Map<String, List<ListChatUsersResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListChatUsersResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListChatUsersResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total',
    'provider',
  };
}

