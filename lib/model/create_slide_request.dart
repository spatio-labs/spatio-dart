//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateSlideRequest {
  /// Returns a new [CreateSlideRequest] instance.
  CreateSlideRequest({
    this.presentationId,
    this.title,
    this.notes,
    this.layout,
    this.backgroundColor,
    this.backgroundImageUrl,
    this.textColor,
    this.transition,
    this.position,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? presentationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? notes;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? position;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSlideRequest &&
    other.presentationId == presentationId &&
    other.title == title &&
    other.notes == notes &&
    other.layout == layout &&
    other.backgroundColor == backgroundColor &&
    other.backgroundImageUrl == backgroundImageUrl &&
    other.textColor == textColor &&
    other.transition == transition &&
    other.position == position;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (presentationId == null ? 0 : presentationId!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (notes == null ? 0 : notes!.hashCode) +
    (layout == null ? 0 : layout!.hashCode) +
    (backgroundColor == null ? 0 : backgroundColor!.hashCode) +
    (backgroundImageUrl == null ? 0 : backgroundImageUrl!.hashCode) +
    (textColor == null ? 0 : textColor!.hashCode) +
    (transition == null ? 0 : transition!.hashCode) +
    (position == null ? 0 : position!.hashCode);

  @override
  String toString() => 'CreateSlideRequest[presentationId=$presentationId, title=$title, notes=$notes, layout=$layout, backgroundColor=$backgroundColor, backgroundImageUrl=$backgroundImageUrl, textColor=$textColor, transition=$transition, position=$position]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.presentationId != null) {
      json[r'presentationId'] = this.presentationId;
    } else {
      json[r'presentationId'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
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
    if (this.position != null) {
      json[r'position'] = this.position;
    } else {
      json[r'position'] = null;
    }
    return json;
  }

  /// Returns a new [CreateSlideRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSlideRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return CreateSlideRequest(
        presentationId: mapValueOfType<String>(json, r'presentationId'),
        title: mapValueOfType<String>(json, r'title'),
        notes: mapValueOfType<String>(json, r'notes'),
        layout: mapValueOfType<String>(json, r'layout'),
        backgroundColor: mapValueOfType<String>(json, r'backgroundColor'),
        backgroundImageUrl: mapValueOfType<String>(json, r'backgroundImageUrl'),
        textColor: mapValueOfType<String>(json, r'textColor'),
        transition: mapValueOfType<String>(json, r'transition'),
        position: mapValueOfType<int>(json, r'position'),
      );
    }
    return null;
  }

  static List<CreateSlideRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSlideRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSlideRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSlideRequest> mapFromJson(dynamic json) {
    final map = <String, CreateSlideRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSlideRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSlideRequest-objects as value to a dart map
  static Map<String, List<CreateSlideRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSlideRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateSlideRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

