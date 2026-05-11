//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ContactCategoryListResponse {
  /// Returns a new [ContactCategoryListResponse] instance.
  ContactCategoryListResponse({
    this.categories = const [],
  });

  List<ContactCategory>? categories;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ContactCategoryListResponse &&
    _deepEquality.equals(other.categories, categories);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (categories == null ? 0 : categories!.hashCode);

  @override
  String toString() => 'ContactCategoryListResponse[categories=$categories]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.categories != null) {
      json[r'categories'] = this.categories;
    } else {
      json[r'categories'] = null;
    }
    return json;
  }

  /// Returns a new [ContactCategoryListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ContactCategoryListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'categories'), 'Required key "ContactCategoryListResponse[categories]" is missing from JSON.');
        return true;
      }());

      return ContactCategoryListResponse(
        categories: ContactCategory.listFromJson(json[r'categories']),
      );
    }
    return null;
  }

  static List<ContactCategoryListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ContactCategoryListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ContactCategoryListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ContactCategoryListResponse> mapFromJson(dynamic json) {
    final map = <String, ContactCategoryListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ContactCategoryListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ContactCategoryListResponse-objects as value to a dart map
  static Map<String, List<ContactCategoryListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ContactCategoryListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ContactCategoryListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'categories',
  };
}

