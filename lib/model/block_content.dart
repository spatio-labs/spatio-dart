//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BlockContent {
  /// Returns a new [BlockContent] instance.
  BlockContent({
    this.richText = const [],
    this.language,
    this.checked,
    this.icon,
    this.color,
    this.url,
    this.caption,
    this.altText,
    this.embedUrl,
    this.cells = const [],
    this.expression,
  });

  List<RichTextObject> richText;

  /// Programming language for `code` blocks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  /// Toggle state for `to_do` blocks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? checked;

  /// Emoji or short string for `callout` blocks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  /// Theme color for `callout` blocks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? color;

  /// Source URL for `image`, `video`, `file` blocks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  /// Visible caption for media blocks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? caption;

  /// Screen-reader description for media blocks. Distinct from `caption` (visible to readers) — required for accessible notes when the image conveys meaning. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? altText;

  /// Source URL for `embed` blocks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? embedUrl;

  /// 2D rich-text grid for `table` and `table_row` blocks.
  List<List<RichTextObject>> cells;

  /// TeX/MathJax expression for `equation` blocks.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expression;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlockContent &&
    _deepEquality.equals(other.richText, richText) &&
    other.language == language &&
    other.checked == checked &&
    other.icon == icon &&
    other.color == color &&
    other.url == url &&
    other.caption == caption &&
    other.altText == altText &&
    other.embedUrl == embedUrl &&
    _deepEquality.equals(other.cells, cells) &&
    other.expression == expression;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (richText.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (checked == null ? 0 : checked!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (color == null ? 0 : color!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (caption == null ? 0 : caption!.hashCode) +
    (altText == null ? 0 : altText!.hashCode) +
    (embedUrl == null ? 0 : embedUrl!.hashCode) +
    (cells.hashCode) +
    (expression == null ? 0 : expression!.hashCode);

  @override
  String toString() => 'BlockContent[richText=$richText, language=$language, checked=$checked, icon=$icon, color=$color, url=$url, caption=$caption, altText=$altText, embedUrl=$embedUrl, cells=$cells, expression=$expression]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rich_text'] = this.richText;
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.checked != null) {
      json[r'checked'] = this.checked;
    } else {
      json[r'checked'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.color != null) {
      json[r'color'] = this.color;
    } else {
      json[r'color'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.caption != null) {
      json[r'caption'] = this.caption;
    } else {
      json[r'caption'] = null;
    }
    if (this.altText != null) {
      json[r'alt_text'] = this.altText;
    } else {
      json[r'alt_text'] = null;
    }
    if (this.embedUrl != null) {
      json[r'embed_url'] = this.embedUrl;
    } else {
      json[r'embed_url'] = null;
    }
      json[r'cells'] = this.cells;
    if (this.expression != null) {
      json[r'expression'] = this.expression;
    } else {
      json[r'expression'] = null;
    }
    return json;
  }

  /// Returns a new [BlockContent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlockContent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BlockContent(
        richText: RichTextObject.listFromJson(json[r'rich_text']),
        language: mapValueOfType<String>(json, r'language'),
        checked: mapValueOfType<bool>(json, r'checked'),
        icon: mapValueOfType<String>(json, r'icon'),
        color: mapValueOfType<String>(json, r'color'),
        url: mapValueOfType<String>(json, r'url'),
        caption: mapValueOfType<String>(json, r'caption'),
        altText: mapValueOfType<String>(json, r'alt_text'),
        embedUrl: mapValueOfType<String>(json, r'embed_url'),
        cells: json[r'cells'] is List
          ? (json[r'cells'] as List).map((e) =>
              RichTextObject.listFromJson(json[r'cells'])
            ).toList()
          :  const [],
        expression: mapValueOfType<String>(json, r'expression'),
      );
    }
    return null;
  }

  static List<BlockContent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlockContent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlockContent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlockContent> mapFromJson(dynamic json) {
    final map = <String, BlockContent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlockContent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlockContent-objects as value to a dart map
  static Map<String, List<BlockContent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlockContent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlockContent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

