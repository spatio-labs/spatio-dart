//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class RevokeOtherSessionsResponse {
  /// Returns a new [RevokeOtherSessionsResponse] instance.
  RevokeOtherSessionsResponse({
    this.revoked,
  });

  /// Count of sessions revoked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revoked;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevokeOtherSessionsResponse &&
    other.revoked == revoked;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (revoked == null ? 0 : revoked!.hashCode);

  @override
  String toString() => 'RevokeOtherSessionsResponse[revoked=$revoked]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.revoked != null) {
      json[r'revoked'] = this.revoked;
    } else {
      json[r'revoked'] = null;
    }
    return json;
  }

  /// Returns a new [RevokeOtherSessionsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevokeOtherSessionsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return RevokeOtherSessionsResponse(
        revoked: mapValueOfType<int>(json, r'revoked'),
      );
    }
    return null;
  }

  static List<RevokeOtherSessionsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevokeOtherSessionsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevokeOtherSessionsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevokeOtherSessionsResponse> mapFromJson(dynamic json) {
    final map = <String, RevokeOtherSessionsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevokeOtherSessionsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevokeOtherSessionsResponse-objects as value to a dart map
  static Map<String, List<RevokeOtherSessionsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevokeOtherSessionsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevokeOtherSessionsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

