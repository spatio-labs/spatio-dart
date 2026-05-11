//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateBlockRequest {
  /// Returns a new [UpdateBlockRequest] instance.
  UpdateBlockRequest({
    this.content,
    this.properties = const {},
    this.archived,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BlockContent? content;

  Map<String, Object> properties;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? archived;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateBlockRequest &&
    other.content == content &&
    _deepEquality.equals(other.properties, properties) &&
    other.archived == archived;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content == null ? 0 : content!.hashCode) +
    (properties.hashCode) +
    (archived == null ? 0 : archived!.hashCode);

  @override
  String toString() => 'UpdateBlockRequest[content=$content, properties=$properties, archived=$archived]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
      json[r'properties'] = this.properties;
    if (this.archived != null) {
      json[r'archived'] = this.archived;
    } else {
      json[r'archived'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateBlockRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateBlockRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UpdateBlockRequest(
        content: BlockContent.fromJson(json[r'content']),
        properties: mapCastOfType<String, Object>(json, r'properties') ?? const {},
        archived: mapValueOfType<bool>(json, r'archived'),
      );
    }
    return null;
  }

  static List<UpdateBlockRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateBlockRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateBlockRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateBlockRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateBlockRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateBlockRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateBlockRequest-objects as value to a dart map
  static Map<String, List<UpdateBlockRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateBlockRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateBlockRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

