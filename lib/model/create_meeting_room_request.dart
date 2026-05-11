//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateMeetingRoomRequest {
  /// Returns a new [CreateMeetingRoomRequest] instance.
  CreateMeetingRoomRequest({
    required this.name,
    this.workspaceId,
  });

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workspaceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateMeetingRoomRequest &&
    other.name == name &&
    other.workspaceId == workspaceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode);

  @override
  String toString() => 'CreateMeetingRoomRequest[name=$name, workspaceId=$workspaceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
    return json;
  }

  /// Returns a new [CreateMeetingRoomRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateMeetingRoomRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "CreateMeetingRoomRequest[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "CreateMeetingRoomRequest[name]" has a null value in JSON.');
        return true;
      }());

      return CreateMeetingRoomRequest(
        name: mapValueOfType<String>(json, r'name')!,
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
      );
    }
    return null;
  }

  static List<CreateMeetingRoomRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateMeetingRoomRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateMeetingRoomRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateMeetingRoomRequest> mapFromJson(dynamic json) {
    final map = <String, CreateMeetingRoomRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateMeetingRoomRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateMeetingRoomRequest-objects as value to a dart map
  static Map<String, List<CreateMeetingRoomRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateMeetingRoomRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateMeetingRoomRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

