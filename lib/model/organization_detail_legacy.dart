//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class OrganizationDetailLegacy {
  /// Returns a new [OrganizationDetailLegacy] instance.
  OrganizationDetailLegacy({
    required this.ID,
    required this.name,
    required this.slug,
    this.description,
    this.logoURL,
    this.settings,
    required this.subscriptionTier,
    required this.deploymentType,
    required this.subscriptionStatus,
    required this.createdAt,
    required this.updatedAt,
  });

  String ID;

  String name;

  String slug;

  String? description;

  String? logoURL;

  /// JSON-encoded settings string. Parse client-side.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? settings;

  String subscriptionTier;

  String deploymentType;

  String subscriptionStatus;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationDetailLegacy &&
    other.ID == ID &&
    other.name == name &&
    other.slug == slug &&
    other.description == description &&
    other.logoURL == logoURL &&
    other.settings == settings &&
    other.subscriptionTier == subscriptionTier &&
    other.deploymentType == deploymentType &&
    other.subscriptionStatus == subscriptionStatus &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ID.hashCode) +
    (name.hashCode) +
    (slug.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (logoURL == null ? 0 : logoURL!.hashCode) +
    (settings == null ? 0 : settings!.hashCode) +
    (subscriptionTier.hashCode) +
    (deploymentType.hashCode) +
    (subscriptionStatus.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'OrganizationDetailLegacy[ID=$ID, name=$name, slug=$slug, description=$description, logoURL=$logoURL, settings=$settings, subscriptionTier=$subscriptionTier, deploymentType=$deploymentType, subscriptionStatus=$subscriptionStatus, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ID'] = this.ID;
      json[r'Name'] = this.name;
      json[r'Slug'] = this.slug;
    if (this.description != null) {
      json[r'Description'] = this.description;
    } else {
      json[r'Description'] = null;
    }
    if (this.logoURL != null) {
      json[r'LogoURL'] = this.logoURL;
    } else {
      json[r'LogoURL'] = null;
    }
    if (this.settings != null) {
      json[r'Settings'] = this.settings;
    } else {
      json[r'Settings'] = null;
    }
      json[r'SubscriptionTier'] = this.subscriptionTier;
      json[r'DeploymentType'] = this.deploymentType;
      json[r'SubscriptionStatus'] = this.subscriptionStatus;
      json[r'CreatedAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'UpdatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [OrganizationDetailLegacy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationDetailLegacy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'ID'), 'Required key "OrganizationDetailLegacy[ID]" is missing from JSON.');
        assert(json[r'ID'] != null, 'Required key "OrganizationDetailLegacy[ID]" has a null value in JSON.');
        assert(json.containsKey(r'Name'), 'Required key "OrganizationDetailLegacy[Name]" is missing from JSON.');
        assert(json[r'Name'] != null, 'Required key "OrganizationDetailLegacy[Name]" has a null value in JSON.');
        assert(json.containsKey(r'Slug'), 'Required key "OrganizationDetailLegacy[Slug]" is missing from JSON.');
        assert(json[r'Slug'] != null, 'Required key "OrganizationDetailLegacy[Slug]" has a null value in JSON.');
        assert(json.containsKey(r'SubscriptionTier'), 'Required key "OrganizationDetailLegacy[SubscriptionTier]" is missing from JSON.');
        assert(json[r'SubscriptionTier'] != null, 'Required key "OrganizationDetailLegacy[SubscriptionTier]" has a null value in JSON.');
        assert(json.containsKey(r'DeploymentType'), 'Required key "OrganizationDetailLegacy[DeploymentType]" is missing from JSON.');
        assert(json[r'DeploymentType'] != null, 'Required key "OrganizationDetailLegacy[DeploymentType]" has a null value in JSON.');
        assert(json.containsKey(r'SubscriptionStatus'), 'Required key "OrganizationDetailLegacy[SubscriptionStatus]" is missing from JSON.');
        assert(json[r'SubscriptionStatus'] != null, 'Required key "OrganizationDetailLegacy[SubscriptionStatus]" has a null value in JSON.');
        assert(json.containsKey(r'CreatedAt'), 'Required key "OrganizationDetailLegacy[CreatedAt]" is missing from JSON.');
        assert(json[r'CreatedAt'] != null, 'Required key "OrganizationDetailLegacy[CreatedAt]" has a null value in JSON.');
        assert(json.containsKey(r'UpdatedAt'), 'Required key "OrganizationDetailLegacy[UpdatedAt]" is missing from JSON.');
        assert(json[r'UpdatedAt'] != null, 'Required key "OrganizationDetailLegacy[UpdatedAt]" has a null value in JSON.');
        return true;
      }());

      return OrganizationDetailLegacy(
        ID: mapValueOfType<String>(json, r'ID')!,
        name: mapValueOfType<String>(json, r'Name')!,
        slug: mapValueOfType<String>(json, r'Slug')!,
        description: mapValueOfType<String>(json, r'Description'),
        logoURL: mapValueOfType<String>(json, r'LogoURL'),
        settings: mapValueOfType<String>(json, r'Settings'),
        subscriptionTier: mapValueOfType<String>(json, r'SubscriptionTier')!,
        deploymentType: mapValueOfType<String>(json, r'DeploymentType')!,
        subscriptionStatus: mapValueOfType<String>(json, r'SubscriptionStatus')!,
        createdAt: mapDateTime(json, r'CreatedAt', r'')!,
        updatedAt: mapDateTime(json, r'UpdatedAt', r'')!,
      );
    }
    return null;
  }

  static List<OrganizationDetailLegacy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrganizationDetailLegacy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrganizationDetailLegacy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrganizationDetailLegacy> mapFromJson(dynamic json) {
    final map = <String, OrganizationDetailLegacy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrganizationDetailLegacy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrganizationDetailLegacy-objects as value to a dart map
  static Map<String, List<OrganizationDetailLegacy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrganizationDetailLegacy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrganizationDetailLegacy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ID',
    'Name',
    'Slug',
    'SubscriptionTier',
    'DeploymentType',
    'SubscriptionStatus',
    'CreatedAt',
    'UpdatedAt',
  };
}

