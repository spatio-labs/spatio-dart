//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class RecordTypeListResponse {
  /// Returns a new [RecordTypeListResponse] instance.
  RecordTypeListResponse({
    this.recordTypes = const [],
  });

  List<RecordType> recordTypes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecordTypeListResponse &&
    _deepEquality.equals(other.recordTypes, recordTypes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recordTypes.hashCode);

  @override
  String toString() => 'RecordTypeListResponse[recordTypes=$recordTypes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'record_types'] = this.recordTypes;
    return json;
  }

  /// Returns a new [RecordTypeListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecordTypeListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'record_types'), 'Required key "RecordTypeListResponse[record_types]" is missing from JSON.');
        assert(json[r'record_types'] != null, 'Required key "RecordTypeListResponse[record_types]" has a null value in JSON.');
        return true;
      }());

      return RecordTypeListResponse(
        recordTypes: RecordType.listFromJson(json[r'record_types']),
      );
    }
    return null;
  }

  static List<RecordTypeListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecordTypeListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecordTypeListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecordTypeListResponse> mapFromJson(dynamic json) {
    final map = <String, RecordTypeListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecordTypeListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecordTypeListResponse-objects as value to a dart map
  static Map<String, List<RecordTypeListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecordTypeListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecordTypeListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'record_types',
  };
}

