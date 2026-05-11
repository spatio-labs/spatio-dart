//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateParticipantStateRequest {
  /// Returns a new [UpdateParticipantStateRequest] instance.
  UpdateParticipantStateRequest({
    this.audioEnabled,
    this.videoEnabled,
    this.screenShareEnabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? audioEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? videoEnabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? screenShareEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateParticipantStateRequest &&
    other.audioEnabled == audioEnabled &&
    other.videoEnabled == videoEnabled &&
    other.screenShareEnabled == screenShareEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (audioEnabled == null ? 0 : audioEnabled!.hashCode) +
    (videoEnabled == null ? 0 : videoEnabled!.hashCode) +
    (screenShareEnabled == null ? 0 : screenShareEnabled!.hashCode);

  @override
  String toString() => 'UpdateParticipantStateRequest[audioEnabled=$audioEnabled, videoEnabled=$videoEnabled, screenShareEnabled=$screenShareEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.audioEnabled != null) {
      json[r'audioEnabled'] = this.audioEnabled;
    } else {
      json[r'audioEnabled'] = null;
    }
    if (this.videoEnabled != null) {
      json[r'videoEnabled'] = this.videoEnabled;
    } else {
      json[r'videoEnabled'] = null;
    }
    if (this.screenShareEnabled != null) {
      json[r'screenShareEnabled'] = this.screenShareEnabled;
    } else {
      json[r'screenShareEnabled'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateParticipantStateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateParticipantStateRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UpdateParticipantStateRequest(
        audioEnabled: mapValueOfType<bool>(json, r'audioEnabled'),
        videoEnabled: mapValueOfType<bool>(json, r'videoEnabled'),
        screenShareEnabled: mapValueOfType<bool>(json, r'screenShareEnabled'),
      );
    }
    return null;
  }

  static List<UpdateParticipantStateRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateParticipantStateRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateParticipantStateRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateParticipantStateRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateParticipantStateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateParticipantStateRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateParticipantStateRequest-objects as value to a dart map
  static Map<String, List<UpdateParticipantStateRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateParticipantStateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateParticipantStateRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

