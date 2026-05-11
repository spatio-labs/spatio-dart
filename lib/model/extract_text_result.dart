//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ExtractTextResult {
  /// Returns a new [ExtractTextResult] instance.
  ExtractTextResult({
    required this.text,
    required this.pageCount,
    this.pages = const [],
    this.truncated,
  });

  String text;

  int pageCount;

  List<Map<String, Object>> pages;

  /// `true` when `maxChars` was hit before the end.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? truncated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractTextResult &&
    other.text == text &&
    other.pageCount == pageCount &&
    _deepEquality.equals(other.pages, pages) &&
    other.truncated == truncated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (text.hashCode) +
    (pageCount.hashCode) +
    (pages.hashCode) +
    (truncated == null ? 0 : truncated!.hashCode);

  @override
  String toString() => 'ExtractTextResult[text=$text, pageCount=$pageCount, pages=$pages, truncated=$truncated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'text'] = this.text;
      json[r'pageCount'] = this.pageCount;
      json[r'pages'] = this.pages;
    if (this.truncated != null) {
      json[r'truncated'] = this.truncated;
    } else {
      json[r'truncated'] = null;
    }
    return json;
  }

  /// Returns a new [ExtractTextResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractTextResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'text'), 'Required key "ExtractTextResult[text]" is missing from JSON.');
        assert(json[r'text'] != null, 'Required key "ExtractTextResult[text]" has a null value in JSON.');
        assert(json.containsKey(r'pageCount'), 'Required key "ExtractTextResult[pageCount]" is missing from JSON.');
        assert(json[r'pageCount'] != null, 'Required key "ExtractTextResult[pageCount]" has a null value in JSON.');
        return true;
      }());

      return ExtractTextResult(
        text: mapValueOfType<String>(json, r'text')!,
        pageCount: mapValueOfType<int>(json, r'pageCount')!,
        pages: Map.listFromJson(json[r'pages']),
        truncated: mapValueOfType<bool>(json, r'truncated'),
      );
    }
    return null;
  }

  static List<ExtractTextResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractTextResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractTextResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractTextResult> mapFromJson(dynamic json) {
    final map = <String, ExtractTextResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractTextResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractTextResult-objects as value to a dart map
  static Map<String, List<ExtractTextResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractTextResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractTextResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'text',
    'pageCount',
  };
}

