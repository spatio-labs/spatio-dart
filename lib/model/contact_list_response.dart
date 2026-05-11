//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ContactListResponse {
  /// Returns a new [ContactListResponse] instance.
  ContactListResponse({
    this.contacts = const [],
    this.totalResults,
    this.updatedAt,
  });

  List<Contact> contacts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalResults;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactListResponse &&
    _deepEquality.equals(other.contacts, contacts) &&
    other.totalResults == totalResults &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contacts.hashCode) +
    (totalResults == null ? 0 : totalResults!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'ContactListResponse[contacts=$contacts, totalResults=$totalResults, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'contacts'] = this.contacts;
    if (this.totalResults != null) {
      json[r'total_results'] = this.totalResults;
    } else {
      json[r'total_results'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [ContactListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'contacts'), 'Required key "ContactListResponse[contacts]" is missing from JSON.');
        assert(json[r'contacts'] != null, 'Required key "ContactListResponse[contacts]" has a null value in JSON.');
        return true;
      }());

      return ContactListResponse(
        contacts: Contact.listFromJson(json[r'contacts']),
        totalResults: mapValueOfType<int>(json, r'total_results'),
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<ContactListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactListResponse> mapFromJson(dynamic json) {
    final map = <String, ContactListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactListResponse-objects as value to a dart map
  static Map<String, List<ContactListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'contacts',
  };
}

