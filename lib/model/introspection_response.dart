//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class IntrospectionResponse {
  /// Returns a new [IntrospectionResponse] instance.
  IntrospectionResponse({
    required this.active,
    this.tokenType,
    this.clientId,
    this.userId,
    this.workspaceId,
    this.scope,
    this.exp,
  });

  bool active;

  /// `oauth` or `pat`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

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
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? exp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IntrospectionResponse &&
    other.active == active &&
    other.tokenType == tokenType &&
    other.clientId == clientId &&
    other.userId == userId &&
    other.workspaceId == workspaceId &&
    other.scope == scope &&
    other.exp == exp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active.hashCode) +
    (tokenType == null ? 0 : tokenType!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (exp == null ? 0 : exp!.hashCode);

  @override
  String toString() => 'IntrospectionResponse[active=$active, tokenType=$tokenType, clientId=$clientId, userId=$userId, workspaceId=$workspaceId, scope=$scope, exp=$exp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'active'] = this.active;
    if (this.tokenType != null) {
      json[r'token_type'] = this.tokenType;
    } else {
      json[r'token_type'] = null;
    }
    if (this.clientId != null) {
      json[r'client_id'] = this.clientId;
    } else {
      json[r'client_id'] = null;
    }
    if (this.userId != null) {
      json[r'user_id'] = this.userId;
    } else {
      json[r'user_id'] = null;
    }
    if (this.workspaceId != null) {
      json[r'workspace_id'] = this.workspaceId;
    } else {
      json[r'workspace_id'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.exp != null) {
      json[r'exp'] = this.exp;
    } else {
      json[r'exp'] = null;
    }
    return json;
  }

  /// Returns a new [IntrospectionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IntrospectionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'active'), 'Required key "IntrospectionResponse[active]" is missing from JSON.');
        assert(json[r'active'] != null, 'Required key "IntrospectionResponse[active]" has a null value in JSON.');
        return true;
      }());

      return IntrospectionResponse(
        active: mapValueOfType<bool>(json, r'active')!,
        tokenType: mapValueOfType<String>(json, r'token_type'),
        clientId: mapValueOfType<String>(json, r'client_id'),
        userId: mapValueOfType<String>(json, r'user_id'),
        workspaceId: mapValueOfType<String>(json, r'workspace_id'),
        scope: mapValueOfType<String>(json, r'scope'),
        exp: mapValueOfType<int>(json, r'exp'),
      );
    }
    return null;
  }

  static List<IntrospectionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IntrospectionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IntrospectionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IntrospectionResponse> mapFromJson(dynamic json) {
    final map = <String, IntrospectionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IntrospectionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IntrospectionResponse-objects as value to a dart map
  static Map<String, List<IntrospectionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IntrospectionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IntrospectionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'active',
  };
}

