//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class DiscoveryDocument {
  /// Returns a new [DiscoveryDocument] instance.
  DiscoveryDocument({
    required this.issuer,
    required this.authorizationEndpoint,
    required this.tokenEndpoint,
    this.registrationEndpoint,
    this.introspectionEndpoint,
    this.revocationEndpoint,
    this.userinfoEndpoint,
    required this.jwksUri,
    this.responseTypesSupported = const [],
    this.grantTypesSupported = const [],
    this.tokenEndpointAuthMethodsSupported = const [],
    this.codeChallengeMethodsSupported = const [],
    this.scopesSupported = const [],
    this.subjectTypesSupported = const [],
    this.idTokenSigningAlgValuesSupported = const [],
    this.promptValuesSupported = const [],
    this.claimsSupported = const [],
    this.serviceDocumentation,
  });

  String issuer;

  String authorizationEndpoint;

  String tokenEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registrationEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? introspectionEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? revocationEndpoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userinfoEndpoint;

  String jwksUri;

  List<String> responseTypesSupported;

  List<String> grantTypesSupported;

  List<String> tokenEndpointAuthMethodsSupported;

  List<String> codeChallengeMethodsSupported;

  List<String> scopesSupported;

  List<String> subjectTypesSupported;

  List<String> idTokenSigningAlgValuesSupported;

  List<String> promptValuesSupported;

  List<String> claimsSupported;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceDocumentation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DiscoveryDocument &&
    other.issuer == issuer &&
    other.authorizationEndpoint == authorizationEndpoint &&
    other.tokenEndpoint == tokenEndpoint &&
    other.registrationEndpoint == registrationEndpoint &&
    other.introspectionEndpoint == introspectionEndpoint &&
    other.revocationEndpoint == revocationEndpoint &&
    other.userinfoEndpoint == userinfoEndpoint &&
    other.jwksUri == jwksUri &&
    _deepEquality.equals(other.responseTypesSupported, responseTypesSupported) &&
    _deepEquality.equals(other.grantTypesSupported, grantTypesSupported) &&
    _deepEquality.equals(other.tokenEndpointAuthMethodsSupported, tokenEndpointAuthMethodsSupported) &&
    _deepEquality.equals(other.codeChallengeMethodsSupported, codeChallengeMethodsSupported) &&
    _deepEquality.equals(other.scopesSupported, scopesSupported) &&
    _deepEquality.equals(other.subjectTypesSupported, subjectTypesSupported) &&
    _deepEquality.equals(other.idTokenSigningAlgValuesSupported, idTokenSigningAlgValuesSupported) &&
    _deepEquality.equals(other.promptValuesSupported, promptValuesSupported) &&
    _deepEquality.equals(other.claimsSupported, claimsSupported) &&
    other.serviceDocumentation == serviceDocumentation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (issuer.hashCode) +
    (authorizationEndpoint.hashCode) +
    (tokenEndpoint.hashCode) +
    (registrationEndpoint == null ? 0 : registrationEndpoint!.hashCode) +
    (introspectionEndpoint == null ? 0 : introspectionEndpoint!.hashCode) +
    (revocationEndpoint == null ? 0 : revocationEndpoint!.hashCode) +
    (userinfoEndpoint == null ? 0 : userinfoEndpoint!.hashCode) +
    (jwksUri.hashCode) +
    (responseTypesSupported.hashCode) +
    (grantTypesSupported.hashCode) +
    (tokenEndpointAuthMethodsSupported.hashCode) +
    (codeChallengeMethodsSupported.hashCode) +
    (scopesSupported.hashCode) +
    (subjectTypesSupported.hashCode) +
    (idTokenSigningAlgValuesSupported.hashCode) +
    (promptValuesSupported.hashCode) +
    (claimsSupported.hashCode) +
    (serviceDocumentation == null ? 0 : serviceDocumentation!.hashCode);

  @override
  String toString() => 'DiscoveryDocument[issuer=$issuer, authorizationEndpoint=$authorizationEndpoint, tokenEndpoint=$tokenEndpoint, registrationEndpoint=$registrationEndpoint, introspectionEndpoint=$introspectionEndpoint, revocationEndpoint=$revocationEndpoint, userinfoEndpoint=$userinfoEndpoint, jwksUri=$jwksUri, responseTypesSupported=$responseTypesSupported, grantTypesSupported=$grantTypesSupported, tokenEndpointAuthMethodsSupported=$tokenEndpointAuthMethodsSupported, codeChallengeMethodsSupported=$codeChallengeMethodsSupported, scopesSupported=$scopesSupported, subjectTypesSupported=$subjectTypesSupported, idTokenSigningAlgValuesSupported=$idTokenSigningAlgValuesSupported, promptValuesSupported=$promptValuesSupported, claimsSupported=$claimsSupported, serviceDocumentation=$serviceDocumentation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'issuer'] = this.issuer;
      json[r'authorization_endpoint'] = this.authorizationEndpoint;
      json[r'token_endpoint'] = this.tokenEndpoint;
    if (this.registrationEndpoint != null) {
      json[r'registration_endpoint'] = this.registrationEndpoint;
    } else {
      json[r'registration_endpoint'] = null;
    }
    if (this.introspectionEndpoint != null) {
      json[r'introspection_endpoint'] = this.introspectionEndpoint;
    } else {
      json[r'introspection_endpoint'] = null;
    }
    if (this.revocationEndpoint != null) {
      json[r'revocation_endpoint'] = this.revocationEndpoint;
    } else {
      json[r'revocation_endpoint'] = null;
    }
    if (this.userinfoEndpoint != null) {
      json[r'userinfo_endpoint'] = this.userinfoEndpoint;
    } else {
      json[r'userinfo_endpoint'] = null;
    }
      json[r'jwks_uri'] = this.jwksUri;
      json[r'response_types_supported'] = this.responseTypesSupported;
      json[r'grant_types_supported'] = this.grantTypesSupported;
      json[r'token_endpoint_auth_methods_supported'] = this.tokenEndpointAuthMethodsSupported;
      json[r'code_challenge_methods_supported'] = this.codeChallengeMethodsSupported;
      json[r'scopes_supported'] = this.scopesSupported;
      json[r'subject_types_supported'] = this.subjectTypesSupported;
      json[r'id_token_signing_alg_values_supported'] = this.idTokenSigningAlgValuesSupported;
      json[r'prompt_values_supported'] = this.promptValuesSupported;
      json[r'claims_supported'] = this.claimsSupported;
    if (this.serviceDocumentation != null) {
      json[r'service_documentation'] = this.serviceDocumentation;
    } else {
      json[r'service_documentation'] = null;
    }
    return json;
  }

  /// Returns a new [DiscoveryDocument] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DiscoveryDocument? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'issuer'), 'Required key "DiscoveryDocument[issuer]" is missing from JSON.');
        assert(json[r'issuer'] != null, 'Required key "DiscoveryDocument[issuer]" has a null value in JSON.');
        assert(json.containsKey(r'authorization_endpoint'), 'Required key "DiscoveryDocument[authorization_endpoint]" is missing from JSON.');
        assert(json[r'authorization_endpoint'] != null, 'Required key "DiscoveryDocument[authorization_endpoint]" has a null value in JSON.');
        assert(json.containsKey(r'token_endpoint'), 'Required key "DiscoveryDocument[token_endpoint]" is missing from JSON.');
        assert(json[r'token_endpoint'] != null, 'Required key "DiscoveryDocument[token_endpoint]" has a null value in JSON.');
        assert(json.containsKey(r'jwks_uri'), 'Required key "DiscoveryDocument[jwks_uri]" is missing from JSON.');
        assert(json[r'jwks_uri'] != null, 'Required key "DiscoveryDocument[jwks_uri]" has a null value in JSON.');
        assert(json.containsKey(r'scopes_supported'), 'Required key "DiscoveryDocument[scopes_supported]" is missing from JSON.');
        assert(json[r'scopes_supported'] != null, 'Required key "DiscoveryDocument[scopes_supported]" has a null value in JSON.');
        return true;
      }());

      return DiscoveryDocument(
        issuer: mapValueOfType<String>(json, r'issuer')!,
        authorizationEndpoint: mapValueOfType<String>(json, r'authorization_endpoint')!,
        tokenEndpoint: mapValueOfType<String>(json, r'token_endpoint')!,
        registrationEndpoint: mapValueOfType<String>(json, r'registration_endpoint'),
        introspectionEndpoint: mapValueOfType<String>(json, r'introspection_endpoint'),
        revocationEndpoint: mapValueOfType<String>(json, r'revocation_endpoint'),
        userinfoEndpoint: mapValueOfType<String>(json, r'userinfo_endpoint'),
        jwksUri: mapValueOfType<String>(json, r'jwks_uri')!,
        responseTypesSupported: json[r'response_types_supported'] is Iterable
            ? (json[r'response_types_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        grantTypesSupported: json[r'grant_types_supported'] is Iterable
            ? (json[r'grant_types_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tokenEndpointAuthMethodsSupported: json[r'token_endpoint_auth_methods_supported'] is Iterable
            ? (json[r'token_endpoint_auth_methods_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        codeChallengeMethodsSupported: json[r'code_challenge_methods_supported'] is Iterable
            ? (json[r'code_challenge_methods_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        scopesSupported: json[r'scopes_supported'] is Iterable
            ? (json[r'scopes_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        subjectTypesSupported: json[r'subject_types_supported'] is Iterable
            ? (json[r'subject_types_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        idTokenSigningAlgValuesSupported: json[r'id_token_signing_alg_values_supported'] is Iterable
            ? (json[r'id_token_signing_alg_values_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        promptValuesSupported: json[r'prompt_values_supported'] is Iterable
            ? (json[r'prompt_values_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        claimsSupported: json[r'claims_supported'] is Iterable
            ? (json[r'claims_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        serviceDocumentation: mapValueOfType<String>(json, r'service_documentation'),
      );
    }
    return null;
  }

  static List<DiscoveryDocument> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DiscoveryDocument>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DiscoveryDocument.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DiscoveryDocument> mapFromJson(dynamic json) {
    final map = <String, DiscoveryDocument>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DiscoveryDocument.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DiscoveryDocument-objects as value to a dart map
  static Map<String, List<DiscoveryDocument>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DiscoveryDocument>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DiscoveryDocument.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'issuer',
    'authorization_endpoint',
    'token_endpoint',
    'jwks_uri',
    'scopes_supported',
  };
}

