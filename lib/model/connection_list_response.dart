//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ConnectionListResponse {
  /// Returns a new [ConnectionListResponse] instance.
  ConnectionListResponse({
    this.connections = const [],
    this.categories = const [],
  });

  List<SpatioConnection> connections;

  List<String> categories;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectionListResponse &&
    _deepEquality.equals(other.connections, connections) &&
    _deepEquality.equals(other.categories, categories);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connections.hashCode) +
    (categories.hashCode);

  @override
  String toString() => 'ConnectionListResponse[connections=$connections, categories=$categories]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connections'] = this.connections;
      json[r'categories'] = this.categories;
    return json;
  }

  /// Returns a new [ConnectionListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectionListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'connections'), 'Required key "ConnectionListResponse[connections]" is missing from JSON.');
        assert(json[r'connections'] != null, 'Required key "ConnectionListResponse[connections]" has a null value in JSON.');
        return true;
      }());

      return ConnectionListResponse(
        connections: SpatioConnection.listFromJson(json[r'connections']),
        categories: json[r'categories'] is Iterable
            ? (json[r'categories'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ConnectionListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectionListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectionListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectionListResponse> mapFromJson(dynamic json) {
    final map = <String, ConnectionListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectionListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectionListResponse-objects as value to a dart map
  static Map<String, List<ConnectionListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectionListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectionListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'connections',
  };
}

