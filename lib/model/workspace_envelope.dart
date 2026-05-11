//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class WorkspaceEnvelope {
  /// Returns a new [WorkspaceEnvelope] instance.
  WorkspaceEnvelope({
    required this.workspace,
  });

  Workspace workspace;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkspaceEnvelope &&
    other.workspace == workspace;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workspace.hashCode);

  @override
  String toString() => 'WorkspaceEnvelope[workspace=$workspace]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'workspace'] = this.workspace;
    return json;
  }

  /// Returns a new [WorkspaceEnvelope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkspaceEnvelope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'workspace'), 'Required key "WorkspaceEnvelope[workspace]" is missing from JSON.');
        assert(json[r'workspace'] != null, 'Required key "WorkspaceEnvelope[workspace]" has a null value in JSON.');
        return true;
      }());

      return WorkspaceEnvelope(
        workspace: Workspace.fromJson(json[r'workspace'])!,
      );
    }
    return null;
  }

  static List<WorkspaceEnvelope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkspaceEnvelope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkspaceEnvelope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkspaceEnvelope> mapFromJson(dynamic json) {
    final map = <String, WorkspaceEnvelope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkspaceEnvelope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkspaceEnvelope-objects as value to a dart map
  static Map<String, List<WorkspaceEnvelope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkspaceEnvelope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkspaceEnvelope.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'workspace',
  };
}

