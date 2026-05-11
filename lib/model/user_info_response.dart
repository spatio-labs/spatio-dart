//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UserInfoResponse {
  /// Returns a new [UserInfoResponse] instance.
  UserInfoResponse({
    required this.sub,
    this.email,
    this.emailVerified,
    this.name,
    this.givenName,
    this.familyName,
    this.preferredUsername,
    this.picture,
    this.updatedAt,
  });

  /// User identifier (stable for the lifetime of the user).
  String sub;

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
  bool? emailVerified;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? givenName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? familyName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? preferredUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? picture;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserInfoResponse &&
    other.sub == sub &&
    other.email == email &&
    other.emailVerified == emailVerified &&
    other.name == name &&
    other.givenName == givenName &&
    other.familyName == familyName &&
    other.preferredUsername == preferredUsername &&
    other.picture == picture &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sub.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (emailVerified == null ? 0 : emailVerified!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (givenName == null ? 0 : givenName!.hashCode) +
    (familyName == null ? 0 : familyName!.hashCode) +
    (preferredUsername == null ? 0 : preferredUsername!.hashCode) +
    (picture == null ? 0 : picture!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'UserInfoResponse[sub=$sub, email=$email, emailVerified=$emailVerified, name=$name, givenName=$givenName, familyName=$familyName, preferredUsername=$preferredUsername, picture=$picture, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sub'] = this.sub;
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.emailVerified != null) {
      json[r'email_verified'] = this.emailVerified;
    } else {
      json[r'email_verified'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.givenName != null) {
      json[r'given_name'] = this.givenName;
    } else {
      json[r'given_name'] = null;
    }
    if (this.familyName != null) {
      json[r'family_name'] = this.familyName;
    } else {
      json[r'family_name'] = null;
    }
    if (this.preferredUsername != null) {
      json[r'preferred_username'] = this.preferredUsername;
    } else {
      json[r'preferred_username'] = null;
    }
    if (this.picture != null) {
      json[r'picture'] = this.picture;
    } else {
      json[r'picture'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt;
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [UserInfoResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserInfoResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'sub'), 'Required key "UserInfoResponse[sub]" is missing from JSON.');
        assert(json[r'sub'] != null, 'Required key "UserInfoResponse[sub]" has a null value in JSON.');
        return true;
      }());

      return UserInfoResponse(
        sub: mapValueOfType<String>(json, r'sub')!,
        email: mapValueOfType<String>(json, r'email'),
        emailVerified: mapValueOfType<bool>(json, r'email_verified'),
        name: mapValueOfType<String>(json, r'name'),
        givenName: mapValueOfType<String>(json, r'given_name'),
        familyName: mapValueOfType<String>(json, r'family_name'),
        preferredUsername: mapValueOfType<String>(json, r'preferred_username'),
        picture: mapValueOfType<String>(json, r'picture'),
        updatedAt: mapValueOfType<int>(json, r'updated_at'),
      );
    }
    return null;
  }

  static List<UserInfoResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserInfoResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserInfoResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserInfoResponse> mapFromJson(dynamic json) {
    final map = <String, UserInfoResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserInfoResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserInfoResponse-objects as value to a dart map
  static Map<String, List<UserInfoResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserInfoResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserInfoResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sub',
  };
}

