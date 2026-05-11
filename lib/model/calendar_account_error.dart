//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CalendarAccountError {
  /// Returns a new [CalendarAccountError] instance.
  CalendarAccountError({
    required this.accountId,
    required this.accountName,
    required this.errorCode,
    required this.errorMessage,
  });

  String accountId;

  String accountName;

  String errorCode;

  String errorMessage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarAccountError &&
    other.accountId == accountId &&
    other.accountName == accountName &&
    other.errorCode == errorCode &&
    other.errorMessage == errorMessage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId.hashCode) +
    (accountName.hashCode) +
    (errorCode.hashCode) +
    (errorMessage.hashCode);

  @override
  String toString() => 'CalendarAccountError[accountId=$accountId, accountName=$accountName, errorCode=$errorCode, errorMessage=$errorMessage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account_id'] = this.accountId;
      json[r'account_name'] = this.accountName;
      json[r'error_code'] = this.errorCode;
      json[r'error_message'] = this.errorMessage;
    return json;
  }

  /// Returns a new [CalendarAccountError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarAccountError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'account_id'), 'Required key "CalendarAccountError[account_id]" is missing from JSON.');
        assert(json[r'account_id'] != null, 'Required key "CalendarAccountError[account_id]" has a null value in JSON.');
        assert(json.containsKey(r'account_name'), 'Required key "CalendarAccountError[account_name]" is missing from JSON.');
        assert(json[r'account_name'] != null, 'Required key "CalendarAccountError[account_name]" has a null value in JSON.');
        assert(json.containsKey(r'error_code'), 'Required key "CalendarAccountError[error_code]" is missing from JSON.');
        assert(json[r'error_code'] != null, 'Required key "CalendarAccountError[error_code]" has a null value in JSON.');
        assert(json.containsKey(r'error_message'), 'Required key "CalendarAccountError[error_message]" is missing from JSON.');
        assert(json[r'error_message'] != null, 'Required key "CalendarAccountError[error_message]" has a null value in JSON.');
        return true;
      }());

      return CalendarAccountError(
        accountId: mapValueOfType<String>(json, r'account_id')!,
        accountName: mapValueOfType<String>(json, r'account_name')!,
        errorCode: mapValueOfType<String>(json, r'error_code')!,
        errorMessage: mapValueOfType<String>(json, r'error_message')!,
      );
    }
    return null;
  }

  static List<CalendarAccountError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarAccountError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarAccountError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalendarAccountError> mapFromJson(dynamic json) {
    final map = <String, CalendarAccountError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarAccountError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalendarAccountError-objects as value to a dart map
  static Map<String, List<CalendarAccountError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalendarAccountError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CalendarAccountError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account_id',
    'account_name',
    'error_code',
    'error_message',
  };
}

