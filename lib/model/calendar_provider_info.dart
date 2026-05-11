//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CalendarProviderInfo {
  /// Returns a new [CalendarProviderInfo] instance.
  CalendarProviderInfo({
    required this.id,
    required this.name,
    this.displayName,
    this.description,
    this.isSystem,
  });

  /// Stable provider id (e.g. `google-calendar`, `native-calendar`).
  String id;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// `true` for built-in providers (the native calendar).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSystem;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CalendarProviderInfo &&
    other.id == id &&
    other.name == name &&
    other.displayName == displayName &&
    other.description == description &&
    other.isSystem == isSystem;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (isSystem == null ? 0 : isSystem!.hashCode);

  @override
  String toString() => 'CalendarProviderInfo[id=$id, name=$name, displayName=$displayName, description=$description, isSystem=$isSystem]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.displayName != null) {
      json[r'display_name'] = this.displayName;
    } else {
      json[r'display_name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.isSystem != null) {
      json[r'is_system'] = this.isSystem;
    } else {
      json[r'is_system'] = null;
    }
    return json;
  }

  /// Returns a new [CalendarProviderInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CalendarProviderInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "CalendarProviderInfo[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "CalendarProviderInfo[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "CalendarProviderInfo[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "CalendarProviderInfo[name]" has a null value in JSON.');
        return true;
      }());

      return CalendarProviderInfo(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        displayName: mapValueOfType<String>(json, r'display_name'),
        description: mapValueOfType<String>(json, r'description'),
        isSystem: mapValueOfType<bool>(json, r'is_system'),
      );
    }
    return null;
  }

  static List<CalendarProviderInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CalendarProviderInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CalendarProviderInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CalendarProviderInfo> mapFromJson(dynamic json) {
    final map = <String, CalendarProviderInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CalendarProviderInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CalendarProviderInfo-objects as value to a dart map
  static Map<String, List<CalendarProviderInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CalendarProviderInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CalendarProviderInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
  };
}

