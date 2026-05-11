//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AgentSessionContext {
  /// Returns a new [AgentSessionContext] instance.
  AgentSessionContext({
    this.user = const {},
    this.currentOrganization = const {},
    this.currentWorkspace = const {},
    this.connectedAccounts = const [],
  });

  Map<String, Object> user;

  Map<String, Object>? currentOrganization;

  Map<String, Object>? currentWorkspace;

  List<Map<String, Object>> connectedAccounts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentSessionContext &&
    _deepEquality.equals(other.user, user) &&
    _deepEquality.equals(other.currentOrganization, currentOrganization) &&
    _deepEquality.equals(other.currentWorkspace, currentWorkspace) &&
    _deepEquality.equals(other.connectedAccounts, connectedAccounts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (user.hashCode) +
    (currentOrganization == null ? 0 : currentOrganization!.hashCode) +
    (currentWorkspace == null ? 0 : currentWorkspace!.hashCode) +
    (connectedAccounts.hashCode);

  @override
  String toString() => 'AgentSessionContext[user=$user, currentOrganization=$currentOrganization, currentWorkspace=$currentWorkspace, connectedAccounts=$connectedAccounts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'user'] = this.user;
    if (this.currentOrganization != null) {
      json[r'currentOrganization'] = this.currentOrganization;
    } else {
      json[r'currentOrganization'] = null;
    }
    if (this.currentWorkspace != null) {
      json[r'currentWorkspace'] = this.currentWorkspace;
    } else {
      json[r'currentWorkspace'] = null;
    }
      json[r'connectedAccounts'] = this.connectedAccounts;
    return json;
  }

  /// Returns a new [AgentSessionContext] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentSessionContext? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AgentSessionContext(
        user: mapCastOfType<String, Object>(json, r'user') ?? const {},
        currentOrganization: mapCastOfType<String, Object>(json, r'currentOrganization') ?? const {},
        currentWorkspace: mapCastOfType<String, Object>(json, r'currentWorkspace') ?? const {},
        connectedAccounts: Map.listFromJson(json[r'connectedAccounts']),
      );
    }
    return null;
  }

  static List<AgentSessionContext> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentSessionContext>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentSessionContext.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentSessionContext> mapFromJson(dynamic json) {
    final map = <String, AgentSessionContext>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentSessionContext.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentSessionContext-objects as value to a dart map
  static Map<String, List<AgentSessionContext>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentSessionContext>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentSessionContext.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

