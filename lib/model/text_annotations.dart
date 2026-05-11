//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class TextAnnotations {
  /// Returns a new [TextAnnotations] instance.
  TextAnnotations({
    required this.bold,
    required this.italic,
    required this.strikethrough,
    required this.underline,
    required this.code,
    this.color,
  });

  bool bold;

  bool italic;

  bool strikethrough;

  bool underline;

  bool code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TextAnnotations &&
    other.bold == bold &&
    other.italic == italic &&
    other.strikethrough == strikethrough &&
    other.underline == underline &&
    other.code == code &&
    other.color == color;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bold.hashCode) +
    (italic.hashCode) +
    (strikethrough.hashCode) +
    (underline.hashCode) +
    (code.hashCode) +
    (color == null ? 0 : color!.hashCode);

  @override
  String toString() => 'TextAnnotations[bold=$bold, italic=$italic, strikethrough=$strikethrough, underline=$underline, code=$code, color=$color]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bold'] = this.bold;
      json[r'italic'] = this.italic;
      json[r'strikethrough'] = this.strikethrough;
      json[r'underline'] = this.underline;
      json[r'code'] = this.code;
    if (this.color != null) {
      json[r'color'] = this.color;
    } else {
      json[r'color'] = null;
    }
    return json;
  }

  /// Returns a new [TextAnnotations] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TextAnnotations? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'bold'), 'Required key "TextAnnotations[bold]" is missing from JSON.');
        assert(json[r'bold'] != null, 'Required key "TextAnnotations[bold]" has a null value in JSON.');
        assert(json.containsKey(r'italic'), 'Required key "TextAnnotations[italic]" is missing from JSON.');
        assert(json[r'italic'] != null, 'Required key "TextAnnotations[italic]" has a null value in JSON.');
        assert(json.containsKey(r'strikethrough'), 'Required key "TextAnnotations[strikethrough]" is missing from JSON.');
        assert(json[r'strikethrough'] != null, 'Required key "TextAnnotations[strikethrough]" has a null value in JSON.');
        assert(json.containsKey(r'underline'), 'Required key "TextAnnotations[underline]" is missing from JSON.');
        assert(json[r'underline'] != null, 'Required key "TextAnnotations[underline]" has a null value in JSON.');
        assert(json.containsKey(r'code'), 'Required key "TextAnnotations[code]" is missing from JSON.');
        assert(json[r'code'] != null, 'Required key "TextAnnotations[code]" has a null value in JSON.');
        return true;
      }());

      return TextAnnotations(
        bold: mapValueOfType<bool>(json, r'bold')!,
        italic: mapValueOfType<bool>(json, r'italic')!,
        strikethrough: mapValueOfType<bool>(json, r'strikethrough')!,
        underline: mapValueOfType<bool>(json, r'underline')!,
        code: mapValueOfType<bool>(json, r'code')!,
        color: mapValueOfType<String>(json, r'color'),
      );
    }
    return null;
  }

  static List<TextAnnotations> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TextAnnotations>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TextAnnotations.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TextAnnotations> mapFromJson(dynamic json) {
    final map = <String, TextAnnotations>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TextAnnotations.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TextAnnotations-objects as value to a dart map
  static Map<String, List<TextAnnotations>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TextAnnotations>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TextAnnotations.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bold',
    'italic',
    'strikethrough',
    'underline',
    'code',
  };
}

