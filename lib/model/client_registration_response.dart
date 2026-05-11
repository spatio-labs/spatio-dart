//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ClientRegistrationResponse {
  /// Returns a new [ClientRegistrationResponse] instance.
  ClientRegistrationResponse({
    required this.clientId,
    this.clientSecret,
    required this.clientName,
    this.redirectUris = const [],
    this.grantTypes = const [],
    this.responseTypes = const [],
    this.scope,
    this.tokenEndpointAuthMethod,
    required this.registrationAccessToken,
    this.registrationClientUri,
    required this.clientIdIssuedAt,
  });

  String clientId;

  /// Only returned when token_endpoint_auth_method is client_secret_*.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  String clientName;

  List<String> redirectUris;

  List<String> grantTypes;

  List<String> responseTypes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenEndpointAuthMethod;

  String registrationAccessToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registrationClientUri;

  int clientIdIssuedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClientRegistrationResponse &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret &&
    other.clientName == clientName &&
    _deepEquality.equals(other.redirectUris, redirectUris) &&
    _deepEquality.equals(other.grantTypes, grantTypes) &&
    _deepEquality.equals(other.responseTypes, responseTypes) &&
    other.scope == scope &&
    other.tokenEndpointAuthMethod == tokenEndpointAuthMethod &&
    other.registrationAccessToken == registrationAccessToken &&
    other.registrationClientUri == registrationClientUri &&
    other.clientIdIssuedAt == clientIdIssuedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clientId.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (clientName.hashCode) +
    (redirectUris.hashCode) +
    (grantTypes.hashCode) +
    (responseTypes.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (tokenEndpointAuthMethod == null ? 0 : tokenEndpointAuthMethod!.hashCode) +
    (registrationAccessToken.hashCode) +
    (registrationClientUri == null ? 0 : registrationClientUri!.hashCode) +
    (clientIdIssuedAt.hashCode);

  @override
  String toString() => 'ClientRegistrationResponse[clientId=$clientId, clientSecret=$clientSecret, clientName=$clientName, redirectUris=$redirectUris, grantTypes=$grantTypes, responseTypes=$responseTypes, scope=$scope, tokenEndpointAuthMethod=$tokenEndpointAuthMethod, registrationAccessToken=$registrationAccessToken, registrationClientUri=$registrationClientUri, clientIdIssuedAt=$clientIdIssuedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'client_id'] = this.clientId;
    if (this.clientSecret != null) {
      json[r'client_secret'] = this.clientSecret;
    } else {
      json[r'client_secret'] = null;
    }
      json[r'client_name'] = this.clientName;
      json[r'redirect_uris'] = this.redirectUris;
      json[r'grant_types'] = this.grantTypes;
      json[r'response_types'] = this.responseTypes;
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.tokenEndpointAuthMethod != null) {
      json[r'token_endpoint_auth_method'] = this.tokenEndpointAuthMethod;
    } else {
      json[r'token_endpoint_auth_method'] = null;
    }
      json[r'registration_access_token'] = this.registrationAccessToken;
    if (this.registrationClientUri != null) {
      json[r'registration_client_uri'] = this.registrationClientUri;
    } else {
      json[r'registration_client_uri'] = null;
    }
      json[r'client_id_issued_at'] = this.clientIdIssuedAt;
    return json;
  }

  /// Returns a new [ClientRegistrationResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClientRegistrationResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'client_id'), 'Required key "ClientRegistrationResponse[client_id]" is missing from JSON.');
        assert(json[r'client_id'] != null, 'Required key "ClientRegistrationResponse[client_id]" has a null value in JSON.');
        assert(json.containsKey(r'client_name'), 'Required key "ClientRegistrationResponse[client_name]" is missing from JSON.');
        assert(json[r'client_name'] != null, 'Required key "ClientRegistrationResponse[client_name]" has a null value in JSON.');
        assert(json.containsKey(r'redirect_uris'), 'Required key "ClientRegistrationResponse[redirect_uris]" is missing from JSON.');
        assert(json[r'redirect_uris'] != null, 'Required key "ClientRegistrationResponse[redirect_uris]" has a null value in JSON.');
        assert(json.containsKey(r'registration_access_token'), 'Required key "ClientRegistrationResponse[registration_access_token]" is missing from JSON.');
        assert(json[r'registration_access_token'] != null, 'Required key "ClientRegistrationResponse[registration_access_token]" has a null value in JSON.');
        assert(json.containsKey(r'client_id_issued_at'), 'Required key "ClientRegistrationResponse[client_id_issued_at]" is missing from JSON.');
        assert(json[r'client_id_issued_at'] != null, 'Required key "ClientRegistrationResponse[client_id_issued_at]" has a null value in JSON.');
        return true;
      }());

      return ClientRegistrationResponse(
        clientId: mapValueOfType<String>(json, r'client_id')!,
        clientSecret: mapValueOfType<String>(json, r'client_secret'),
        clientName: mapValueOfType<String>(json, r'client_name')!,
        redirectUris: json[r'redirect_uris'] is Iterable
            ? (json[r'redirect_uris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        grantTypes: json[r'grant_types'] is Iterable
            ? (json[r'grant_types'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        responseTypes: json[r'response_types'] is Iterable
            ? (json[r'response_types'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        scope: mapValueOfType<String>(json, r'scope'),
        tokenEndpointAuthMethod: mapValueOfType<String>(json, r'token_endpoint_auth_method'),
        registrationAccessToken: mapValueOfType<String>(json, r'registration_access_token')!,
        registrationClientUri: mapValueOfType<String>(json, r'registration_client_uri'),
        clientIdIssuedAt: mapValueOfType<int>(json, r'client_id_issued_at')!,
      );
    }
    return null;
  }

  static List<ClientRegistrationResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClientRegistrationResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClientRegistrationResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClientRegistrationResponse> mapFromJson(dynamic json) {
    final map = <String, ClientRegistrationResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClientRegistrationResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClientRegistrationResponse-objects as value to a dart map
  static Map<String, List<ClientRegistrationResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClientRegistrationResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClientRegistrationResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'client_id',
    'client_name',
    'redirect_uris',
    'registration_access_token',
    'client_id_issued_at',
  };
}

