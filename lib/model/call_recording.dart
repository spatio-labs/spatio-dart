//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CallRecording {
  /// Returns a new [CallRecording] instance.
  CallRecording({
    required this.id,
    this.callId,
    this.status,
    this.startedAt,
    this.endedAt,
    this.url,
    this.metadata = const {},
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? callId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startedAt;

  DateTime? endedAt;

  String? url;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CallRecording &&
    other.id == id &&
    other.callId == callId &&
    other.status == status &&
    other.startedAt == startedAt &&
    other.endedAt == endedAt &&
    other.url == url &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (callId == null ? 0 : callId!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (endedAt == null ? 0 : endedAt!.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'CallRecording[id=$id, callId=$callId, status=$status, startedAt=$startedAt, endedAt=$endedAt, url=$url, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.callId != null) {
      json[r'callId'] = this.callId;
    } else {
      json[r'callId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'startedAt'] = null;
    }
    if (this.endedAt != null) {
      json[r'endedAt'] = this.endedAt!.toUtc().toIso8601String();
    } else {
      json[r'endedAt'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [CallRecording] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CallRecording? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "CallRecording[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "CallRecording[id]" has a null value in JSON.');
        return true;
      }());

      return CallRecording(
        id: mapValueOfType<String>(json, r'id')!,
        callId: mapValueOfType<String>(json, r'callId'),
        status: mapValueOfType<String>(json, r'status'),
        startedAt: mapDateTime(json, r'startedAt', r''),
        endedAt: mapDateTime(json, r'endedAt', r''),
        url: mapValueOfType<String>(json, r'url'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<CallRecording> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CallRecording>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CallRecording.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CallRecording> mapFromJson(dynamic json) {
    final map = <String, CallRecording>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CallRecording.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CallRecording-objects as value to a dart map
  static Map<String, List<CallRecording>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CallRecording>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CallRecording.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

