//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Attendee {
  /// Returns a new [Attendee] instance.
  Attendee({
    required this.email,
    this.name,
    required this.status,
    required this.role,
    required this.optional,
    this.comment,
    this.additionalGuests,
  });

  String email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  AttendeeStatus status;

  AttendeeRole role;

  /// Legacy boolean — superseded by `role` (`role: optional` carries the same signal). Kept on the wire for client compatibility. 
  bool optional;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? additionalGuests;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Attendee &&
    other.email == email &&
    other.name == name &&
    other.status == status &&
    other.role == role &&
    other.optional == optional &&
    other.comment == comment &&
    other.additionalGuests == additionalGuests;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (status.hashCode) +
    (role.hashCode) +
    (optional.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (additionalGuests == null ? 0 : additionalGuests!.hashCode);

  @override
  String toString() => 'Attendee[email=$email, name=$name, status=$status, role=$role, optional=$optional, comment=$comment, additionalGuests=$additionalGuests]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'status'] = this.status;
      json[r'role'] = this.role;
      json[r'optional'] = this.optional;
    if (this.comment != null) {
      json[r'comment'] = this.comment;
    } else {
      json[r'comment'] = null;
    }
    if (this.additionalGuests != null) {
      json[r'additional_guests'] = this.additionalGuests;
    } else {
      json[r'additional_guests'] = null;
    }
    return json;
  }

  /// Returns a new [Attendee] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Attendee? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'email'), 'Required key "Attendee[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "Attendee[email]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "Attendee[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "Attendee[status]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "Attendee[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "Attendee[role]" has a null value in JSON.');
        assert(json.containsKey(r'optional'), 'Required key "Attendee[optional]" is missing from JSON.');
        assert(json[r'optional'] != null, 'Required key "Attendee[optional]" has a null value in JSON.');
        return true;
      }());

      return Attendee(
        email: mapValueOfType<String>(json, r'email')!,
        name: mapValueOfType<String>(json, r'name'),
        status: AttendeeStatus.fromJson(json[r'status'])!,
        role: AttendeeRole.fromJson(json[r'role'])!,
        optional: mapValueOfType<bool>(json, r'optional')!,
        comment: mapValueOfType<String>(json, r'comment'),
        additionalGuests: mapValueOfType<int>(json, r'additional_guests'),
      );
    }
    return null;
  }

  static List<Attendee> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Attendee>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Attendee.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Attendee> mapFromJson(dynamic json) {
    final map = <String, Attendee>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Attendee.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Attendee-objects as value to a dart map
  static Map<String, List<Attendee>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Attendee>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Attendee.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'status',
    'role',
    'optional',
  };
}

