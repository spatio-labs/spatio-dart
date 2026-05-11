//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class DMForwardRequest {
  /// Returns a new [DMForwardRequest] instance.
  DMForwardRequest({
    this.toDmId,
    this.toChannelId,
    this.accountId,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? toDmId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? toChannelId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DMForwardRequest &&
    other.toDmId == toDmId &&
    other.toChannelId == toChannelId &&
    other.accountId == accountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (toDmId == null ? 0 : toDmId!.hashCode) +
    (toChannelId == null ? 0 : toChannelId!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode);

  @override
  String toString() => 'DMForwardRequest[toDmId=$toDmId, toChannelId=$toChannelId, accountId=$accountId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.toDmId != null) {
      json[r'toDmId'] = this.toDmId;
    } else {
      json[r'toDmId'] = null;
    }
    if (this.toChannelId != null) {
      json[r'toChannelId'] = this.toChannelId;
    } else {
      json[r'toChannelId'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    return json;
  }

  /// Returns a new [DMForwardRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DMForwardRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DMForwardRequest(
        toDmId: mapValueOfType<String>(json, r'toDmId'),
        toChannelId: mapValueOfType<String>(json, r'toChannelId'),
        accountId: mapValueOfType<String>(json, r'accountId'),
      );
    }
    return null;
  }

  static List<DMForwardRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DMForwardRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DMForwardRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DMForwardRequest> mapFromJson(dynamic json) {
    final map = <String, DMForwardRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DMForwardRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DMForwardRequest-objects as value to a dart map
  static Map<String, List<DMForwardRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DMForwardRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DMForwardRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

