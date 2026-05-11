//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkArchiveResponse {
  /// Returns a new [BulkArchiveResponse] instance.
  BulkArchiveResponse({
    required this.success,
    this.archived = const [],
    this.failed = const [],
  });

  /// `true` only when zero rows in `failed`.
  bool success;

  List<String> archived;

  List<BulkArchiveResponseFailedInner> failed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkArchiveResponse &&
    other.success == success &&
    _deepEquality.equals(other.archived, archived) &&
    _deepEquality.equals(other.failed, failed);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (archived.hashCode) +
    (failed.hashCode);

  @override
  String toString() => 'BulkArchiveResponse[success=$success, archived=$archived, failed=$failed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'archived'] = this.archived;
      json[r'failed'] = this.failed;
    return json;
  }

  /// Returns a new [BulkArchiveResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkArchiveResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "BulkArchiveResponse[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "BulkArchiveResponse[success]" has a null value in JSON.');
        assert(json.containsKey(r'archived'), 'Required key "BulkArchiveResponse[archived]" is missing from JSON.');
        assert(json[r'archived'] != null, 'Required key "BulkArchiveResponse[archived]" has a null value in JSON.');
        assert(json.containsKey(r'failed'), 'Required key "BulkArchiveResponse[failed]" is missing from JSON.');
        assert(json[r'failed'] != null, 'Required key "BulkArchiveResponse[failed]" has a null value in JSON.');
        return true;
      }());

      return BulkArchiveResponse(
        success: mapValueOfType<bool>(json, r'success')!,
        archived: json[r'archived'] is Iterable
            ? (json[r'archived'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        failed: BulkArchiveResponseFailedInner.listFromJson(json[r'failed']),
      );
    }
    return null;
  }

  static List<BulkArchiveResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkArchiveResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkArchiveResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkArchiveResponse> mapFromJson(dynamic json) {
    final map = <String, BulkArchiveResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkArchiveResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkArchiveResponse-objects as value to a dart map
  static Map<String, List<BulkArchiveResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkArchiveResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkArchiveResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'archived',
    'failed',
  };
}

