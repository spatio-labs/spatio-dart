//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class WorkspaceMemberListResponse {
  /// Returns a new [WorkspaceMemberListResponse] instance.
  WorkspaceMemberListResponse({
    this.members = const [],
    this.total,
  });

  List<WorkspaceMember> members;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkspaceMemberListResponse &&
    _deepEquality.equals(other.members, members) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (members.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'WorkspaceMemberListResponse[members=$members, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'members'] = this.members;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [WorkspaceMemberListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkspaceMemberListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'members'), 'Required key "WorkspaceMemberListResponse[members]" is missing from JSON.');
        assert(json[r'members'] != null, 'Required key "WorkspaceMemberListResponse[members]" has a null value in JSON.');
        return true;
      }());

      return WorkspaceMemberListResponse(
        members: WorkspaceMember.listFromJson(json[r'members']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<WorkspaceMemberListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkspaceMemberListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkspaceMemberListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkspaceMemberListResponse> mapFromJson(dynamic json) {
    final map = <String, WorkspaceMemberListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkspaceMemberListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkspaceMemberListResponse-objects as value to a dart map
  static Map<String, List<WorkspaceMemberListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkspaceMemberListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkspaceMemberListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'members',
  };
}

