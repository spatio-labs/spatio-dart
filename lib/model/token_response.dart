//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class TokenResponse {
  /// Returns a new [TokenResponse] instance.
  TokenResponse({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    this.refreshToken,
    this.scope,
    this.idToken,
  });

  /// Opaque bearer token. Format `tok_<32 random base64url>`.
  String accessToken;

  String tokenType;

  /// Seconds until access_token expires.
  int expiresIn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refreshToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// Only present when `openid` scope was granted. RS256-signed JWT — verify against the JWKS.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? idToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenResponse &&
    other.accessToken == accessToken &&
    other.tokenType == tokenType &&
    other.expiresIn == expiresIn &&
    other.refreshToken == refreshToken &&
    other.scope == scope &&
    other.idToken == idToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessToken.hashCode) +
    (tokenType.hashCode) +
    (expiresIn.hashCode) +
    (refreshToken == null ? 0 : refreshToken!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (idToken == null ? 0 : idToken!.hashCode);

  @override
  String toString() => 'TokenResponse[accessToken=$accessToken, tokenType=$tokenType, expiresIn=$expiresIn, refreshToken=$refreshToken, scope=$scope, idToken=$idToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'access_token'] = this.accessToken;
      json[r'token_type'] = this.tokenType;
      json[r'expires_in'] = this.expiresIn;
    if (this.refreshToken != null) {
      json[r'refresh_token'] = this.refreshToken;
    } else {
      json[r'refresh_token'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.idToken != null) {
      json[r'id_token'] = this.idToken;
    } else {
      json[r'id_token'] = null;
    }
    return json;
  }

  /// Returns a new [TokenResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'access_token'), 'Required key "TokenResponse[access_token]" is missing from JSON.');
        assert(json[r'access_token'] != null, 'Required key "TokenResponse[access_token]" has a null value in JSON.');
        assert(json.containsKey(r'token_type'), 'Required key "TokenResponse[token_type]" is missing from JSON.');
        assert(json[r'token_type'] != null, 'Required key "TokenResponse[token_type]" has a null value in JSON.');
        assert(json.containsKey(r'expires_in'), 'Required key "TokenResponse[expires_in]" is missing from JSON.');
        assert(json[r'expires_in'] != null, 'Required key "TokenResponse[expires_in]" has a null value in JSON.');
        return true;
      }());

      return TokenResponse(
        accessToken: mapValueOfType<String>(json, r'access_token')!,
        tokenType: mapValueOfType<String>(json, r'token_type')!,
        expiresIn: mapValueOfType<int>(json, r'expires_in')!,
        refreshToken: mapValueOfType<String>(json, r'refresh_token'),
        scope: mapValueOfType<String>(json, r'scope'),
        idToken: mapValueOfType<String>(json, r'id_token'),
      );
    }
    return null;
  }

  static List<TokenResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenResponse> mapFromJson(dynamic json) {
    final map = <String, TokenResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenResponse-objects as value to a dart map
  static Map<String, List<TokenResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'access_token',
    'token_type',
    'expires_in',
  };
}

