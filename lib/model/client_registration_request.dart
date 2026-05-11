//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ClientRegistrationRequest {
  /// Returns a new [ClientRegistrationRequest] instance.
  ClientRegistrationRequest({
    required this.clientName,
    this.redirectUris = const [],
    this.grantTypes = const [],
    this.responseTypes = const [],
    this.scope,
    this.tokenEndpointAuthMethod = const ClientRegistrationRequestTokenEndpointAuthMethodEnum._('none'),
    this.clientUri,
    this.logoUri,
    this.policyUri,
    this.tosUri,
  });

  String clientName;

  List<String> redirectUris;

  List<String> grantTypes;

  List<String> responseTypes;

  /// Space-separated scope list. Defaults to `read:*`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  ClientRegistrationRequestTokenEndpointAuthMethodEnum tokenEndpointAuthMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logoUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? policyUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tosUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClientRegistrationRequest &&
    other.clientName == clientName &&
    _deepEquality.equals(other.redirectUris, redirectUris) &&
    _deepEquality.equals(other.grantTypes, grantTypes) &&
    _deepEquality.equals(other.responseTypes, responseTypes) &&
    other.scope == scope &&
    other.tokenEndpointAuthMethod == tokenEndpointAuthMethod &&
    other.clientUri == clientUri &&
    other.logoUri == logoUri &&
    other.policyUri == policyUri &&
    other.tosUri == tosUri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clientName.hashCode) +
    (redirectUris.hashCode) +
    (grantTypes.hashCode) +
    (responseTypes.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (tokenEndpointAuthMethod.hashCode) +
    (clientUri == null ? 0 : clientUri!.hashCode) +
    (logoUri == null ? 0 : logoUri!.hashCode) +
    (policyUri == null ? 0 : policyUri!.hashCode) +
    (tosUri == null ? 0 : tosUri!.hashCode);

  @override
  String toString() => 'ClientRegistrationRequest[clientName=$clientName, redirectUris=$redirectUris, grantTypes=$grantTypes, responseTypes=$responseTypes, scope=$scope, tokenEndpointAuthMethod=$tokenEndpointAuthMethod, clientUri=$clientUri, logoUri=$logoUri, policyUri=$policyUri, tosUri=$tosUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'client_name'] = this.clientName;
      json[r'redirect_uris'] = this.redirectUris;
      json[r'grant_types'] = this.grantTypes;
      json[r'response_types'] = this.responseTypes;
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
      json[r'token_endpoint_auth_method'] = this.tokenEndpointAuthMethod;
    if (this.clientUri != null) {
      json[r'client_uri'] = this.clientUri;
    } else {
      json[r'client_uri'] = null;
    }
    if (this.logoUri != null) {
      json[r'logo_uri'] = this.logoUri;
    } else {
      json[r'logo_uri'] = null;
    }
    if (this.policyUri != null) {
      json[r'policy_uri'] = this.policyUri;
    } else {
      json[r'policy_uri'] = null;
    }
    if (this.tosUri != null) {
      json[r'tos_uri'] = this.tosUri;
    } else {
      json[r'tos_uri'] = null;
    }
    return json;
  }

  /// Returns a new [ClientRegistrationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClientRegistrationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'client_name'), 'Required key "ClientRegistrationRequest[client_name]" is missing from JSON.');
        assert(json[r'client_name'] != null, 'Required key "ClientRegistrationRequest[client_name]" has a null value in JSON.');
        assert(json.containsKey(r'redirect_uris'), 'Required key "ClientRegistrationRequest[redirect_uris]" is missing from JSON.');
        assert(json[r'redirect_uris'] != null, 'Required key "ClientRegistrationRequest[redirect_uris]" has a null value in JSON.');
        return true;
      }());

      return ClientRegistrationRequest(
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
        tokenEndpointAuthMethod: ClientRegistrationRequestTokenEndpointAuthMethodEnum.fromJson(json[r'token_endpoint_auth_method']) ?? const ClientRegistrationRequestTokenEndpointAuthMethodEnum._('none'),
        clientUri: mapValueOfType<String>(json, r'client_uri'),
        logoUri: mapValueOfType<String>(json, r'logo_uri'),
        policyUri: mapValueOfType<String>(json, r'policy_uri'),
        tosUri: mapValueOfType<String>(json, r'tos_uri'),
      );
    }
    return null;
  }

  static List<ClientRegistrationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClientRegistrationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClientRegistrationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClientRegistrationRequest> mapFromJson(dynamic json) {
    final map = <String, ClientRegistrationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClientRegistrationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClientRegistrationRequest-objects as value to a dart map
  static Map<String, List<ClientRegistrationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClientRegistrationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClientRegistrationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'client_name',
    'redirect_uris',
  };
}


class ClientRegistrationRequestTokenEndpointAuthMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const ClientRegistrationRequestTokenEndpointAuthMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = ClientRegistrationRequestTokenEndpointAuthMethodEnum._(r'none');
  static const clientSecretBasic = ClientRegistrationRequestTokenEndpointAuthMethodEnum._(r'client_secret_basic');
  static const clientSecretPost = ClientRegistrationRequestTokenEndpointAuthMethodEnum._(r'client_secret_post');

  /// List of all possible values in this [enum][ClientRegistrationRequestTokenEndpointAuthMethodEnum].
  static const values = <ClientRegistrationRequestTokenEndpointAuthMethodEnum>[
    none,
    clientSecretBasic,
    clientSecretPost,
  ];

  static ClientRegistrationRequestTokenEndpointAuthMethodEnum? fromJson(dynamic value) => ClientRegistrationRequestTokenEndpointAuthMethodEnumTypeTransformer().decode(value);

  static List<ClientRegistrationRequestTokenEndpointAuthMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClientRegistrationRequestTokenEndpointAuthMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClientRegistrationRequestTokenEndpointAuthMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ClientRegistrationRequestTokenEndpointAuthMethodEnum] to String,
/// and [decode] dynamic data back to [ClientRegistrationRequestTokenEndpointAuthMethodEnum].
class ClientRegistrationRequestTokenEndpointAuthMethodEnumTypeTransformer {
  factory ClientRegistrationRequestTokenEndpointAuthMethodEnumTypeTransformer() => _instance ??= const ClientRegistrationRequestTokenEndpointAuthMethodEnumTypeTransformer._();

  const ClientRegistrationRequestTokenEndpointAuthMethodEnumTypeTransformer._();

  String encode(ClientRegistrationRequestTokenEndpointAuthMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ClientRegistrationRequestTokenEndpointAuthMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ClientRegistrationRequestTokenEndpointAuthMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'none': return ClientRegistrationRequestTokenEndpointAuthMethodEnum.none;
        case r'client_secret_basic': return ClientRegistrationRequestTokenEndpointAuthMethodEnum.clientSecretBasic;
        case r'client_secret_post': return ClientRegistrationRequestTokenEndpointAuthMethodEnum.clientSecretPost;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ClientRegistrationRequestTokenEndpointAuthMethodEnumTypeTransformer] instance.
  static ClientRegistrationRequestTokenEndpointAuthMethodEnumTypeTransformer? _instance;
}


