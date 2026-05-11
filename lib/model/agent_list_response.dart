//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AgentListResponse {
  /// Returns a new [AgentListResponse] instance.
  AgentListResponse({
    this.agents = const [],
    this.hasMore,
    this.total,
    this.totalCount,
  });

  List<Agent>? agents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasMore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentListResponse &&
    _deepEquality.equals(other.agents, agents) &&
    other.hasMore == hasMore &&
    other.total == total &&
    other.totalCount == totalCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (agents == null ? 0 : agents!.hashCode) +
    (hasMore == null ? 0 : hasMore!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (totalCount == null ? 0 : totalCount!.hashCode);

  @override
  String toString() => 'AgentListResponse[agents=$agents, hasMore=$hasMore, total=$total, totalCount=$totalCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.agents != null) {
      json[r'agents'] = this.agents;
    } else {
      json[r'agents'] = null;
    }
    if (this.hasMore != null) {
      json[r'hasMore'] = this.hasMore;
    } else {
      json[r'hasMore'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.totalCount != null) {
      json[r'totalCount'] = this.totalCount;
    } else {
      json[r'totalCount'] = null;
    }
    return json;
  }

  /// Returns a new [AgentListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'agents'), 'Required key "AgentListResponse[agents]" is missing from JSON.');
        return true;
      }());

      return AgentListResponse(
        agents: Agent.listFromJson(json[r'agents']),
        hasMore: mapValueOfType<bool>(json, r'hasMore'),
        total: mapValueOfType<int>(json, r'total'),
        totalCount: mapValueOfType<int>(json, r'totalCount'),
      );
    }
    return null;
  }

  static List<AgentListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentListResponse> mapFromJson(dynamic json) {
    final map = <String, AgentListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentListResponse-objects as value to a dart map
  static Map<String, List<AgentListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'agents',
  };
}

