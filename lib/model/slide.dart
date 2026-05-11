//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Slide {
  /// Returns a new [Slide] instance.
  Slide({
    required this.id,
    this.provider,
    this.accountId,
    required this.presentationId,
    required this.title,
    this.notes,
    this.layout,
    this.backgroundColor,
    this.backgroundImageUrl,
    this.textColor,
    this.transition,
    required this.position,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  String presentationId;

  String title;

  /// Speaker notes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notes;

  /// Free-form layout id. Provider-specific (`title`, `two-column`, `image-left`, custom). Not enumerated to avoid forcing a breaking change every time a provider adds one. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? layout;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backgroundColor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backgroundImageUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? textColor;

  /// Free-form transition id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transition;

  /// Zero-based position within the presentation.
  int position;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Slide &&
    other.id == id &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.presentationId == presentationId &&
    other.title == title &&
    other.notes == notes &&
    other.layout == layout &&
    other.backgroundColor == backgroundColor &&
    other.backgroundImageUrl == backgroundImageUrl &&
    other.textColor == textColor &&
    other.transition == transition &&
    other.position == position &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (presentationId.hashCode) +
    (title.hashCode) +
    (notes == null ? 0 : notes!.hashCode) +
    (layout == null ? 0 : layout!.hashCode) +
    (backgroundColor == null ? 0 : backgroundColor!.hashCode) +
    (backgroundImageUrl == null ? 0 : backgroundImageUrl!.hashCode) +
    (textColor == null ? 0 : textColor!.hashCode) +
    (transition == null ? 0 : transition!.hashCode) +
    (position.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Slide[id=$id, provider=$provider, accountId=$accountId, presentationId=$presentationId, title=$title, notes=$notes, layout=$layout, backgroundColor=$backgroundColor, backgroundImageUrl=$backgroundImageUrl, textColor=$textColor, transition=$transition, position=$position, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
      json[r'presentationId'] = this.presentationId;
      json[r'title'] = this.title;
    if (this.notes != null) {
      json[r'notes'] = this.notes;
    } else {
      json[r'notes'] = null;
    }
    if (this.layout != null) {
      json[r'layout'] = this.layout;
    } else {
      json[r'layout'] = null;
    }
    if (this.backgroundColor != null) {
      json[r'backgroundColor'] = this.backgroundColor;
    } else {
      json[r'backgroundColor'] = null;
    }
    if (this.backgroundImageUrl != null) {
      json[r'backgroundImageUrl'] = this.backgroundImageUrl;
    } else {
      json[r'backgroundImageUrl'] = null;
    }
    if (this.textColor != null) {
      json[r'textColor'] = this.textColor;
    } else {
      json[r'textColor'] = null;
    }
    if (this.transition != null) {
      json[r'transition'] = this.transition;
    } else {
      json[r'transition'] = null;
    }
      json[r'position'] = this.position;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Slide] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Slide? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Slide[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Slide[id]" has a null value in JSON.');
        assert(json.containsKey(r'presentationId'), 'Required key "Slide[presentationId]" is missing from JSON.');
        assert(json[r'presentationId'] != null, 'Required key "Slide[presentationId]" has a null value in JSON.');
        assert(json.containsKey(r'title'), 'Required key "Slide[title]" is missing from JSON.');
        assert(json[r'title'] != null, 'Required key "Slide[title]" has a null value in JSON.');
        assert(json.containsKey(r'position'), 'Required key "Slide[position]" is missing from JSON.');
        assert(json[r'position'] != null, 'Required key "Slide[position]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "Slide[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "Slide[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "Slide[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "Slide[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return Slide(
        id: mapValueOfType<String>(json, r'id')!,
        provider: mapValueOfType<String>(json, r'provider'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        presentationId: mapValueOfType<String>(json, r'presentationId')!,
        title: mapValueOfType<String>(json, r'title')!,
        notes: mapValueOfType<String>(json, r'notes'),
        layout: mapValueOfType<String>(json, r'layout'),
        backgroundColor: mapValueOfType<String>(json, r'backgroundColor'),
        backgroundImageUrl: mapValueOfType<String>(json, r'backgroundImageUrl'),
        textColor: mapValueOfType<String>(json, r'textColor'),
        transition: mapValueOfType<String>(json, r'transition'),
        position: mapValueOfType<int>(json, r'position')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<Slide> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Slide>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Slide.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Slide> mapFromJson(dynamic json) {
    final map = <String, Slide>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Slide.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Slide-objects as value to a dart map
  static Map<String, List<Slide>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Slide>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Slide.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'presentationId',
    'title',
    'position',
    'createdAt',
    'updatedAt',
  };
}

