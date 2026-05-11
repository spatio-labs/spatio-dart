//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkMarkReadResponse {
  /// Returns a new [BulkMarkReadResponse] instance.
  BulkMarkReadResponse({
    required this.updated,
    this.failed = const [],
  });

  /// Number of messages successfully marked.
  int updated;

  List<BulkMarkReadResponseFailedInner> failed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkMarkReadResponse &&
    other.updated == updated &&
    _deepEquality.equals(other.failed, failed);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (updated.hashCode) +
    (failed.hashCode);

  @override
  String toString() => 'BulkMarkReadResponse[updated=$updated, failed=$failed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'updated'] = this.updated;
      json[r'failed'] = this.failed;
    return json;
  }

  /// Returns a new [BulkMarkReadResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkMarkReadResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'updated'), 'Required key "BulkMarkReadResponse[updated]" is missing from JSON.');
        assert(json[r'updated'] != null, 'Required key "BulkMarkReadResponse[updated]" has a null value in JSON.');
        assert(json.containsKey(r'failed'), 'Required key "BulkMarkReadResponse[failed]" is missing from JSON.');
        assert(json[r'failed'] != null, 'Required key "BulkMarkReadResponse[failed]" has a null value in JSON.');
        return true;
      }());

      return BulkMarkReadResponse(
        updated: mapValueOfType<int>(json, r'updated')!,
        failed: BulkMarkReadResponseFailedInner.listFromJson(json[r'failed']),
      );
    }
    return null;
  }

  static List<BulkMarkReadResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkMarkReadResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkMarkReadResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkMarkReadResponse> mapFromJson(dynamic json) {
    final map = <String, BulkMarkReadResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkMarkReadResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkMarkReadResponse-objects as value to a dart map
  static Map<String, List<BulkMarkReadResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkMarkReadResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkMarkReadResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'updated',
    'failed',
  };
}

