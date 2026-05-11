//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class OAuthError {
  /// Returns a new [OAuthError] instance.
  OAuthError({
    required this.error,
    this.errorDescription,
  });

  OAuthErrorErrorEnum error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorDescription;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OAuthError &&
    other.error == error &&
    other.errorDescription == errorDescription;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error.hashCode) +
    (errorDescription == null ? 0 : errorDescription!.hashCode);

  @override
  String toString() => 'OAuthError[error=$error, errorDescription=$errorDescription]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'error'] = this.error;
    if (this.errorDescription != null) {
      json[r'error_description'] = this.errorDescription;
    } else {
      json[r'error_description'] = null;
    }
    return json;
  }

  /// Returns a new [OAuthError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OAuthError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'error'), 'Required key "OAuthError[error]" is missing from JSON.');
        assert(json[r'error'] != null, 'Required key "OAuthError[error]" has a null value in JSON.');
        return true;
      }());

      return OAuthError(
        error: OAuthErrorErrorEnum.fromJson(json[r'error'])!,
        errorDescription: mapValueOfType<String>(json, r'error_description'),
      );
    }
    return null;
  }

  static List<OAuthError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OAuthError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OAuthError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OAuthError> mapFromJson(dynamic json) {
    final map = <String, OAuthError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuthError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OAuthError-objects as value to a dart map
  static Map<String, List<OAuthError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OAuthError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OAuthError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'error',
  };
}


class OAuthErrorErrorEnum {
  /// Instantiate a new enum with the provided [value].
  const OAuthErrorErrorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidRequest = OAuthErrorErrorEnum._(r'invalid_request');
  static const invalidClient = OAuthErrorErrorEnum._(r'invalid_client');
  static const invalidGrant = OAuthErrorErrorEnum._(r'invalid_grant');
  static const unauthorizedClient = OAuthErrorErrorEnum._(r'unauthorized_client');
  static const unsupportedGrantType = OAuthErrorErrorEnum._(r'unsupported_grant_type');
  static const unsupportedResponseType = OAuthErrorErrorEnum._(r'unsupported_response_type');
  static const invalidScope = OAuthErrorErrorEnum._(r'invalid_scope');
  static const accessDenied = OAuthErrorErrorEnum._(r'access_denied');
  static const serverError = OAuthErrorErrorEnum._(r'server_error');
  static const temporarilyUnavailable = OAuthErrorErrorEnum._(r'temporarily_unavailable');
  static const invalidToken = OAuthErrorErrorEnum._(r'invalid_token');
  static const invalidRedirectUri = OAuthErrorErrorEnum._(r'invalid_redirect_uri');
  static const invalidClientMetadata = OAuthErrorErrorEnum._(r'invalid_client_metadata');
  static const loginRequired = OAuthErrorErrorEnum._(r'login_required');
  static const consentRequired = OAuthErrorErrorEnum._(r'consent_required');
  static const interactionRequired = OAuthErrorErrorEnum._(r'interaction_required');
  static const rateLimitExceeded = OAuthErrorErrorEnum._(r'rate_limit_exceeded');

  /// List of all possible values in this [enum][OAuthErrorErrorEnum].
  static const values = <OAuthErrorErrorEnum>[
    invalidRequest,
    invalidClient,
    invalidGrant,
    unauthorizedClient,
    unsupportedGrantType,
    unsupportedResponseType,
    invalidScope,
    accessDenied,
    serverError,
    temporarilyUnavailable,
    invalidToken,
    invalidRedirectUri,
    invalidClientMetadata,
    loginRequired,
    consentRequired,
    interactionRequired,
    rateLimitExceeded,
  ];

  static OAuthErrorErrorEnum? fromJson(dynamic value) => OAuthErrorErrorEnumTypeTransformer().decode(value);

  static List<OAuthErrorErrorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OAuthErrorErrorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OAuthErrorErrorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OAuthErrorErrorEnum] to String,
/// and [decode] dynamic data back to [OAuthErrorErrorEnum].
class OAuthErrorErrorEnumTypeTransformer {
  factory OAuthErrorErrorEnumTypeTransformer() => _instance ??= const OAuthErrorErrorEnumTypeTransformer._();

  const OAuthErrorErrorEnumTypeTransformer._();

  String encode(OAuthErrorErrorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OAuthErrorErrorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OAuthErrorErrorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'invalid_request': return OAuthErrorErrorEnum.invalidRequest;
        case r'invalid_client': return OAuthErrorErrorEnum.invalidClient;
        case r'invalid_grant': return OAuthErrorErrorEnum.invalidGrant;
        case r'unauthorized_client': return OAuthErrorErrorEnum.unauthorizedClient;
        case r'unsupported_grant_type': return OAuthErrorErrorEnum.unsupportedGrantType;
        case r'unsupported_response_type': return OAuthErrorErrorEnum.unsupportedResponseType;
        case r'invalid_scope': return OAuthErrorErrorEnum.invalidScope;
        case r'access_denied': return OAuthErrorErrorEnum.accessDenied;
        case r'server_error': return OAuthErrorErrorEnum.serverError;
        case r'temporarily_unavailable': return OAuthErrorErrorEnum.temporarilyUnavailable;
        case r'invalid_token': return OAuthErrorErrorEnum.invalidToken;
        case r'invalid_redirect_uri': return OAuthErrorErrorEnum.invalidRedirectUri;
        case r'invalid_client_metadata': return OAuthErrorErrorEnum.invalidClientMetadata;
        case r'login_required': return OAuthErrorErrorEnum.loginRequired;
        case r'consent_required': return OAuthErrorErrorEnum.consentRequired;
        case r'interaction_required': return OAuthErrorErrorEnum.interactionRequired;
        case r'rate_limit_exceeded': return OAuthErrorErrorEnum.rateLimitExceeded;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OAuthErrorErrorEnumTypeTransformer] instance.
  static OAuthErrorErrorEnumTypeTransformer? _instance;
}


