//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkMarkReadResponseFailedInner {
  /// Returns a new [BulkMarkReadResponseFailedInner] instance.
  BulkMarkReadResponseFailedInner({
    required this.id,
    required this.error,
  });

  String id;

  String error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkMarkReadResponseFailedInner &&
    other.id == id &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (error.hashCode);

  @override
  String toString() => 'BulkMarkReadResponseFailedInner[id=$id, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'error'] = this.error;
    return json;
  }

  /// Returns a new [BulkMarkReadResponseFailedInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkMarkReadResponseFailedInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "BulkMarkReadResponseFailedInner[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "BulkMarkReadResponseFailedInner[id]" has a null value in JSON.');
        assert(json.containsKey(r'error'), 'Required key "BulkMarkReadResponseFailedInner[error]" is missing from JSON.');
        assert(json[r'error'] != null, 'Required key "BulkMarkReadResponseFailedInner[error]" has a null value in JSON.');
        return true;
      }());

      return BulkMarkReadResponseFailedInner(
        id: mapValueOfType<String>(json, r'id')!,
        error: mapValueOfType<String>(json, r'error')!,
      );
    }
    return null;
  }

  static List<BulkMarkReadResponseFailedInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkMarkReadResponseFailedInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkMarkReadResponseFailedInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkMarkReadResponseFailedInner> mapFromJson(dynamic json) {
    final map = <String, BulkMarkReadResponseFailedInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkMarkReadResponseFailedInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkMarkReadResponseFailedInner-objects as value to a dart map
  static Map<String, List<BulkMarkReadResponseFailedInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkMarkReadResponseFailedInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkMarkReadResponseFailedInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'error',
  };
}

