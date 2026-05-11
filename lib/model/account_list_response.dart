//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AccountListResponse {
  /// Returns a new [AccountListResponse] instance.
  AccountListResponse({
    this.accountsByPlatform = const {},
    this.totalAccounts,
    this.accounts = const [],
  });

  Map<String, Object> accountsByPlatform;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalAccounts;

  List<Map<String, Object>>? accounts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountListResponse &&
    _deepEquality.equals(other.accountsByPlatform, accountsByPlatform) &&
    other.totalAccounts == totalAccounts &&
    _deepEquality.equals(other.accounts, accounts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountsByPlatform.hashCode) +
    (totalAccounts == null ? 0 : totalAccounts!.hashCode) +
    (accounts == null ? 0 : accounts!.hashCode);

  @override
  String toString() => 'AccountListResponse[accountsByPlatform=$accountsByPlatform, totalAccounts=$totalAccounts, accounts=$accounts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accounts_by_platform'] = this.accountsByPlatform;
    if (this.totalAccounts != null) {
      json[r'total_accounts'] = this.totalAccounts;
    } else {
      json[r'total_accounts'] = null;
    }
    if (this.accounts != null) {
      json[r'accounts'] = this.accounts;
    } else {
      json[r'accounts'] = null;
    }
    return json;
  }

  /// Returns a new [AccountListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AccountListResponse(
        accountsByPlatform: mapCastOfType<String, Object>(json, r'accounts_by_platform') ?? const {},
        totalAccounts: mapValueOfType<int>(json, r'total_accounts'),
        accounts: Map.listFromJson(json[r'accounts']),
      );
    }
    return null;
  }

  static List<AccountListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountListResponse> mapFromJson(dynamic json) {
    final map = <String, AccountListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountListResponse-objects as value to a dart map
  static Map<String, List<AccountListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

