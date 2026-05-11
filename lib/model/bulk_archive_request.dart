//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BulkArchiveRequest {
  /// Returns a new [BulkArchiveRequest] instance.
  BulkArchiveRequest({
    this.accountId,
    this.messageIds = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  List<String> messageIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BulkArchiveRequest &&
    other.accountId == accountId &&
    _deepEquality.equals(other.messageIds, messageIds);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (messageIds.hashCode);

  @override
  String toString() => 'BulkArchiveRequest[accountId=$accountId, messageIds=$messageIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
      json[r'messageIds'] = this.messageIds;
    return json;
  }

  /// Returns a new [BulkArchiveRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BulkArchiveRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'messageIds'), 'Required key "BulkArchiveRequest[messageIds]" is missing from JSON.');
        assert(json[r'messageIds'] != null, 'Required key "BulkArchiveRequest[messageIds]" has a null value in JSON.');
        return true;
      }());

      return BulkArchiveRequest(
        accountId: mapValueOfType<String>(json, r'accountId'),
        messageIds: json[r'messageIds'] is Iterable
            ? (json[r'messageIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<BulkArchiveRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BulkArchiveRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BulkArchiveRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BulkArchiveRequest> mapFromJson(dynamic json) {
    final map = <String, BulkArchiveRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BulkArchiveRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BulkArchiveRequest-objects as value to a dart map
  static Map<String, List<BulkArchiveRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BulkArchiveRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BulkArchiveRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'messageIds',
  };
}

