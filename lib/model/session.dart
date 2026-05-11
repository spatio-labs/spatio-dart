//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Session {
  /// Returns a new [Session] instance.
  Session({
    required this.id,
    this.ipAddress,
    this.userAgent,
    this.deviceType,
    this.browser,
    this.os,
    this.country,
    this.city,
    this.createdAt,
    this.lastActiveAt,
    this.isCurrent,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userAgent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? browser;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastActiveAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isCurrent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Session &&
    other.id == id &&
    other.ipAddress == ipAddress &&
    other.userAgent == userAgent &&
    other.deviceType == deviceType &&
    other.browser == browser &&
    other.os == os &&
    other.country == country &&
    other.city == city &&
    other.createdAt == createdAt &&
    other.lastActiveAt == lastActiveAt &&
    other.isCurrent == isCurrent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode) +
    (userAgent == null ? 0 : userAgent!.hashCode) +
    (deviceType == null ? 0 : deviceType!.hashCode) +
    (browser == null ? 0 : browser!.hashCode) +
    (os == null ? 0 : os!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (lastActiveAt == null ? 0 : lastActiveAt!.hashCode) +
    (isCurrent == null ? 0 : isCurrent!.hashCode);

  @override
  String toString() => 'Session[id=$id, ipAddress=$ipAddress, userAgent=$userAgent, deviceType=$deviceType, browser=$browser, os=$os, country=$country, city=$city, createdAt=$createdAt, lastActiveAt=$lastActiveAt, isCurrent=$isCurrent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.ipAddress != null) {
      json[r'ipAddress'] = this.ipAddress;
    } else {
      json[r'ipAddress'] = null;
    }
    if (this.userAgent != null) {
      json[r'userAgent'] = this.userAgent;
    } else {
      json[r'userAgent'] = null;
    }
    if (this.deviceType != null) {
      json[r'deviceType'] = this.deviceType;
    } else {
      json[r'deviceType'] = null;
    }
    if (this.browser != null) {
      json[r'browser'] = this.browser;
    } else {
      json[r'browser'] = null;
    }
    if (this.os != null) {
      json[r'os'] = this.os;
    } else {
      json[r'os'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.lastActiveAt != null) {
      json[r'lastActiveAt'] = this.lastActiveAt!.toUtc().toIso8601String();
    } else {
      json[r'lastActiveAt'] = null;
    }
    if (this.isCurrent != null) {
      json[r'isCurrent'] = this.isCurrent;
    } else {
      json[r'isCurrent'] = null;
    }
    return json;
  }

  /// Returns a new [Session] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Session? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Session[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Session[id]" has a null value in JSON.');
        return true;
      }());

      return Session(
        id: mapValueOfType<String>(json, r'id')!,
        ipAddress: mapValueOfType<String>(json, r'ipAddress'),
        userAgent: mapValueOfType<String>(json, r'userAgent'),
        deviceType: mapValueOfType<String>(json, r'deviceType'),
        browser: mapValueOfType<String>(json, r'browser'),
        os: mapValueOfType<String>(json, r'os'),
        country: mapValueOfType<String>(json, r'country'),
        city: mapValueOfType<String>(json, r'city'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        lastActiveAt: mapDateTime(json, r'lastActiveAt', r''),
        isCurrent: mapValueOfType<bool>(json, r'isCurrent'),
      );
    }
    return null;
  }

  static List<Session> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Session>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Session.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Session> mapFromJson(dynamic json) {
    final map = <String, Session>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Session.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Session-objects as value to a dart map
  static Map<String, List<Session>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Session>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Session.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

