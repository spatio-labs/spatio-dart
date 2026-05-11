//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateConversationRequest {
  /// Returns a new [UpdateConversationRequest] instance.
  UpdateConversationRequest({
    this.title,
    this.context,
    this.cwd,
    this.sessionId,
    this.pinned,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? context;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cwd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? pinned;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateConversationRequest &&
    other.title == title &&
    other.context == context &&
    other.cwd == cwd &&
    other.sessionId == sessionId &&
    other.pinned == pinned;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (context == null ? 0 : context!.hashCode) +
    (cwd == null ? 0 : cwd!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (pinned == null ? 0 : pinned!.hashCode);

  @override
  String toString() => 'UpdateConversationRequest[title=$title, context=$context, cwd=$cwd, sessionId=$sessionId, pinned=$pinned]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.context != null) {
      json[r'context'] = this.context;
    } else {
      json[r'context'] = null;
    }
    if (this.cwd != null) {
      json[r'cwd'] = this.cwd;
    } else {
      json[r'cwd'] = null;
    }
    if (this.sessionId != null) {
      json[r'session_id'] = this.sessionId;
    } else {
      json[r'session_id'] = null;
    }
    if (this.pinned != null) {
      json[r'pinned'] = this.pinned;
    } else {
      json[r'pinned'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateConversationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateConversationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UpdateConversationRequest(
        title: mapValueOfType<String>(json, r'title'),
        context: mapValueOfType<String>(json, r'context'),
        cwd: mapValueOfType<String>(json, r'cwd'),
        sessionId: mapValueOfType<String>(json, r'session_id'),
        pinned: mapValueOfType<bool>(json, r'pinned'),
      );
    }
    return null;
  }

  static List<UpdateConversationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateConversationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateConversationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateConversationRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateConversationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateConversationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateConversationRequest-objects as value to a dart map
  static Map<String, List<UpdateConversationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateConversationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateConversationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

