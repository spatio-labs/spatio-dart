//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateRowRequest {
  /// Returns a new [UpdateRowRequest] instance.
  UpdateRowRequest({
    this.cells = const {},
  });

  /// Sparse update. Keys present in the map overwrite that column; keys absent are preserved. 
  Map<String, Object> cells;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateRowRequest &&
    _deepEquality.equals(other.cells, cells);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cells.hashCode);

  @override
  String toString() => 'UpdateRowRequest[cells=$cells]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cells'] = this.cells;
    return json;
  }

  /// Returns a new [UpdateRowRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateRowRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'cells'), 'Required key "UpdateRowRequest[cells]" is missing from JSON.');
        assert(json[r'cells'] != null, 'Required key "UpdateRowRequest[cells]" has a null value in JSON.');
        return true;
      }());

      return UpdateRowRequest(
        cells: mapCastOfType<String, Object>(json, r'cells')!,
      );
    }
    return null;
  }

  static List<UpdateRowRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateRowRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateRowRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateRowRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateRowRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateRowRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateRowRequest-objects as value to a dart map
  static Map<String, List<UpdateRowRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateRowRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateRowRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'cells',
  };
}

