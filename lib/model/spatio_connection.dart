//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SpatioConnection {
  /// Returns a new [SpatioConnection] instance.
  SpatioConnection({
    required this.id,
    this.name,
    this.category,
    this.description,
    this.authType,
    this.connected,
    this.connectedAccounts = const [],
    this.capabilities = const {},
    this.gradientFrom,
    this.gradientTo,
    this.icon,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? authType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connected;

  List<Map<String, Object>>? connectedAccounts;

  Map<String, Object> capabilities;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gradientFrom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gradientTo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpatioConnection &&
    other.id == id &&
    other.name == name &&
    other.category == category &&
    other.description == description &&
    other.authType == authType &&
    other.connected == connected &&
    _deepEquality.equals(other.connectedAccounts, connectedAccounts) &&
    _deepEquality.equals(other.capabilities, capabilities) &&
    other.gradientFrom == gradientFrom &&
    other.gradientTo == gradientTo &&
    other.icon == icon;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (authType == null ? 0 : authType!.hashCode) +
    (connected == null ? 0 : connected!.hashCode) +
    (connectedAccounts == null ? 0 : connectedAccounts!.hashCode) +
    (capabilities.hashCode) +
    (gradientFrom == null ? 0 : gradientFrom!.hashCode) +
    (gradientTo == null ? 0 : gradientTo!.hashCode) +
    (icon == null ? 0 : icon!.hashCode);

  @override
  String toString() => 'SpatioConnection[id=$id, name=$name, category=$category, description=$description, authType=$authType, connected=$connected, connectedAccounts=$connectedAccounts, capabilities=$capabilities, gradientFrom=$gradientFrom, gradientTo=$gradientTo, icon=$icon]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.authType != null) {
      json[r'authType'] = this.authType;
    } else {
      json[r'authType'] = null;
    }
    if (this.connected != null) {
      json[r'connected'] = this.connected;
    } else {
      json[r'connected'] = null;
    }
    if (this.connectedAccounts != null) {
      json[r'connectedAccounts'] = this.connectedAccounts;
    } else {
      json[r'connectedAccounts'] = null;
    }
      json[r'capabilities'] = this.capabilities;
    if (this.gradientFrom != null) {
      json[r'gradientFrom'] = this.gradientFrom;
    } else {
      json[r'gradientFrom'] = null;
    }
    if (this.gradientTo != null) {
      json[r'gradientTo'] = this.gradientTo;
    } else {
      json[r'gradientTo'] = null;
    }
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    return json;
  }

  /// Returns a new [SpatioConnection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpatioConnection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "SpatioConnection[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "SpatioConnection[id]" has a null value in JSON.');
        return true;
      }());

      return SpatioConnection(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        category: mapValueOfType<String>(json, r'category'),
        description: mapValueOfType<String>(json, r'description'),
        authType: mapValueOfType<String>(json, r'authType'),
        connected: mapValueOfType<bool>(json, r'connected'),
        connectedAccounts: Map.listFromJson(json[r'connectedAccounts']),
        capabilities: mapCastOfType<String, Object>(json, r'capabilities') ?? const {},
        gradientFrom: mapValueOfType<String>(json, r'gradientFrom'),
        gradientTo: mapValueOfType<String>(json, r'gradientTo'),
        icon: mapValueOfType<String>(json, r'icon'),
      );
    }
    return null;
  }

  static List<SpatioConnection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpatioConnection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpatioConnection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpatioConnection> mapFromJson(dynamic json) {
    final map = <String, SpatioConnection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpatioConnection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpatioConnection-objects as value to a dart map
  static Map<String, List<SpatioConnection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpatioConnection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpatioConnection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

