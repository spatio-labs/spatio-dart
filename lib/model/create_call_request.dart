//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateCallRequest {
  /// Returns a new [CreateCallRequest] instance.
  CreateCallRequest({
    this.title,
    this.workspaceId,
    this.roomId,
    this.metadata = const {},
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
  String? workspaceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? roomId;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateCallRequest &&
    other.title == title &&
    other.workspaceId == workspaceId &&
    other.roomId == roomId &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (roomId == null ? 0 : roomId!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'CreateCallRequest[title=$title, workspaceId=$workspaceId, roomId=$roomId, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
    if (this.roomId != null) {
      json[r'roomId'] = this.roomId;
    } else {
      json[r'roomId'] = null;
    }
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [CreateCallRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCallRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return CreateCallRequest(
        title: mapValueOfType<String>(json, r'title'),
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
        roomId: mapValueOfType<String>(json, r'roomId'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<CreateCallRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateCallRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCallRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateCallRequest> mapFromJson(dynamic json) {
    final map = <String, CreateCallRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCallRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateCallRequest-objects as value to a dart map
  static Map<String, List<CreateCallRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateCallRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateCallRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

