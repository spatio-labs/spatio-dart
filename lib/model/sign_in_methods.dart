//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SignInMethods {
  /// Returns a new [SignInMethods] instance.
  SignInMethods({
    required this.email,
    required this.hasPassword,
    this.providers = const [],
  });

  String email;

  bool hasPassword;

  List<SignInMethodsProvidersInner> providers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignInMethods &&
    other.email == email &&
    other.hasPassword == hasPassword &&
    _deepEquality.equals(other.providers, providers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (hasPassword.hashCode) +
    (providers.hashCode);

  @override
  String toString() => 'SignInMethods[email=$email, hasPassword=$hasPassword, providers=$providers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'hasPassword'] = this.hasPassword;
      json[r'providers'] = this.providers;
    return json;
  }

  /// Returns a new [SignInMethods] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignInMethods? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'email'), 'Required key "SignInMethods[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "SignInMethods[email]" has a null value in JSON.');
        assert(json.containsKey(r'hasPassword'), 'Required key "SignInMethods[hasPassword]" is missing from JSON.');
        assert(json[r'hasPassword'] != null, 'Required key "SignInMethods[hasPassword]" has a null value in JSON.');
        return true;
      }());

      return SignInMethods(
        email: mapValueOfType<String>(json, r'email')!,
        hasPassword: mapValueOfType<bool>(json, r'hasPassword')!,
        providers: SignInMethodsProvidersInner.listFromJson(json[r'providers']),
      );
    }
    return null;
  }

  static List<SignInMethods> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignInMethods>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignInMethods.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignInMethods> mapFromJson(dynamic json) {
    final map = <String, SignInMethods>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignInMethods.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignInMethods-objects as value to a dart map
  static Map<String, List<SignInMethods>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignInMethods>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignInMethods.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'hasPassword',
  };
}

