//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class JWK {
  /// Returns a new [JWK] instance.
  JWK({
    required this.kty,
    required this.use,
    required this.alg,
    required this.kid,
    required this.n,
    required this.e,
  });

  String kty;

  String use;

  String alg;

  String kid;

  /// Base64url-encoded RSA modulus.
  String n;

  /// Base64url-encoded RSA exponent. Almost always \"AQAB\".
  String e;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JWK &&
    other.kty == kty &&
    other.use == use &&
    other.alg == alg &&
    other.kid == kid &&
    other.n == n &&
    other.e == e;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kty.hashCode) +
    (use.hashCode) +
    (alg.hashCode) +
    (kid.hashCode) +
    (n.hashCode) +
    (e.hashCode);

  @override
  String toString() => 'JWK[kty=$kty, use=$use, alg=$alg, kid=$kid, n=$n, e=$e]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kty'] = this.kty;
      json[r'use'] = this.use;
      json[r'alg'] = this.alg;
      json[r'kid'] = this.kid;
      json[r'n'] = this.n;
      json[r'e'] = this.e;
    return json;
  }

  /// Returns a new [JWK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JWK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'kty'), 'Required key "JWK[kty]" is missing from JSON.');
        assert(json[r'kty'] != null, 'Required key "JWK[kty]" has a null value in JSON.');
        assert(json.containsKey(r'use'), 'Required key "JWK[use]" is missing from JSON.');
        assert(json[r'use'] != null, 'Required key "JWK[use]" has a null value in JSON.');
        assert(json.containsKey(r'alg'), 'Required key "JWK[alg]" is missing from JSON.');
        assert(json[r'alg'] != null, 'Required key "JWK[alg]" has a null value in JSON.');
        assert(json.containsKey(r'kid'), 'Required key "JWK[kid]" is missing from JSON.');
        assert(json[r'kid'] != null, 'Required key "JWK[kid]" has a null value in JSON.');
        assert(json.containsKey(r'n'), 'Required key "JWK[n]" is missing from JSON.');
        assert(json[r'n'] != null, 'Required key "JWK[n]" has a null value in JSON.');
        assert(json.containsKey(r'e'), 'Required key "JWK[e]" is missing from JSON.');
        assert(json[r'e'] != null, 'Required key "JWK[e]" has a null value in JSON.');
        return true;
      }());

      return JWK(
        kty: mapValueOfType<String>(json, r'kty')!,
        use: mapValueOfType<String>(json, r'use')!,
        alg: mapValueOfType<String>(json, r'alg')!,
        kid: mapValueOfType<String>(json, r'kid')!,
        n: mapValueOfType<String>(json, r'n')!,
        e: mapValueOfType<String>(json, r'e')!,
      );
    }
    return null;
  }

  static List<JWK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JWK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JWK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JWK> mapFromJson(dynamic json) {
    final map = <String, JWK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JWK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JWK-objects as value to a dart map
  static Map<String, List<JWK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JWK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JWK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kty',
    'use',
    'alg',
    'kid',
    'n',
    'e',
  };
}

