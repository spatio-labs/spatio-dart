//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class WorkspaceInvitationListResponse {
  /// Returns a new [WorkspaceInvitationListResponse] instance.
  WorkspaceInvitationListResponse({
    this.invitations = const [],
  });

  List<WorkspaceInvitation> invitations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkspaceInvitationListResponse &&
    _deepEquality.equals(other.invitations, invitations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (invitations.hashCode);

  @override
  String toString() => 'WorkspaceInvitationListResponse[invitations=$invitations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'invitations'] = this.invitations;
    return json;
  }

  /// Returns a new [WorkspaceInvitationListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkspaceInvitationListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'invitations'), 'Required key "WorkspaceInvitationListResponse[invitations]" is missing from JSON.');
        assert(json[r'invitations'] != null, 'Required key "WorkspaceInvitationListResponse[invitations]" has a null value in JSON.');
        return true;
      }());

      return WorkspaceInvitationListResponse(
        invitations: WorkspaceInvitation.listFromJson(json[r'invitations']),
      );
    }
    return null;
  }

  static List<WorkspaceInvitationListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkspaceInvitationListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkspaceInvitationListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkspaceInvitationListResponse> mapFromJson(dynamic json) {
    final map = <String, WorkspaceInvitationListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkspaceInvitationListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkspaceInvitationListResponse-objects as value to a dart map
  static Map<String, List<WorkspaceInvitationListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkspaceInvitationListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkspaceInvitationListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'invitations',
  };
}

