//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ExportPDFRequest {
  /// Returns a new [ExportPDFRequest] instance.
  ExportPDFRequest({
    this.rasterizedSlides = const [],
    this.theme = const {},
  });

  List<ExportPDFRequestRasterizedSlidesInner> rasterizedSlides;

  /// Optional palette override. Schemaless — the export sidecar accepts a free-form palette object. Treat as opaque. 
  Map<String, Object> theme;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportPDFRequest &&
    _deepEquality.equals(other.rasterizedSlides, rasterizedSlides) &&
    _deepEquality.equals(other.theme, theme);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rasterizedSlides.hashCode) +
    (theme.hashCode);

  @override
  String toString() => 'ExportPDFRequest[rasterizedSlides=$rasterizedSlides, theme=$theme]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rasterizedSlides'] = this.rasterizedSlides;
      json[r'theme'] = this.theme;
    return json;
  }

  /// Returns a new [ExportPDFRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportPDFRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ExportPDFRequest(
        rasterizedSlides: ExportPDFRequestRasterizedSlidesInner.listFromJson(json[r'rasterizedSlides']),
        theme: mapCastOfType<String, Object>(json, r'theme') ?? const {},
      );
    }
    return null;
  }

  static List<ExportPDFRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportPDFRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportPDFRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportPDFRequest> mapFromJson(dynamic json) {
    final map = <String, ExportPDFRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportPDFRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportPDFRequest-objects as value to a dart map
  static Map<String, List<ExportPDFRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportPDFRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportPDFRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

