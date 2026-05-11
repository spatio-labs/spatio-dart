//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class InboxCounts {
  /// Returns a new [InboxCounts] instance.
  InboxCounts({
    required this.total,
    required this.mentions,
    required this.notifications,
  });

  int total;

  int mentions;

  int notifications;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxCounts &&
    other.total == total &&
    other.mentions == mentions &&
    other.notifications == notifications;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (total.hashCode) +
    (mentions.hashCode) +
    (notifications.hashCode);

  @override
  String toString() => 'InboxCounts[total=$total, mentions=$mentions, notifications=$notifications]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total'] = this.total;
      json[r'mentions'] = this.mentions;
      json[r'notifications'] = this.notifications;
    return json;
  }

  /// Returns a new [InboxCounts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxCounts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'total'), 'Required key "InboxCounts[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "InboxCounts[total]" has a null value in JSON.');
        assert(json.containsKey(r'mentions'), 'Required key "InboxCounts[mentions]" is missing from JSON.');
        assert(json[r'mentions'] != null, 'Required key "InboxCounts[mentions]" has a null value in JSON.');
        assert(json.containsKey(r'notifications'), 'Required key "InboxCounts[notifications]" is missing from JSON.');
        assert(json[r'notifications'] != null, 'Required key "InboxCounts[notifications]" has a null value in JSON.');
        return true;
      }());

      return InboxCounts(
        total: mapValueOfType<int>(json, r'total')!,
        mentions: mapValueOfType<int>(json, r'mentions')!,
        notifications: mapValueOfType<int>(json, r'notifications')!,
      );
    }
    return null;
  }

  static List<InboxCounts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxCounts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxCounts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxCounts> mapFromJson(dynamic json) {
    final map = <String, InboxCounts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxCounts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxCounts-objects as value to a dart map
  static Map<String, List<InboxCounts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxCounts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxCounts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total',
    'mentions',
    'notifications',
  };
}

