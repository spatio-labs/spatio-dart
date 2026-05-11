//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateRecordRequest {
  /// Returns a new [CreateRecordRequest] instance.
  CreateRecordRequest({
    this.organizationId,
    required this.recordTypeId,
    this.name,
    this.attributes = const {},
    this.metadata = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organizationId;

  String recordTypeId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  Map<String, Object> attributes;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateRecordRequest &&
    other.organizationId == organizationId &&
    other.recordTypeId == recordTypeId &&
    other.name == name &&
    _deepEquality.equals(other.attributes, attributes) &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (recordTypeId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (attributes.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'CreateRecordRequest[organizationId=$organizationId, recordTypeId=$recordTypeId, name=$name, attributes=$attributes, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.organizationId != null) {
      json[r'organization_id'] = this.organizationId;
    } else {
      json[r'organization_id'] = null;
    }
      json[r'record_type_id'] = this.recordTypeId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'attributes'] = this.attributes;
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [CreateRecordRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateRecordRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'record_type_id'), 'Required key "CreateRecordRequest[record_type_id]" is missing from JSON.');
        assert(json[r'record_type_id'] != null, 'Required key "CreateRecordRequest[record_type_id]" has a null value in JSON.');
        return true;
      }());

      return CreateRecordRequest(
        organizationId: mapValueOfType<String>(json, r'organization_id'),
        recordTypeId: mapValueOfType<String>(json, r'record_type_id')!,
        name: mapValueOfType<String>(json, r'name'),
        attributes: mapCastOfType<String, Object>(json, r'attributes') ?? const {},
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<CreateRecordRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateRecordRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateRecordRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateRecordRequest> mapFromJson(dynamic json) {
    final map = <String, CreateRecordRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateRecordRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateRecordRequest-objects as value to a dart map
  static Map<String, List<CreateRecordRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateRecordRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateRecordRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'record_type_id',
  };
}

