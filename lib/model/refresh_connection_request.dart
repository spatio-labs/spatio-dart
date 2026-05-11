//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class RefreshConnectionRequest {
  /// Returns a new [RefreshConnectionRequest] instance.
  RefreshConnectionRequest({
    required this.connectionId,
    this.accountId,
  });

  String connectionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RefreshConnectionRequest &&
    other.connectionId == connectionId &&
    other.accountId == accountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectionId.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode);

  @override
  String toString() => 'RefreshConnectionRequest[connectionId=$connectionId, accountId=$accountId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectionId'] = this.connectionId;
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    return json;
  }

  /// Returns a new [RefreshConnectionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefreshConnectionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'connectionId'), 'Required key "RefreshConnectionRequest[connectionId]" is missing from JSON.');
        assert(json[r'connectionId'] != null, 'Required key "RefreshConnectionRequest[connectionId]" has a null value in JSON.');
        return true;
      }());

      return RefreshConnectionRequest(
        connectionId: mapValueOfType<String>(json, r'connectionId')!,
        accountId: mapValueOfType<String>(json, r'accountId'),
      );
    }
    return null;
  }

  static List<RefreshConnectionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RefreshConnectionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefreshConnectionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefreshConnectionRequest> mapFromJson(dynamic json) {
    final map = <String, RefreshConnectionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefreshConnectionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefreshConnectionRequest-objects as value to a dart map
  static Map<String, List<RefreshConnectionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RefreshConnectionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefreshConnectionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'connectionId',
  };
}

