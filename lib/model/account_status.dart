//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AccountStatus {
  /// Returns a new [AccountStatus] instance.
  AccountStatus({
    required this.provider,
    required this.accountId,
    this.accountName,
    required this.status,
    this.error,
    this.nextPageToken,
  });

  /// Provider id (e.g. `native-notes`, `notion`, `google-keep`).
  String provider;

  /// Connected-account row id.
  String accountId;

  /// Human-readable label for the account, when available.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountName;

  /// - `ok` — provider call returned without error. - `error` — provider call failed; details in `error`. - `skipped` — connection was filtered out before the provider   call ran. Reserved; not currently emitted by the runtime. 
  AccountStatusStatusEnum status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountError? error;

  /// Provider-specific cursor for the next page, if any.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextPageToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountStatus &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.accountName == accountName &&
    other.status == status &&
    other.error == error &&
    other.nextPageToken == nextPageToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider.hashCode) +
    (accountId.hashCode) +
    (accountName == null ? 0 : accountName!.hashCode) +
    (status.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (nextPageToken == null ? 0 : nextPageToken!.hashCode);

  @override
  String toString() => 'AccountStatus[provider=$provider, accountId=$accountId, accountName=$accountName, status=$status, error=$error, nextPageToken=$nextPageToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provider'] = this.provider;
      json[r'accountId'] = this.accountId;
    if (this.accountName != null) {
      json[r'accountName'] = this.accountName;
    } else {
      json[r'accountName'] = null;
    }
      json[r'status'] = this.status;
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.nextPageToken != null) {
      json[r'nextPageToken'] = this.nextPageToken;
    } else {
      json[r'nextPageToken'] = null;
    }
    return json;
  }

  /// Returns a new [AccountStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'provider'), 'Required key "AccountStatus[provider]" is missing from JSON.');
        assert(json[r'provider'] != null, 'Required key "AccountStatus[provider]" has a null value in JSON.');
        assert(json.containsKey(r'accountId'), 'Required key "AccountStatus[accountId]" is missing from JSON.');
        assert(json[r'accountId'] != null, 'Required key "AccountStatus[accountId]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "AccountStatus[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "AccountStatus[status]" has a null value in JSON.');
        return true;
      }());

      return AccountStatus(
        provider: mapValueOfType<String>(json, r'provider')!,
        accountId: mapValueOfType<String>(json, r'accountId')!,
        accountName: mapValueOfType<String>(json, r'accountName'),
        status: AccountStatusStatusEnum.fromJson(json[r'status'])!,
        error: AccountError.fromJson(json[r'error']),
        nextPageToken: mapValueOfType<String>(json, r'nextPageToken'),
      );
    }
    return null;
  }

  static List<AccountStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountStatus> mapFromJson(dynamic json) {
    final map = <String, AccountStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountStatus-objects as value to a dart map
  static Map<String, List<AccountStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provider',
    'accountId',
    'status',
  };
}

/// - `ok` — provider call returned without error. - `error` — provider call failed; details in `error`. - `skipped` — connection was filtered out before the provider   call ran. Reserved; not currently emitted by the runtime. 
class AccountStatusStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AccountStatusStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ok = AccountStatusStatusEnum._(r'ok');
  static const error = AccountStatusStatusEnum._(r'error');
  static const skipped = AccountStatusStatusEnum._(r'skipped');

  /// List of all possible values in this [enum][AccountStatusStatusEnum].
  static const values = <AccountStatusStatusEnum>[
    ok,
    error,
    skipped,
  ];

  static AccountStatusStatusEnum? fromJson(dynamic value) => AccountStatusStatusEnumTypeTransformer().decode(value);

  static List<AccountStatusStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountStatusStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountStatusStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AccountStatusStatusEnum] to String,
/// and [decode] dynamic data back to [AccountStatusStatusEnum].
class AccountStatusStatusEnumTypeTransformer {
  factory AccountStatusStatusEnumTypeTransformer() => _instance ??= const AccountStatusStatusEnumTypeTransformer._();

  const AccountStatusStatusEnumTypeTransformer._();

  String encode(AccountStatusStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AccountStatusStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AccountStatusStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ok': return AccountStatusStatusEnum.ok;
        case r'error': return AccountStatusStatusEnum.error;
        case r'skipped': return AccountStatusStatusEnum.skipped;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AccountStatusStatusEnumTypeTransformer] instance.
  static AccountStatusStatusEnumTypeTransformer? _instance;
}


