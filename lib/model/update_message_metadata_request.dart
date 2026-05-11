//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateMessageMetadataRequest {
  /// Returns a new [UpdateMessageMetadataRequest] instance.
  UpdateMessageMetadataRequest({
    required this.id,
    this.metadata = const {},
  });

  String id;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateMessageMetadataRequest &&
    other.id == id &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'UpdateMessageMetadataRequest[id=$id, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [UpdateMessageMetadataRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateMessageMetadataRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "UpdateMessageMetadataRequest[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "UpdateMessageMetadataRequest[id]" has a null value in JSON.');
        return true;
      }());

      return UpdateMessageMetadataRequest(
        id: mapValueOfType<String>(json, r'id')!,
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<UpdateMessageMetadataRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateMessageMetadataRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateMessageMetadataRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateMessageMetadataRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateMessageMetadataRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateMessageMetadataRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateMessageMetadataRequest-objects as value to a dart map
  static Map<String, List<UpdateMessageMetadataRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateMessageMetadataRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateMessageMetadataRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

