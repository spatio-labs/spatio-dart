//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ExportPDFRequestRasterizedSlidesInner {
  /// Returns a new [ExportPDFRequestRasterizedSlidesInner] instance.
  ExportPDFRequestRasterizedSlidesInner({
    required this.slideId,
    required this.png,
  });

  String slideId;

  /// Base64-encoded PNG.
  String png;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportPDFRequestRasterizedSlidesInner &&
    other.slideId == slideId &&
    other.png == png;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (slideId.hashCode) +
    (png.hashCode);

  @override
  String toString() => 'ExportPDFRequestRasterizedSlidesInner[slideId=$slideId, png=$png]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'slideId'] = this.slideId;
      json[r'png'] = this.png;
    return json;
  }

  /// Returns a new [ExportPDFRequestRasterizedSlidesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportPDFRequestRasterizedSlidesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'slideId'), 'Required key "ExportPDFRequestRasterizedSlidesInner[slideId]" is missing from JSON.');
        assert(json[r'slideId'] != null, 'Required key "ExportPDFRequestRasterizedSlidesInner[slideId]" has a null value in JSON.');
        assert(json.containsKey(r'png'), 'Required key "ExportPDFRequestRasterizedSlidesInner[png]" is missing from JSON.');
        assert(json[r'png'] != null, 'Required key "ExportPDFRequestRasterizedSlidesInner[png]" has a null value in JSON.');
        return true;
      }());

      return ExportPDFRequestRasterizedSlidesInner(
        slideId: mapValueOfType<String>(json, r'slideId')!,
        png: mapValueOfType<String>(json, r'png')!,
      );
    }
    return null;
  }

  static List<ExportPDFRequestRasterizedSlidesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportPDFRequestRasterizedSlidesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportPDFRequestRasterizedSlidesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportPDFRequestRasterizedSlidesInner> mapFromJson(dynamic json) {
    final map = <String, ExportPDFRequestRasterizedSlidesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportPDFRequestRasterizedSlidesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportPDFRequestRasterizedSlidesInner-objects as value to a dart map
  static Map<String, List<ExportPDFRequestRasterizedSlidesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportPDFRequestRasterizedSlidesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportPDFRequestRasterizedSlidesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'slideId',
    'png',
  };
}

