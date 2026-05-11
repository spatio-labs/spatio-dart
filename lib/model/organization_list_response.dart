//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class OrganizationListResponse {
  /// Returns a new [OrganizationListResponse] instance.
  OrganizationListResponse({
    this.organizations = const [],
  });

  List<Organization> organizations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationListResponse &&
    _deepEquality.equals(other.organizations, organizations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (organizations.hashCode);

  @override
  String toString() => 'OrganizationListResponse[organizations=$organizations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'organizations'] = this.organizations;
    return json;
  }

  /// Returns a new [OrganizationListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'organizations'), 'Required key "OrganizationListResponse[organizations]" is missing from JSON.');
        assert(json[r'organizations'] != null, 'Required key "OrganizationListResponse[organizations]" has a null value in JSON.');
        return true;
      }());

      return OrganizationListResponse(
        organizations: Organization.listFromJson(json[r'organizations']),
      );
    }
    return null;
  }

  static List<OrganizationListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrganizationListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrganizationListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrganizationListResponse> mapFromJson(dynamic json) {
    final map = <String, OrganizationListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrganizationListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrganizationListResponse-objects as value to a dart map
  static Map<String, List<OrganizationListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrganizationListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrganizationListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'organizations',
  };
}

