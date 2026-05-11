//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ExecuteActionRequest {
  /// Returns a new [ExecuteActionRequest] instance.
  ExecuteActionRequest({
    required this.actionId,
    this.params = const {},
    this.accountId,
  });

  String actionId;

  Map<String, Object> params;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExecuteActionRequest &&
    other.actionId == actionId &&
    _deepEquality.equals(other.params, params) &&
    other.accountId == accountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actionId.hashCode) +
    (params.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode);

  @override
  String toString() => 'ExecuteActionRequest[actionId=$actionId, params=$params, accountId=$accountId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'actionId'] = this.actionId;
      json[r'params'] = this.params;
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    return json;
  }

  /// Returns a new [ExecuteActionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExecuteActionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'actionId'), 'Required key "ExecuteActionRequest[actionId]" is missing from JSON.');
        assert(json[r'actionId'] != null, 'Required key "ExecuteActionRequest[actionId]" has a null value in JSON.');
        return true;
      }());

      return ExecuteActionRequest(
        actionId: mapValueOfType<String>(json, r'actionId')!,
        params: mapCastOfType<String, Object>(json, r'params') ?? const {},
        accountId: mapValueOfType<String>(json, r'accountId'),
      );
    }
    return null;
  }

  static List<ExecuteActionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExecuteActionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecuteActionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExecuteActionRequest> mapFromJson(dynamic json) {
    final map = <String, ExecuteActionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExecuteActionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExecuteActionRequest-objects as value to a dart map
  static Map<String, List<ExecuteActionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExecuteActionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExecuteActionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'actionId',
  };
}

