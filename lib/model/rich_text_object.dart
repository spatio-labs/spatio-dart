//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class RichTextObject {
  /// Returns a new [RichTextObject] instance.
  RichTextObject({
    required this.type,
    this.text,
    this.annotations,
    this.href,
  });

  RichTextObjectTypeEnum type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TextAnnotations? annotations;

  /// External URL (`https://…`) or internal note anchor (`#blockId`, `#heading-slug`). Internal anchors resolve to the matching block in the same note. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? href;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RichTextObject &&
    other.type == type &&
    other.text == text &&
    other.annotations == annotations &&
    other.href == href;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (annotations == null ? 0 : annotations!.hashCode) +
    (href == null ? 0 : href!.hashCode);

  @override
  String toString() => 'RichTextObject[type=$type, text=$text, annotations=$annotations, href=$href]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.annotations != null) {
      json[r'annotations'] = this.annotations;
    } else {
      json[r'annotations'] = null;
    }
    if (this.href != null) {
      json[r'href'] = this.href;
    } else {
      json[r'href'] = null;
    }
    return json;
  }

  /// Returns a new [RichTextObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RichTextObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'type'), 'Required key "RichTextObject[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "RichTextObject[type]" has a null value in JSON.');
        return true;
      }());

      return RichTextObject(
        type: RichTextObjectTypeEnum.fromJson(json[r'type'])!,
        text: mapValueOfType<String>(json, r'text'),
        annotations: TextAnnotations.fromJson(json[r'annotations']),
        href: mapValueOfType<String>(json, r'href'),
      );
    }
    return null;
  }

  static List<RichTextObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RichTextObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RichTextObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RichTextObject> mapFromJson(dynamic json) {
    final map = <String, RichTextObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RichTextObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RichTextObject-objects as value to a dart map
  static Map<String, List<RichTextObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RichTextObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RichTextObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
  };
}


class RichTextObjectTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RichTextObjectTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const text = RichTextObjectTypeEnum._(r'text');
  static const mention = RichTextObjectTypeEnum._(r'mention');
  static const equation = RichTextObjectTypeEnum._(r'equation');

  /// List of all possible values in this [enum][RichTextObjectTypeEnum].
  static const values = <RichTextObjectTypeEnum>[
    text,
    mention,
    equation,
  ];

  static RichTextObjectTypeEnum? fromJson(dynamic value) => RichTextObjectTypeEnumTypeTransformer().decode(value);

  static List<RichTextObjectTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RichTextObjectTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RichTextObjectTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RichTextObjectTypeEnum] to String,
/// and [decode] dynamic data back to [RichTextObjectTypeEnum].
class RichTextObjectTypeEnumTypeTransformer {
  factory RichTextObjectTypeEnumTypeTransformer() => _instance ??= const RichTextObjectTypeEnumTypeTransformer._();

  const RichTextObjectTypeEnumTypeTransformer._();

  String encode(RichTextObjectTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RichTextObjectTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RichTextObjectTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'text': return RichTextObjectTypeEnum.text;
        case r'mention': return RichTextObjectTypeEnum.mention;
        case r'equation': return RichTextObjectTypeEnum.equation;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RichTextObjectTypeEnumTypeTransformer] instance.
  static RichTextObjectTypeEnumTypeTransformer? _instance;
}


