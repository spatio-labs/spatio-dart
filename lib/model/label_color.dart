//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class LabelColor {
  /// Returns a new [LabelColor] instance.
  LabelColor({
    required this.textColor,
    required this.backgroundColor,
  });

  String textColor;

  String backgroundColor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LabelColor &&
    other.textColor == textColor &&
    other.backgroundColor == backgroundColor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (textColor.hashCode) +
    (backgroundColor.hashCode);

  @override
  String toString() => 'LabelColor[textColor=$textColor, backgroundColor=$backgroundColor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'textColor'] = this.textColor;
      json[r'backgroundColor'] = this.backgroundColor;
    return json;
  }

  /// Returns a new [LabelColor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LabelColor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'textColor'), 'Required key "LabelColor[textColor]" is missing from JSON.');
        assert(json[r'textColor'] != null, 'Required key "LabelColor[textColor]" has a null value in JSON.');
        assert(json.containsKey(r'backgroundColor'), 'Required key "LabelColor[backgroundColor]" is missing from JSON.');
        assert(json[r'backgroundColor'] != null, 'Required key "LabelColor[backgroundColor]" has a null value in JSON.');
        return true;
      }());

      return LabelColor(
        textColor: mapValueOfType<String>(json, r'textColor')!,
        backgroundColor: mapValueOfType<String>(json, r'backgroundColor')!,
      );
    }
    return null;
  }

  static List<LabelColor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LabelColor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LabelColor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LabelColor> mapFromJson(dynamic json) {
    final map = <String, LabelColor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LabelColor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LabelColor-objects as value to a dart map
  static Map<String, List<LabelColor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LabelColor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LabelColor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'textColor',
    'backgroundColor',
  };
}

