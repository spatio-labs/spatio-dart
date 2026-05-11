# spatio_sdk.api.OAuthApi

## Load the API package
```dart
import 'package:spatio_sdk/api.dart';
```

All URIs are relative to *https://api.spatio.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getJWKS**](OAuthApi.md#getjwks) | **GET** /.well-known/jwks.json | JSON Web Key Set for id_token verification (RFC 7517).
[**getOAuthDiscovery**](OAuthApi.md#getoauthdiscovery) | **GET** /.well-known/oauth-authorization-server | OAuth 2.1 authorization server metadata (RFC 8414).
[**getOpenIDConfiguration**](OAuthApi.md#getopenidconfiguration) | **GET** /.well-known/openid-configuration | OpenID Connect Discovery 1.0 metadata.
[**getUserInfo**](OAuthApi.md#getuserinfo) | **GET** /oauth2/userinfo | OIDC UserInfo (OpenID Connect Core 1.0 §5.3).
[**oauthAuthorize**](OAuthApi.md#oauthauthorize) | **GET** /oauth2/authorize | OAuth 2.1 authorization endpoint (RFC 6749 + 7636 PKCE).
[**oauthIntrospect**](OAuthApi.md#oauthintrospect) | **POST** /oauth2/introspect | RFC 7662 token introspection. Accepts both OAuth access tokens and PATs.
[**oauthRevoke**](OAuthApi.md#oauthrevoke) | **POST** /oauth2/revoke | RFC 7009 token revocation. Idempotent.
[**oauthToken**](OAuthApi.md#oauthtoken) | **POST** /oauth2/token | Exchange authorization code or refresh token for an access token (+ id_token if `openid` scope).
[**postUserInfo**](OAuthApi.md#postuserinfo) | **POST** /oauth2/userinfo | Same as GET /oauth2/userinfo. Provided for clients that send the bearer in the body.
[**registerOAuthClient**](OAuthApi.md#registeroauthclient) | **POST** /oauth2/register | Register a new OAuth 2.1 client (RFC 7591 dynamic client registration).


# **getJWKS**
> JWKS getJWKS()

JSON Web Key Set for id_token verification (RFC 7517).

The set of public keys RPs use to verify Spatio-issued id_tokens. Cached for 5 minutes at the edge. Always includes the currently-active signing key plus any retired keys that may still be in circulation (id_token TTL is 1 hour + slack). 

### Example
```dart
import 'package:spatio_sdk/api.dart';

final api_instance = OAuthApi();

try {
    final result = api_instance.getJWKS();
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->getJWKS: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JWKS**](JWKS.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOAuthDiscovery**
> DiscoveryDocument getOAuthDiscovery()

OAuth 2.1 authorization server metadata (RFC 8414).

Returns the canonical metadata for the Spatio OAuth 2.1 + OpenID Connect server. Third-party RPs use this to auto-discover endpoint URLs, supported scopes, and signing algorithms.  Identical payload to `/.well-known/openid-configuration` — either path is acceptable; OIDC clients prefer the openid-configuration alias. 

### Example
```dart
import 'package:spatio_sdk/api.dart';

final api_instance = OAuthApi();

try {
    final result = api_instance.getOAuthDiscovery();
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->getOAuthDiscovery: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DiscoveryDocument**](DiscoveryDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOpenIDConfiguration**
> DiscoveryDocument getOpenIDConfiguration()

OpenID Connect Discovery 1.0 metadata.

Alias of `/.well-known/oauth-authorization-server`. Provided so OIDC client libraries (NextAuth, Auth.js, oidc-client-ts, passport-openidconnect) auto-detect Spatio as an OIDC provider via their `wellKnown` / `discoveryUrl` config field. 

### Example
```dart
import 'package:spatio_sdk/api.dart';

final api_instance = OAuthApi();

try {
    final result = api_instance.getOpenIDConfiguration();
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->getOpenIDConfiguration: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DiscoveryDocument**](DiscoveryDocument.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInfo**
> UserInfoResponse getUserInfo()

OIDC UserInfo (OpenID Connect Core 1.0 §5.3).

Returns user claims gated by the scopes on the presenting access token. `sub` is always returned; `email`, `name`, etc. require their respective scopes. 

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OAuthApi();

try {
    final result = api_instance.getUserInfo();
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->getUserInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserInfoResponse**](UserInfoResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthAuthorize**
> oauthAuthorize(clientId, redirectUri, responseType, codeChallenge, codeChallengeMethod, scope, state, nonce, prompt, maxAge)

OAuth 2.1 authorization endpoint (RFC 6749 + 7636 PKCE).

Browser-redirect endpoint. Validates the client + redirect_uri, packs the request into a signed JWT, and 302s the user's browser to the consent UI. The consent UI then POSTs to `/oauth2/authorize/confirm` with the user's decision.  OIDC additions: `scope=openid+profile+email`, `nonce`, `prompt` (none|login|consent), `max_age`. 

### Example
```dart
import 'package:spatio_sdk/api.dart';

final api_instance = OAuthApi();
final clientId = clientId_example; // String | 
final redirectUri = redirectUri_example; // String | 
final responseType = responseType_example; // String | 
final codeChallenge = codeChallenge_example; // String | 
final codeChallengeMethod = codeChallengeMethod_example; // String | 
final scope = scope_example; // String | 
final state = state_example; // String | 
final nonce = nonce_example; // String | 
final prompt = prompt_example; // String | 
final maxAge = 56; // int | 

try {
    api_instance.oauthAuthorize(clientId, redirectUri, responseType, codeChallenge, codeChallengeMethod, scope, state, nonce, prompt, maxAge);
} catch (e) {
    print('Exception when calling OAuthApi->oauthAuthorize: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientId** | **String**|  | 
 **redirectUri** | **String**|  | 
 **responseType** | **String**|  | 
 **codeChallenge** | **String**|  | 
 **codeChallengeMethod** | **String**|  | 
 **scope** | **String**|  | [optional] 
 **state** | **String**|  | [optional] 
 **nonce** | **String**|  | [optional] 
 **prompt** | **String**|  | [optional] 
 **maxAge** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthIntrospect**
> IntrospectionResponse oauthIntrospect(token)

RFC 7662 token introspection. Accepts both OAuth access tokens and PATs.

### Example
```dart
import 'package:spatio_sdk/api.dart';

final api_instance = OAuthApi();
final token = token_example; // String | 

try {
    final result = api_instance.oauthIntrospect(token);
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->oauthIntrospect: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

[**IntrospectionResponse**](IntrospectionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthRevoke**
> oauthRevoke(token)

RFC 7009 token revocation. Idempotent.

### Example
```dart
import 'package:spatio_sdk/api.dart';

final api_instance = OAuthApi();
final token = token_example; // String | 

try {
    api_instance.oauthRevoke(token);
} catch (e) {
    print('Exception when calling OAuthApi->oauthRevoke: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **oauthToken**
> TokenResponse oauthToken(grantType, code, codeVerifier, redirectUri, refreshToken, clientId, clientSecret)

Exchange authorization code or refresh token for an access token (+ id_token if `openid` scope).

### Example
```dart
import 'package:spatio_sdk/api.dart';

final api_instance = OAuthApi();
final grantType = grantType_example; // String | 
final code = code_example; // String | Required for authorization_code grant.
final codeVerifier = codeVerifier_example; // String | PKCE verifier — required for authorization_code grant.
final redirectUri = redirectUri_example; // String | 
final refreshToken = refreshToken_example; // String | Required for refresh_token grant.
final clientId = clientId_example; // String | 
final clientSecret = clientSecret_example; // String | 

try {
    final result = api_instance.oauthToken(grantType, code, codeVerifier, redirectUri, refreshToken, clientId, clientSecret);
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->oauthToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | **String**|  | 
 **code** | **String**| Required for authorization_code grant. | [optional] 
 **codeVerifier** | **String**| PKCE verifier — required for authorization_code grant. | [optional] 
 **redirectUri** | **String**|  | [optional] 
 **refreshToken** | **String**| Required for refresh_token grant. | [optional] 
 **clientId** | **String**|  | [optional] 
 **clientSecret** | **String**|  | [optional] 

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUserInfo**
> UserInfoResponse postUserInfo()

Same as GET /oauth2/userinfo. Provided for clients that send the bearer in the body.

### Example
```dart
import 'package:spatio_sdk/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = OAuthApi();

try {
    final result = api_instance.postUserInfo();
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->postUserInfo: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserInfoResponse**](UserInfoResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerOAuthClient**
> ClientRegistrationResponse registerOAuthClient(clientRegistrationRequest)

Register a new OAuth 2.1 client (RFC 7591 dynamic client registration).

Returns a fresh `client_id` (and, for confidential clients, `client_secret`) plus a one-time `registration_access_token` the client can use later to update its registration. Public clients (mobile, SPA) MUST use `token_endpoint_auth_method: none` and PKCE.  Rate-limited to 10 registrations per hour per source IP. 

### Example
```dart
import 'package:spatio_sdk/api.dart';

final api_instance = OAuthApi();
final clientRegistrationRequest = ClientRegistrationRequest(); // ClientRegistrationRequest | 

try {
    final result = api_instance.registerOAuthClient(clientRegistrationRequest);
    print(result);
} catch (e) {
    print('Exception when calling OAuthApi->registerOAuthClient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientRegistrationRequest** | [**ClientRegistrationRequest**](ClientRegistrationRequest.md)|  | 

### Return type

[**ClientRegistrationResponse**](ClientRegistrationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

