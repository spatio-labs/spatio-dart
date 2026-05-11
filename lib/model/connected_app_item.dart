//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ConnectedAppItem {
  /// Returns a new [ConnectedAppItem] instance.
  ConnectedAppItem({
    required this.clientId,
    required this.clientName,
    this.logoUri,
    this.clientUri,
    this.policyUri,
    this.tosUri,
    this.scopes = const [],
    this.scopeLabels = const [],
    required this.grantedAt,
  });

  String clientId;

  String clientName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logoUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? policyUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tosUri;

  List<String> scopes;

  List<String> scopeLabels;

  DateTime grantedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectedAppItem &&
    other.clientId == clientId &&
    other.clientName == clientName &&
    other.logoUri == logoUri &&
    other.clientUri == clientUri &&
    other.policyUri == policyUri &&
    other.tosUri == tosUri &&
    _deepEquality.equals(other.scopes, scopes) &&
    _deepEquality.equals(other.scopeLabels, scopeLabels) &&
    other.grantedAt == grantedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clientId.hashCode) +
    (clientName.hashCode) +
    (logoUri == null ? 0 : logoUri!.hashCode) +
    (clientUri == null ? 0 : clientUri!.hashCode) +
    (policyUri == null ? 0 : policyUri!.hashCode) +
    (tosUri == null ? 0 : tosUri!.hashCode) +
    (scopes.hashCode) +
    (scopeLabels.hashCode) +
    (grantedAt.hashCode);

  @override
  String toString() => 'ConnectedAppItem[clientId=$clientId, clientName=$clientName, logoUri=$logoUri, clientUri=$clientUri, policyUri=$policyUri, tosUri=$tosUri, scopes=$scopes, scopeLabels=$scopeLabels, grantedAt=$grantedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'client_id'] = this.clientId;
      json[r'client_name'] = this.clientName;
    if (this.logoUri != null) {
      json[r'logo_uri'] = this.logoUri;
    } else {
      json[r'logo_uri'] = null;
    }
    if (this.clientUri != null) {
      json[r'client_uri'] = this.clientUri;
    } else {
      json[r'client_uri'] = null;
    }
    if (this.policyUri != null) {
      json[r'policy_uri'] = this.policyUri;
    } else {
      json[r'policy_uri'] = null;
    }
    if (this.tosUri != null) {
      json[r'tos_uri'] = this.tosUri;
    } else {
      json[r'tos_uri'] = null;
    }
      json[r'scopes'] = this.scopes;
      json[r'scope_labels'] = this.scopeLabels;
      json[r'granted_at'] = this.grantedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ConnectedAppItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectedAppItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'client_id'), 'Required key "ConnectedAppItem[client_id]" is missing from JSON.');
        assert(json[r'client_id'] != null, 'Required key "ConnectedAppItem[client_id]" has a null value in JSON.');
        assert(json.containsKey(r'client_name'), 'Required key "ConnectedAppItem[client_name]" is missing from JSON.');
        assert(json[r'client_name'] != null, 'Required key "ConnectedAppItem[client_name]" has a null value in JSON.');
        assert(json.containsKey(r'scopes'), 'Required key "ConnectedAppItem[scopes]" is missing from JSON.');
        assert(json[r'scopes'] != null, 'Required key "ConnectedAppItem[scopes]" has a null value in JSON.');
        assert(json.containsKey(r'scope_labels'), 'Required key "ConnectedAppItem[scope_labels]" is missing from JSON.');
        assert(json[r'scope_labels'] != null, 'Required key "ConnectedAppItem[scope_labels]" has a null value in JSON.');
        assert(json.containsKey(r'granted_at'), 'Required key "ConnectedAppItem[granted_at]" is missing from JSON.');
        assert(json[r'granted_at'] != null, 'Required key "ConnectedAppItem[granted_at]" has a null value in JSON.');
        return true;
      }());

      return ConnectedAppItem(
        clientId: mapValueOfType<String>(json, r'client_id')!,
        clientName: mapValueOfType<String>(json, r'client_name')!,
        logoUri: mapValueOfType<String>(json, r'logo_uri'),
        clientUri: mapValueOfType<String>(json, r'client_uri'),
        policyUri: mapValueOfType<String>(json, r'policy_uri'),
        tosUri: mapValueOfType<String>(json, r'tos_uri'),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        scopeLabels: json[r'scope_labels'] is Iterable
            ? (json[r'scope_labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        grantedAt: mapDateTime(json, r'granted_at', r'')!,
      );
    }
    return null;
  }

  static List<ConnectedAppItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectedAppItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectedAppItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectedAppItem> mapFromJson(dynamic json) {
    final map = <String, ConnectedAppItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectedAppItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectedAppItem-objects as value to a dart map
  static Map<String, List<ConnectedAppItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectedAppItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectedAppItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'client_id',
    'client_name',
    'scopes',
    'scope_labels',
    'granted_at',
  };
}

