//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SlideElementList {
  /// Returns a new [SlideElementList] instance.
  SlideElementList({
    this.elements = const [],
    required this.total,
  });

  List<SlideElement> elements;

  int total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SlideElementList &&
    _deepEquality.equals(other.elements, elements) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (elements.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'SlideElementList[elements=$elements, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'elements'] = this.elements;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [SlideElementList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SlideElementList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'elements'), 'Required key "SlideElementList[elements]" is missing from JSON.');
        assert(json[r'elements'] != null, 'Required key "SlideElementList[elements]" has a null value in JSON.');
        assert(json.containsKey(r'total'), 'Required key "SlideElementList[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "SlideElementList[total]" has a null value in JSON.');
        return true;
      }());

      return SlideElementList(
        elements: SlideElement.listFromJson(json[r'elements']),
        total: mapValueOfType<int>(json, r'total')!,
      );
    }
    return null;
  }

  static List<SlideElementList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SlideElementList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SlideElementList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SlideElementList> mapFromJson(dynamic json) {
    final map = <String, SlideElementList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SlideElementList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SlideElementList-objects as value to a dart map
  static Map<String, List<SlideElementList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SlideElementList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SlideElementList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'elements',
    'total',
  };
}

