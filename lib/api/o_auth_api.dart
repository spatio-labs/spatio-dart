//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class OAuthApi {
  OAuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// JSON Web Key Set for id_token verification (RFC 7517).
  ///
  /// The set of public keys RPs use to verify Spatio-issued id_tokens. Cached for 5 minutes at the edge. Always includes the currently-active signing key plus any retired keys that may still be in circulation (id_token TTL is 1 hour + slack). 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getJWKSWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/jwks.json';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// JSON Web Key Set for id_token verification (RFC 7517).
  ///
  /// The set of public keys RPs use to verify Spatio-issued id_tokens. Cached for 5 minutes at the edge. Always includes the currently-active signing key plus any retired keys that may still be in circulation (id_token TTL is 1 hour + slack). 
  Future<JWKS?> getJWKS() async {
    final response = await getJWKSWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JWKS',) as JWKS;
    
    }
    return null;
  }

  /// OAuth 2.1 authorization server metadata (RFC 8414).
  ///
  /// Returns the canonical metadata for the Spatio OAuth 2.1 + OpenID Connect server. Third-party RPs use this to auto-discover endpoint URLs, supported scopes, and signing algorithms.  Identical payload to `/.well-known/openid-configuration` — either path is acceptable; OIDC clients prefer the openid-configuration alias. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOAuthDiscoveryWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/oauth-authorization-server';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// OAuth 2.1 authorization server metadata (RFC 8414).
  ///
  /// Returns the canonical metadata for the Spatio OAuth 2.1 + OpenID Connect server. Third-party RPs use this to auto-discover endpoint URLs, supported scopes, and signing algorithms.  Identical payload to `/.well-known/openid-configuration` — either path is acceptable; OIDC clients prefer the openid-configuration alias. 
  Future<DiscoveryDocument?> getOAuthDiscovery() async {
    final response = await getOAuthDiscoveryWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DiscoveryDocument',) as DiscoveryDocument;
    
    }
    return null;
  }

  /// OpenID Connect Discovery 1.0 metadata.
  ///
  /// Alias of `/.well-known/oauth-authorization-server`. Provided so OIDC client libraries (NextAuth, Auth.js, oidc-client-ts, passport-openidconnect) auto-detect Spatio as an OIDC provider via their `wellKnown` / `discoveryUrl` config field. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOpenIDConfigurationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/openid-configuration';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// OpenID Connect Discovery 1.0 metadata.
  ///
  /// Alias of `/.well-known/oauth-authorization-server`. Provided so OIDC client libraries (NextAuth, Auth.js, oidc-client-ts, passport-openidconnect) auto-detect Spatio as an OIDC provider via their `wellKnown` / `discoveryUrl` config field. 
  Future<DiscoveryDocument?> getOpenIDConfiguration() async {
    final response = await getOpenIDConfigurationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DiscoveryDocument',) as DiscoveryDocument;
    
    }
    return null;
  }

  /// OIDC UserInfo (OpenID Connect Core 1.0 §5.3).
  ///
  /// Returns user claims gated by the scopes on the presenting access token. `sub` is always returned; `email`, `name`, etc. require their respective scopes. 
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUserInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/userinfo';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// OIDC UserInfo (OpenID Connect Core 1.0 §5.3).
  ///
  /// Returns user claims gated by the scopes on the presenting access token. `sub` is always returned; `email`, `name`, etc. require their respective scopes. 
  Future<UserInfoResponse?> getUserInfo() async {
    final response = await getUserInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserInfoResponse',) as UserInfoResponse;
    
    }
    return null;
  }

  /// OAuth 2.1 authorization endpoint (RFC 6749 + 7636 PKCE).
  ///
  /// Browser-redirect endpoint. Validates the client + redirect_uri, packs the request into a signed JWT, and 302s the user's browser to the consent UI. The consent UI then POSTs to `/oauth2/authorize/confirm` with the user's decision.  OIDC additions: `scope=openid+profile+email`, `nonce`, `prompt` (none|login|consent), `max_age`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  ///
  /// * [String] redirectUri (required):
  ///
  /// * [String] responseType (required):
  ///
  /// * [String] codeChallenge (required):
  ///
  /// * [String] codeChallengeMethod (required):
  ///
  /// * [String] scope:
  ///
  /// * [String] state:
  ///
  /// * [String] nonce:
  ///
  /// * [String] prompt:
  ///
  /// * [int] maxAge:
  Future<Response> oauthAuthorizeWithHttpInfo(String clientId, String redirectUri, String responseType, String codeChallenge, String codeChallengeMethod, { String? scope, String? state, String? nonce, String? prompt, int? maxAge, }) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/authorize';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'client_id', clientId));
      queryParams.addAll(_queryParams('', 'redirect_uri', redirectUri));
      queryParams.addAll(_queryParams('', 'response_type', responseType));
    if (scope != null) {
      queryParams.addAll(_queryParams('', 'scope', scope));
    }
    if (state != null) {
      queryParams.addAll(_queryParams('', 'state', state));
    }
      queryParams.addAll(_queryParams('', 'code_challenge', codeChallenge));
      queryParams.addAll(_queryParams('', 'code_challenge_method', codeChallengeMethod));
    if (nonce != null) {
      queryParams.addAll(_queryParams('', 'nonce', nonce));
    }
    if (prompt != null) {
      queryParams.addAll(_queryParams('', 'prompt', prompt));
    }
    if (maxAge != null) {
      queryParams.addAll(_queryParams('', 'max_age', maxAge));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// OAuth 2.1 authorization endpoint (RFC 6749 + 7636 PKCE).
  ///
  /// Browser-redirect endpoint. Validates the client + redirect_uri, packs the request into a signed JWT, and 302s the user's browser to the consent UI. The consent UI then POSTs to `/oauth2/authorize/confirm` with the user's decision.  OIDC additions: `scope=openid+profile+email`, `nonce`, `prompt` (none|login|consent), `max_age`. 
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  ///
  /// * [String] redirectUri (required):
  ///
  /// * [String] responseType (required):
  ///
  /// * [String] codeChallenge (required):
  ///
  /// * [String] codeChallengeMethod (required):
  ///
  /// * [String] scope:
  ///
  /// * [String] state:
  ///
  /// * [String] nonce:
  ///
  /// * [String] prompt:
  ///
  /// * [int] maxAge:
  Future<void> oauthAuthorize(String clientId, String redirectUri, String responseType, String codeChallenge, String codeChallengeMethod, { String? scope, String? state, String? nonce, String? prompt, int? maxAge, }) async {
    final response = await oauthAuthorizeWithHttpInfo(clientId, redirectUri, responseType, codeChallenge, codeChallengeMethod,  scope: scope, state: state, nonce: nonce, prompt: prompt, maxAge: maxAge, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// RFC 7662 token introspection. Accepts both OAuth access tokens and PATs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<Response> oauthIntrospectWithHttpInfo(String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/introspect';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (token != null) {
      formParams[r'token'] = parameterToString(token);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// RFC 7662 token introspection. Accepts both OAuth access tokens and PATs.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<IntrospectionResponse?> oauthIntrospect(String token,) async {
    final response = await oauthIntrospectWithHttpInfo(token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IntrospectionResponse',) as IntrospectionResponse;
    
    }
    return null;
  }

  /// RFC 7009 token revocation. Idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<Response> oauthRevokeWithHttpInfo(String token,) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/revoke';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (token != null) {
      formParams[r'token'] = parameterToString(token);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// RFC 7009 token revocation. Idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] token (required):
  Future<void> oauthRevoke(String token,) async {
    final response = await oauthRevokeWithHttpInfo(token,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Exchange authorization code or refresh token for an access token (+ id_token if `openid` scope).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] grantType (required):
  ///
  /// * [String] code:
  ///   Required for authorization_code grant.
  ///
  /// * [String] codeVerifier:
  ///   PKCE verifier — required for authorization_code grant.
  ///
  /// * [String] redirectUri:
  ///
  /// * [String] refreshToken:
  ///   Required for refresh_token grant.
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  Future<Response> oauthTokenWithHttpInfo(String grantType, { String? code, String? codeVerifier, String? redirectUri, String? refreshToken, String? clientId, String? clientSecret, }) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/token';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/x-www-form-urlencoded'];

    if (grantType != null) {
      formParams[r'grant_type'] = parameterToString(grantType);
    }
    if (code != null) {
      formParams[r'code'] = parameterToString(code);
    }
    if (codeVerifier != null) {
      formParams[r'code_verifier'] = parameterToString(codeVerifier);
    }
    if (redirectUri != null) {
      formParams[r'redirect_uri'] = parameterToString(redirectUri);
    }
    if (refreshToken != null) {
      formParams[r'refresh_token'] = parameterToString(refreshToken);
    }
    if (clientId != null) {
      formParams[r'client_id'] = parameterToString(clientId);
    }
    if (clientSecret != null) {
      formParams[r'client_secret'] = parameterToString(clientSecret);
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Exchange authorization code or refresh token for an access token (+ id_token if `openid` scope).
  ///
  /// Parameters:
  ///
  /// * [String] grantType (required):
  ///
  /// * [String] code:
  ///   Required for authorization_code grant.
  ///
  /// * [String] codeVerifier:
  ///   PKCE verifier — required for authorization_code grant.
  ///
  /// * [String] redirectUri:
  ///
  /// * [String] refreshToken:
  ///   Required for refresh_token grant.
  ///
  /// * [String] clientId:
  ///
  /// * [String] clientSecret:
  Future<TokenResponse?> oauthToken(String grantType, { String? code, String? codeVerifier, String? redirectUri, String? refreshToken, String? clientId, String? clientSecret, }) async {
    final response = await oauthTokenWithHttpInfo(grantType,  code: code, codeVerifier: codeVerifier, redirectUri: redirectUri, refreshToken: refreshToken, clientId: clientId, clientSecret: clientSecret, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenResponse',) as TokenResponse;
    
    }
    return null;
  }

  /// Same as GET /oauth2/userinfo. Provided for clients that send the bearer in the body.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> postUserInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/userinfo';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Same as GET /oauth2/userinfo. Provided for clients that send the bearer in the body.
  Future<UserInfoResponse?> postUserInfo() async {
    final response = await postUserInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserInfoResponse',) as UserInfoResponse;
    
    }
    return null;
  }

  /// Register a new OAuth 2.1 client (RFC 7591 dynamic client registration).
  ///
  /// Returns a fresh `client_id` (and, for confidential clients, `client_secret`) plus a one-time `registration_access_token` the client can use later to update its registration. Public clients (mobile, SPA) MUST use `token_endpoint_auth_method: none` and PKCE.  Rate-limited to 10 registrations per hour per source IP. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ClientRegistrationRequest] clientRegistrationRequest (required):
  Future<Response> registerOAuthClientWithHttpInfo(ClientRegistrationRequest clientRegistrationRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/oauth2/register';

    // ignore: prefer_final_locals
    Object? postBody = clientRegistrationRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Register a new OAuth 2.1 client (RFC 7591 dynamic client registration).
  ///
  /// Returns a fresh `client_id` (and, for confidential clients, `client_secret`) plus a one-time `registration_access_token` the client can use later to update its registration. Public clients (mobile, SPA) MUST use `token_endpoint_auth_method: none` and PKCE.  Rate-limited to 10 registrations per hour per source IP. 
  ///
  /// Parameters:
  ///
  /// * [ClientRegistrationRequest] clientRegistrationRequest (required):
  Future<ClientRegistrationResponse?> registerOAuthClient(ClientRegistrationRequest clientRegistrationRequest,) async {
    final response = await registerOAuthClientWithHttpInfo(clientRegistrationRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ClientRegistrationResponse',) as ClientRegistrationResponse;
    
    }
    return null;
  }
}
