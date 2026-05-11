//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ListEventsData {
  /// Returns a new [ListEventsData] instance.
  ListEventsData({
    this.events = const [],
    this.nextPageToken,
    this.totalResults,
    required this.updatedAt,
  });

  /// `null` when there are no results (Go nil-slice serialization). 
  List<SpatioEvent>? events;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextPageToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalResults;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListEventsData &&
    _deepEquality.equals(other.events, events) &&
    other.nextPageToken == nextPageToken &&
    other.totalResults == totalResults &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (events == null ? 0 : events!.hashCode) +
    (nextPageToken == null ? 0 : nextPageToken!.hashCode) +
    (totalResults == null ? 0 : totalResults!.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'ListEventsData[events=$events, nextPageToken=$nextPageToken, totalResults=$totalResults, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.events != null) {
      json[r'events'] = this.events;
    } else {
      json[r'events'] = null;
    }
    if (this.nextPageToken != null) {
      json[r'next_page_token'] = this.nextPageToken;
    } else {
      json[r'next_page_token'] = null;
    }
    if (this.totalResults != null) {
      json[r'total_results'] = this.totalResults;
    } else {
      json[r'total_results'] = null;
    }
      json[r'updated_at'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ListEventsData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListEventsData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'updated_at'), 'Required key "ListEventsData[updated_at]" is missing from JSON.');
        assert(json[r'updated_at'] != null, 'Required key "ListEventsData[updated_at]" has a null value in JSON.');
        return true;
      }());

      return ListEventsData(
        events: SpatioEvent.listFromJson(json[r'events']),
        nextPageToken: mapValueOfType<String>(json, r'next_page_token'),
        totalResults: mapValueOfType<int>(json, r'total_results'),
        updatedAt: mapDateTime(json, r'updated_at', r'')!,
      );
    }
    return null;
  }

  static List<ListEventsData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListEventsData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListEventsData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListEventsData> mapFromJson(dynamic json) {
    final map = <String, ListEventsData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListEventsData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListEventsData-objects as value to a dart map
  static Map<String, List<ListEventsData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListEventsData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListEventsData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'updated_at',
  };
}

