//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class DMPinnedList {
  /// Returns a new [DMPinnedList] instance.
  DMPinnedList({
    this.pinned,
  });

  /// Provider-shaped pinned list.
  Object? pinned;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DMPinnedList &&
    other.pinned == pinned;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pinned == null ? 0 : pinned!.hashCode);

  @override
  String toString() => 'DMPinnedList[pinned=$pinned]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.pinned != null) {
      json[r'pinned'] = this.pinned;
    } else {
      json[r'pinned'] = null;
    }
    return json;
  }

  /// Returns a new [DMPinnedList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DMPinnedList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DMPinnedList(
        pinned: mapValueOfType<Object>(json, r'pinned'),
      );
    }
    return null;
  }

  static List<DMPinnedList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DMPinnedList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DMPinnedList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DMPinnedList> mapFromJson(dynamic json) {
    final map = <String, DMPinnedList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DMPinnedList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DMPinnedList-objects as value to a dart map
  static Map<String, List<DMPinnedList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DMPinnedList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DMPinnedList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

