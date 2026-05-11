//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ExecuteChatActionRequest {
  /// Returns a new [ExecuteChatActionRequest] instance.
  ExecuteChatActionRequest({
    required this.actionId,
    this.params,
  });

  String actionId;

  /// Action-specific parameters. Free-form because the shape depends on `action_id`. See `GET /actions` for the per-id contract. 
  Object? params;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExecuteChatActionRequest &&
    other.actionId == actionId &&
    other.params == params;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actionId.hashCode) +
    (params == null ? 0 : params!.hashCode);

  @override
  String toString() => 'ExecuteChatActionRequest[actionId=$actionId, params=$params]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action_id'] = this.actionId;
    if (this.params != null) {
      json[r'params'] = this.params;
    } else {
      json[r'params'] = null;
    }
    return json;
  }

  /// Returns a new [ExecuteChatActionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExecuteChatActionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'action_id'), 'Required key "ExecuteChatActionRequest[action_id]" is missing from JSON.');
        assert(json[r'action_id'] != null, 'Required key "ExecuteChatActionRequest[action_id]" has a null value in JSON.');
        return true;
      }());

      return ExecuteChatActionRequest(
        actionId: mapValueOfType<String>(json, r'action_id')!,
        params: mapValueOfType<Object>(json, r'params'),
      );
    }
    return null;
  }

  static List<ExecuteChatActionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExecuteChatActionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecuteChatActionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExecuteChatActionRequest> mapFromJson(dynamic json) {
    final map = <String, ExecuteChatActionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExecuteChatActionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExecuteChatActionRequest-objects as value to a dart map
  static Map<String, List<ExecuteChatActionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExecuteChatActionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExecuteChatActionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'action_id',
  };
}

