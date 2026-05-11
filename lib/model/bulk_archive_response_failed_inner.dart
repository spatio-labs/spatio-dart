//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkArchiveResponseFailedInner {
  /// Returns a new [BulkArchiveResponseFailedInner] instance.
  BulkArchiveResponseFailedInner({
    required this.messageId,
    required this.error,
  });

  String messageId;

  String error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkArchiveResponseFailedInner &&
    other.messageId == messageId &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (messageId.hashCode) +
    (error.hashCode);

  @override
  String toString() => 'BulkArchiveResponseFailedInner[messageId=$messageId, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'messageId'] = this.messageId;
      json[r'error'] = this.error;
    return json;
  }

  /// Returns a new [BulkArchiveResponseFailedInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkArchiveResponseFailedInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'messageId'), 'Required key "BulkArchiveResponseFailedInner[messageId]" is missing from JSON.');
        assert(json[r'messageId'] != null, 'Required key "BulkArchiveResponseFailedInner[messageId]" has a null value in JSON.');
        assert(json.containsKey(r'error'), 'Required key "BulkArchiveResponseFailedInner[error]" is missing from JSON.');
        assert(json[r'error'] != null, 'Required key "BulkArchiveResponseFailedInner[error]" has a null value in JSON.');
        return true;
      }());

      return BulkArchiveResponseFailedInner(
        messageId: mapValueOfType<String>(json, r'messageId')!,
        error: mapValueOfType<String>(json, r'error')!,
      );
    }
    return null;
  }

  static List<BulkArchiveResponseFailedInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkArchiveResponseFailedInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkArchiveResponseFailedInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkArchiveResponseFailedInner> mapFromJson(dynamic json) {
    final map = <String, BulkArchiveResponseFailedInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkArchiveResponseFailedInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkArchiveResponseFailedInner-objects as value to a dart map
  static Map<String, List<BulkArchiveResponseFailedInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkArchiveResponseFailedInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkArchiveResponseFailedInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'messageId',
    'error',
  };
}

