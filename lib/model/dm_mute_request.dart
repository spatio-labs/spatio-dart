//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class DMMuteRequest {
  /// Returns a new [DMMuteRequest] instance.
  DMMuteRequest({
    this.untilSeconds,
    this.forever,
    this.accountId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? untilSeconds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? forever;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DMMuteRequest &&
    other.untilSeconds == untilSeconds &&
    other.forever == forever &&
    other.accountId == accountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (untilSeconds == null ? 0 : untilSeconds!.hashCode) +
    (forever == null ? 0 : forever!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode);

  @override
  String toString() => 'DMMuteRequest[untilSeconds=$untilSeconds, forever=$forever, accountId=$accountId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.untilSeconds != null) {
      json[r'untilSeconds'] = this.untilSeconds;
    } else {
      json[r'untilSeconds'] = null;
    }
    if (this.forever != null) {
      json[r'forever'] = this.forever;
    } else {
      json[r'forever'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    return json;
  }

  /// Returns a new [DMMuteRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DMMuteRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DMMuteRequest(
        untilSeconds: mapValueOfType<int>(json, r'untilSeconds'),
        forever: mapValueOfType<bool>(json, r'forever'),
        accountId: mapValueOfType<String>(json, r'accountId'),
      );
    }
    return null;
  }

  static List<DMMuteRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DMMuteRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DMMuteRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DMMuteRequest> mapFromJson(dynamic json) {
    final map = <String, DMMuteRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DMMuteRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DMMuteRequest-objects as value to a dart map
  static Map<String, List<DMMuteRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DMMuteRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DMMuteRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

