//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SlideList {
  /// Returns a new [SlideList] instance.
  SlideList({
    this.slides = const [],
    required this.total,
  });

  List<Slide> slides;

  int total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SlideList &&
    _deepEquality.equals(other.slides, slides) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (slides.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'SlideList[slides=$slides, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'slides'] = this.slides;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [SlideList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SlideList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'slides'), 'Required key "SlideList[slides]" is missing from JSON.');
        assert(json[r'slides'] != null, 'Required key "SlideList[slides]" has a null value in JSON.');
        assert(json.containsKey(r'total'), 'Required key "SlideList[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "SlideList[total]" has a null value in JSON.');
        return true;
      }());

      return SlideList(
        slides: Slide.listFromJson(json[r'slides']),
        total: mapValueOfType<int>(json, r'total')!,
      );
    }
    return null;
  }

  static List<SlideList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SlideList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SlideList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SlideList> mapFromJson(dynamic json) {
    final map = <String, SlideList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SlideList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SlideList-objects as value to a dart map
  static Map<String, List<SlideList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SlideList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SlideList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'slides',
    'total',
  };
}

