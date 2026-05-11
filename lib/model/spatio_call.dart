//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SpatioCall {
  /// Returns a new [SpatioCall] instance.
  SpatioCall({
    required this.id,
    this.title,
    this.status,
    this.hostUserId,
    this.workspaceId,
    this.roomId,
    this.participants = const [],
    this.metadata = const {},
    this.startedAt,
    this.endedAt,
    this.createdAt,
  });

  String id;

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
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostUserId;

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
  String? roomId;

  List<Map<String, Object>> participants;

  Map<String, Object> metadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startedAt;

  DateTime? endedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpatioCall &&
    other.id == id &&
    other.title == title &&
    other.status == status &&
    other.hostUserId == hostUserId &&
    other.workspaceId == workspaceId &&
    other.roomId == roomId &&
    _deepEquality.equals(other.participants, participants) &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.startedAt == startedAt &&
    other.endedAt == endedAt &&
    other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (hostUserId == null ? 0 : hostUserId!.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (roomId == null ? 0 : roomId!.hashCode) +
    (participants.hashCode) +
    (metadata.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (endedAt == null ? 0 : endedAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode);

  @override
  String toString() => 'SpatioCall[id=$id, title=$title, status=$status, hostUserId=$hostUserId, workspaceId=$workspaceId, roomId=$roomId, participants=$participants, metadata=$metadata, startedAt=$startedAt, endedAt=$endedAt, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.hostUserId != null) {
      json[r'hostUserId'] = this.hostUserId;
    } else {
      json[r'hostUserId'] = null;
    }
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
    if (this.roomId != null) {
      json[r'roomId'] = this.roomId;
    } else {
      json[r'roomId'] = null;
    }
      json[r'participants'] = this.participants;
      json[r'metadata'] = this.metadata;
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
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    return json;
  }

  /// Returns a new [SpatioCall] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpatioCall? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "SpatioCall[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "SpatioCall[id]" has a null value in JSON.');
        return true;
      }());

      return SpatioCall(
        id: mapValueOfType<String>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title'),
        status: mapValueOfType<String>(json, r'status'),
        hostUserId: mapValueOfType<String>(json, r'hostUserId'),
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
        roomId: mapValueOfType<String>(json, r'roomId'),
        participants: Map.listFromJson(json[r'participants']),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        startedAt: mapDateTime(json, r'startedAt', r''),
        endedAt: mapDateTime(json, r'endedAt', r''),
        createdAt: mapDateTime(json, r'createdAt', r''),
      );
    }
    return null;
  }

  static List<SpatioCall> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpatioCall>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpatioCall.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpatioCall> mapFromJson(dynamic json) {
    final map = <String, SpatioCall>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpatioCall.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpatioCall-objects as value to a dart map
  static Map<String, List<SpatioCall>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpatioCall>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpatioCall.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

