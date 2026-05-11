//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateFolderRequest {
  /// Returns a new [CreateFolderRequest] instance.
  CreateFolderRequest({
    this.accountId,
    required this.name,
    this.parentId,
    this.workspaceId,
    this.organizationId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  String name;

  String? parentId;

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
  String? organizationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateFolderRequest &&
    other.accountId == accountId &&
    other.name == name &&
    other.parentId == parentId &&
    other.workspaceId == workspaceId &&
    other.organizationId == organizationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (name.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode);

  @override
  String toString() => 'CreateFolderRequest[accountId=$accountId, name=$name, parentId=$parentId, workspaceId=$workspaceId, organizationId=$organizationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
      json[r'name'] = this.name;
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
    if (this.organizationId != null) {
      json[r'organizationId'] = this.organizationId;
    } else {
      json[r'organizationId'] = null;
    }
    return json;
  }

  /// Returns a new [CreateFolderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateFolderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "CreateFolderRequest[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "CreateFolderRequest[name]" has a null value in JSON.');
        return true;
      }());

      return CreateFolderRequest(
        accountId: mapValueOfType<String>(json, r'accountId'),
        name: mapValueOfType<String>(json, r'name')!,
        parentId: mapValueOfType<String>(json, r'parentId'),
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
        organizationId: mapValueOfType<String>(json, r'organizationId'),
      );
    }
    return null;
  }

  static List<CreateFolderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateFolderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateFolderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateFolderRequest> mapFromJson(dynamic json) {
    final map = <String, CreateFolderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateFolderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateFolderRequest-objects as value to a dart map
  static Map<String, List<CreateFolderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateFolderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateFolderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

