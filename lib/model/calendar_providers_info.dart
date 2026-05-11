//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CalendarProvidersInfo {
  /// Returns a new [CalendarProvidersInfo] instance.
  CalendarProvidersInfo({
    this.providers = const [],
  });

  List<CalendarProviderInfo> providers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarProvidersInfo &&
    _deepEquality.equals(other.providers, providers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (providers.hashCode);

  @override
  String toString() => 'CalendarProvidersInfo[providers=$providers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'providers'] = this.providers;
    return json;
  }

  /// Returns a new [CalendarProvidersInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarProvidersInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'providers'), 'Required key "CalendarProvidersInfo[providers]" is missing from JSON.');
        assert(json[r'providers'] != null, 'Required key "CalendarProvidersInfo[providers]" has a null value in JSON.');
        return true;
      }());

      return CalendarProvidersInfo(
        providers: CalendarProviderInfo.listFromJson(json[r'providers']),
      );
    }
    return null;
  }

  static List<CalendarProvidersInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarProvidersInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarProvidersInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalendarProvidersInfo> mapFromJson(dynamic json) {
    final map = <String, CalendarProvidersInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarProvidersInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalendarProvidersInfo-objects as value to a dart map
  static Map<String, List<CalendarProvidersInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalendarProvidersInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CalendarProvidersInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'providers',
  };
}

