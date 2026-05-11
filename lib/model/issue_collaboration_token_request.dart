//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class IssueCollaborationTokenRequest {
  /// Returns a new [IssueCollaborationTokenRequest] instance.
  IssueCollaborationTokenRequest({
    this.room,
  });

  /// Optional `<type>:<id>` room identifier (e.g. `note:abc123`). When set, the JWT only authorizes this single room. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? room;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssueCollaborationTokenRequest &&
    other.room == room;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (room == null ? 0 : room!.hashCode);

  @override
  String toString() => 'IssueCollaborationTokenRequest[room=$room]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.room != null) {
      json[r'room'] = this.room;
    } else {
      json[r'room'] = null;
    }
    return json;
  }

  /// Returns a new [IssueCollaborationTokenRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssueCollaborationTokenRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return IssueCollaborationTokenRequest(
        room: mapValueOfType<String>(json, r'room'),
      );
    }
    return null;
  }

  static List<IssueCollaborationTokenRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssueCollaborationTokenRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssueCollaborationTokenRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssueCollaborationTokenRequest> mapFromJson(dynamic json) {
    final map = <String, IssueCollaborationTokenRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssueCollaborationTokenRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssueCollaborationTokenRequest-objects as value to a dart map
  static Map<String, List<IssueCollaborationTokenRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssueCollaborationTokenRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssueCollaborationTokenRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

