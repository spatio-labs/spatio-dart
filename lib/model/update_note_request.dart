//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateNoteRequest {
  /// Returns a new [UpdateNoteRequest] instance.
  UpdateNoteRequest({
    this.title,
    this.content,
    this.icon,
    this.coverImage,
    this.parentId,
    this.properties = const {},
    this.archived,
  });

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
  String? content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coverImage;

  String? parentId;

  Map<String, Object> properties;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? archived;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateNoteRequest &&
    other.title == title &&
    other.content == content &&
    other.icon == icon &&
    other.coverImage == coverImage &&
    other.parentId == parentId &&
    _deepEquality.equals(other.properties, properties) &&
    other.archived == archived;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (coverImage == null ? 0 : coverImage!.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (properties.hashCode) +
    (archived == null ? 0 : archived!.hashCode);

  @override
  String toString() => 'UpdateNoteRequest[title=$title, content=$content, icon=$icon, coverImage=$coverImage, parentId=$parentId, properties=$properties, archived=$archived]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.coverImage != null) {
      json[r'coverImage'] = this.coverImage;
    } else {
      json[r'coverImage'] = null;
    }
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
      json[r'properties'] = this.properties;
    if (this.archived != null) {
      json[r'archived'] = this.archived;
    } else {
      json[r'archived'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateNoteRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateNoteRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UpdateNoteRequest(
        title: mapValueOfType<String>(json, r'title'),
        content: mapValueOfType<String>(json, r'content'),
        icon: mapValueOfType<String>(json, r'icon'),
        coverImage: mapValueOfType<String>(json, r'coverImage'),
        parentId: mapValueOfType<String>(json, r'parentId'),
        properties: mapCastOfType<String, Object>(json, r'properties') ?? const {},
        archived: mapValueOfType<bool>(json, r'archived'),
      );
    }
    return null;
  }

  static List<UpdateNoteRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateNoteRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateNoteRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateNoteRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateNoteRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateNoteRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateNoteRequest-objects as value to a dart map
  static Map<String, List<UpdateNoteRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateNoteRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateNoteRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

