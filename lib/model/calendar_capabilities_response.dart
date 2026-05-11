//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CalendarCapabilitiesResponse {
  /// Returns a new [CalendarCapabilitiesResponse] instance.
  CalendarCapabilitiesResponse({
    required this.accountId,
    required this.providerId,
    this.capabilities = const {},
  });

  String accountId;

  String providerId;

  /// Per-account feature gate. The renderer reads these to enable/ disable form fields (recurrence pickers, attendee inputs, etc.) based on what the underlying provider supports. 
  Map<String, Object> capabilities;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarCapabilitiesResponse &&
    other.accountId == accountId &&
    other.providerId == providerId &&
    _deepEquality.equals(other.capabilities, capabilities);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId.hashCode) +
    (providerId.hashCode) +
    (capabilities.hashCode);

  @override
  String toString() => 'CalendarCapabilitiesResponse[accountId=$accountId, providerId=$providerId, capabilities=$capabilities]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account_id'] = this.accountId;
      json[r'provider_id'] = this.providerId;
      json[r'capabilities'] = this.capabilities;
    return json;
  }

  /// Returns a new [CalendarCapabilitiesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarCapabilitiesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'account_id'), 'Required key "CalendarCapabilitiesResponse[account_id]" is missing from JSON.');
        assert(json[r'account_id'] != null, 'Required key "CalendarCapabilitiesResponse[account_id]" has a null value in JSON.');
        assert(json.containsKey(r'provider_id'), 'Required key "CalendarCapabilitiesResponse[provider_id]" is missing from JSON.');
        assert(json[r'provider_id'] != null, 'Required key "CalendarCapabilitiesResponse[provider_id]" has a null value in JSON.');
        assert(json.containsKey(r'capabilities'), 'Required key "CalendarCapabilitiesResponse[capabilities]" is missing from JSON.');
        assert(json[r'capabilities'] != null, 'Required key "CalendarCapabilitiesResponse[capabilities]" has a null value in JSON.');
        return true;
      }());

      return CalendarCapabilitiesResponse(
        accountId: mapValueOfType<String>(json, r'account_id')!,
        providerId: mapValueOfType<String>(json, r'provider_id')!,
        capabilities: mapCastOfType<String, Object>(json, r'capabilities')!,
      );
    }
    return null;
  }

  static List<CalendarCapabilitiesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarCapabilitiesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarCapabilitiesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalendarCapabilitiesResponse> mapFromJson(dynamic json) {
    final map = <String, CalendarCapabilitiesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarCapabilitiesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalendarCapabilitiesResponse-objects as value to a dart map
  static Map<String, List<CalendarCapabilitiesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalendarCapabilitiesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CalendarCapabilitiesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account_id',
    'provider_id',
    'capabilities',
  };
}

