//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SignInMethodsProvidersInner {
  /// Returns a new [SignInMethodsProvidersInner] instance.
  SignInMethodsProvidersInner({
    required this.provider,
    this.accountEmail,
    this.linkedAt,
    this.lastUsedAt,
  });

  /// OAuth IdP: `GOOGLE`, `GITHUB`, etc.
  String provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountEmail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? linkedAt;

  DateTime? lastUsedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignInMethodsProvidersInner &&
    other.provider == provider &&
    other.accountEmail == accountEmail &&
    other.linkedAt == linkedAt &&
    other.lastUsedAt == lastUsedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider.hashCode) +
    (accountEmail == null ? 0 : accountEmail!.hashCode) +
    (linkedAt == null ? 0 : linkedAt!.hashCode) +
    (lastUsedAt == null ? 0 : lastUsedAt!.hashCode);

  @override
  String toString() => 'SignInMethodsProvidersInner[provider=$provider, accountEmail=$accountEmail, linkedAt=$linkedAt, lastUsedAt=$lastUsedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provider'] = this.provider;
    if (this.accountEmail != null) {
      json[r'accountEmail'] = this.accountEmail;
    } else {
      json[r'accountEmail'] = null;
    }
    if (this.linkedAt != null) {
      json[r'linkedAt'] = this.linkedAt!.toUtc().toIso8601String();
    } else {
      json[r'linkedAt'] = null;
    }
    if (this.lastUsedAt != null) {
      json[r'lastUsedAt'] = this.lastUsedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastUsedAt'] = null;
    }
    return json;
  }

  /// Returns a new [SignInMethodsProvidersInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignInMethodsProvidersInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'provider'), 'Required key "SignInMethodsProvidersInner[provider]" is missing from JSON.');
        assert(json[r'provider'] != null, 'Required key "SignInMethodsProvidersInner[provider]" has a null value in JSON.');
        return true;
      }());

      return SignInMethodsProvidersInner(
        provider: mapValueOfType<String>(json, r'provider')!,
        accountEmail: mapValueOfType<String>(json, r'accountEmail'),
        linkedAt: mapDateTime(json, r'linkedAt', r''),
        lastUsedAt: mapDateTime(json, r'lastUsedAt', r''),
      );
    }
    return null;
  }

  static List<SignInMethodsProvidersInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignInMethodsProvidersInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignInMethodsProvidersInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignInMethodsProvidersInner> mapFromJson(dynamic json) {
    final map = <String, SignInMethodsProvidersInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignInMethodsProvidersInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignInMethodsProvidersInner-objects as value to a dart map
  static Map<String, List<SignInMethodsProvidersInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignInMethodsProvidersInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignInMethodsProvidersInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provider',
  };
}

