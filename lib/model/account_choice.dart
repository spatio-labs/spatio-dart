//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AccountChoice {
  /// Returns a new [AccountChoice] instance.
  AccountChoice({
    required this.provider,
    required this.accountId,
    this.accountName,
  });

  String provider;

  String accountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountChoice &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.accountName == accountName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider.hashCode) +
    (accountId.hashCode) +
    (accountName == null ? 0 : accountName!.hashCode);

  @override
  String toString() => 'AccountChoice[provider=$provider, accountId=$accountId, accountName=$accountName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provider'] = this.provider;
      json[r'accountId'] = this.accountId;
    if (this.accountName != null) {
      json[r'accountName'] = this.accountName;
    } else {
      json[r'accountName'] = null;
    }
    return json;
  }

  /// Returns a new [AccountChoice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountChoice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'provider'), 'Required key "AccountChoice[provider]" is missing from JSON.');
        assert(json[r'provider'] != null, 'Required key "AccountChoice[provider]" has a null value in JSON.');
        assert(json.containsKey(r'accountId'), 'Required key "AccountChoice[accountId]" is missing from JSON.');
        assert(json[r'accountId'] != null, 'Required key "AccountChoice[accountId]" has a null value in JSON.');
        return true;
      }());

      return AccountChoice(
        provider: mapValueOfType<String>(json, r'provider')!,
        accountId: mapValueOfType<String>(json, r'accountId')!,
        accountName: mapValueOfType<String>(json, r'accountName'),
      );
    }
    return null;
  }

  static List<AccountChoice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountChoice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountChoice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountChoice> mapFromJson(dynamic json) {
    final map = <String, AccountChoice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountChoice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountChoice-objects as value to a dart map
  static Map<String, List<AccountChoice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountChoice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountChoice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provider',
    'accountId',
  };
}

