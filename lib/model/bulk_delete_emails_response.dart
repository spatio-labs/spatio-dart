//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkDeleteEmailsResponse {
  /// Returns a new [BulkDeleteEmailsResponse] instance.
  BulkDeleteEmailsResponse({
    required this.success,
    this.deleted = const [],
    this.failed = const [],
  });

  bool success;

  List<String> deleted;

  List<BulkArchiveResponseFailedInner> failed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkDeleteEmailsResponse &&
    other.success == success &&
    _deepEquality.equals(other.deleted, deleted) &&
    _deepEquality.equals(other.failed, failed);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (deleted.hashCode) +
    (failed.hashCode);

  @override
  String toString() => 'BulkDeleteEmailsResponse[success=$success, deleted=$deleted, failed=$failed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'deleted'] = this.deleted;
      json[r'failed'] = this.failed;
    return json;
  }

  /// Returns a new [BulkDeleteEmailsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkDeleteEmailsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "BulkDeleteEmailsResponse[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "BulkDeleteEmailsResponse[success]" has a null value in JSON.');
        assert(json.containsKey(r'deleted'), 'Required key "BulkDeleteEmailsResponse[deleted]" is missing from JSON.');
        assert(json[r'deleted'] != null, 'Required key "BulkDeleteEmailsResponse[deleted]" has a null value in JSON.');
        assert(json.containsKey(r'failed'), 'Required key "BulkDeleteEmailsResponse[failed]" is missing from JSON.');
        assert(json[r'failed'] != null, 'Required key "BulkDeleteEmailsResponse[failed]" has a null value in JSON.');
        return true;
      }());

      return BulkDeleteEmailsResponse(
        success: mapValueOfType<bool>(json, r'success')!,
        deleted: json[r'deleted'] is Iterable
            ? (json[r'deleted'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        failed: BulkArchiveResponseFailedInner.listFromJson(json[r'failed']),
      );
    }
    return null;
  }

  static List<BulkDeleteEmailsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkDeleteEmailsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkDeleteEmailsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkDeleteEmailsResponse> mapFromJson(dynamic json) {
    final map = <String, BulkDeleteEmailsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkDeleteEmailsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkDeleteEmailsResponse-objects as value to a dart map
  static Map<String, List<BulkDeleteEmailsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkDeleteEmailsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkDeleteEmailsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'deleted',
    'failed',
  };
}

