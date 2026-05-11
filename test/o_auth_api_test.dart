//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:spatio_sdk/api.dart';
import 'package:test/test.dart';


/// tests for OAuthApi
void main() {
  // final instance = OAuthApi();

  group('tests for OAuthApi', () {
    // JSON Web Key Set for id_token verification (RFC 7517).
    //
    // The set of public keys RPs use to verify Spatio-issued id_tokens. Cached for 5 minutes at the edge. Always includes the currently-active signing key plus any retired keys that may still be in circulation (id_token TTL is 1 hour + slack). 
    //
    //Future<JWKS> getJWKS() async
    test('test getJWKS', () async {
      // TODO
    });

    // OAuth 2.1 authorization server metadata (RFC 8414).
    //
    // Returns the canonical metadata for the Spatio OAuth 2.1 + OpenID Connect server. Third-party RPs use this to auto-discover endpoint URLs, supported scopes, and signing algorithms.  Identical payload to `/.well-known/openid-configuration` — either path is acceptable; OIDC clients prefer the openid-configuration alias. 
    //
    //Future<DiscoveryDocument> getOAuthDiscovery() async
    test('test getOAuthDiscovery', () async {
      // TODO
    });

    // OpenID Connect Discovery 1.0 metadata.
    //
    // Alias of `/.well-known/oauth-authorization-server`. Provided so OIDC client libraries (NextAuth, Auth.js, oidc-client-ts, passport-openidconnect) auto-detect Spatio as an OIDC provider via their `wellKnown` / `discoveryUrl` config field. 
    //
    //Future<DiscoveryDocument> getOpenIDConfiguration() async
    test('test getOpenIDConfiguration', () async {
      // TODO
    });

    // OIDC UserInfo (OpenID Connect Core 1.0 §5.3).
    //
    // Returns user claims gated by the scopes on the presenting access token. `sub` is always returned; `email`, `name`, etc. require their respective scopes. 
    //
    //Future<UserInfoResponse> getUserInfo() async
    test('test getUserInfo', () async {
      // TODO
    });

    // OAuth 2.1 authorization endpoint (RFC 6749 + 7636 PKCE).
    //
    // Browser-redirect endpoint. Validates the client + redirect_uri, packs the request into a signed JWT, and 302s the user's browser to the consent UI. The consent UI then POSTs to `/oauth2/authorize/confirm` with the user's decision.  OIDC additions: `scope=openid+profile+email`, `nonce`, `prompt` (none|login|consent), `max_age`. 
    //
    //Future oauthAuthorize(String clientId, String redirectUri, String responseType, String codeChallenge, String codeChallengeMethod, { String scope, String state, String nonce, String prompt, int maxAge }) async
    test('test oauthAuthorize', () async {
      // TODO
    });

    // RFC 7662 token introspection. Accepts both OAuth access tokens and PATs.
    //
    //Future<IntrospectionResponse> oauthIntrospect(String token) async
    test('test oauthIntrospect', () async {
      // TODO
    });

    // RFC 7009 token revocation. Idempotent.
    //
    //Future oauthRevoke(String token) async
    test('test oauthRevoke', () async {
      // TODO
    });

    // Exchange authorization code or refresh token for an access token (+ id_token if `openid` scope).
    //
    //Future<TokenResponse> oauthToken(String grantType, { String code, String codeVerifier, String redirectUri, String refreshToken, String clientId, String clientSecret }) async
    test('test oauthToken', () async {
      // TODO
    });

    // Same as GET /oauth2/userinfo. Provided for clients that send the bearer in the body.
    //
    //Future<UserInfoResponse> postUserInfo() async
    test('test postUserInfo', () async {
      // TODO
    });

    // Register a new OAuth 2.1 client (RFC 7591 dynamic client registration).
    //
    // Returns a fresh `client_id` (and, for confidential clients, `client_secret`) plus a one-time `registration_access_token` the client can use later to update its registration. Public clients (mobile, SPA) MUST use `token_endpoint_auth_method: none` and PKCE.  Rate-limited to 10 registrations per hour per source IP. 
    //
    //Future<ClientRegistrationResponse> registerOAuthClient(ClientRegistrationRequest clientRegistrationRequest) async
    test('test registerOAuthClient', () async {
      // TODO
    });

  });
}
