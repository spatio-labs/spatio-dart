//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkFilesResponseFailedInner {
  /// Returns a new [BulkFilesResponseFailedInner] instance.
  BulkFilesResponseFailedInner({
    required this.fileId,
    required this.error,
  });

  String fileId;

  String error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkFilesResponseFailedInner &&
    other.fileId == fileId &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fileId.hashCode) +
    (error.hashCode);

  @override
  String toString() => 'BulkFilesResponseFailedInner[fileId=$fileId, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'fileId'] = this.fileId;
      json[r'error'] = this.error;
    return json;
  }

  /// Returns a new [BulkFilesResponseFailedInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkFilesResponseFailedInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'fileId'), 'Required key "BulkFilesResponseFailedInner[fileId]" is missing from JSON.');
        assert(json[r'fileId'] != null, 'Required key "BulkFilesResponseFailedInner[fileId]" has a null value in JSON.');
        assert(json.containsKey(r'error'), 'Required key "BulkFilesResponseFailedInner[error]" is missing from JSON.');
        assert(json[r'error'] != null, 'Required key "BulkFilesResponseFailedInner[error]" has a null value in JSON.');
        return true;
      }());

      return BulkFilesResponseFailedInner(
        fileId: mapValueOfType<String>(json, r'fileId')!,
        error: mapValueOfType<String>(json, r'error')!,
      );
    }
    return null;
  }

  static List<BulkFilesResponseFailedInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkFilesResponseFailedInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkFilesResponseFailedInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkFilesResponseFailedInner> mapFromJson(dynamic json) {
    final map = <String, BulkFilesResponseFailedInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkFilesResponseFailedInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkFilesResponseFailedInner-objects as value to a dart map
  static Map<String, List<BulkFilesResponseFailedInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkFilesResponseFailedInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkFilesResponseFailedInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'fileId',
    'error',
  };
}

