//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ProposeRecommendationRequest {
  /// Returns a new [ProposeRecommendationRequest] instance.
  ProposeRecommendationRequest({
    this.workspaceId,
    required this.kind,
    this.title,
    this.body,
    this.payload = const {},
    this.expiresAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workspaceId;

  String kind;

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
  String? body;

  Map<String, Object> payload;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProposeRecommendationRequest &&
    other.workspaceId == workspaceId &&
    other.kind == kind &&
    other.title == title &&
    other.body == body &&
    _deepEquality.equals(other.payload, payload) &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (kind.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (payload.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode);

  @override
  String toString() => 'ProposeRecommendationRequest[workspaceId=$workspaceId, kind=$kind, title=$title, body=$body, payload=$payload, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
      json[r'kind'] = this.kind;
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
      json[r'payload'] = this.payload;
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    return json;
  }

  /// Returns a new [ProposeRecommendationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProposeRecommendationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'kind'), 'Required key "ProposeRecommendationRequest[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "ProposeRecommendationRequest[kind]" has a null value in JSON.');
        return true;
      }());

      return ProposeRecommendationRequest(
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
        kind: mapValueOfType<String>(json, r'kind')!,
        title: mapValueOfType<String>(json, r'title'),
        body: mapValueOfType<String>(json, r'body'),
        payload: mapCastOfType<String, Object>(json, r'payload') ?? const {},
        expiresAt: mapDateTime(json, r'expiresAt', r''),
      );
    }
    return null;
  }

  static List<ProposeRecommendationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProposeRecommendationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProposeRecommendationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProposeRecommendationRequest> mapFromJson(dynamic json) {
    final map = <String, ProposeRecommendationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProposeRecommendationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProposeRecommendationRequest-objects as value to a dart map
  static Map<String, List<ProposeRecommendationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProposeRecommendationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProposeRecommendationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kind',
  };
}

