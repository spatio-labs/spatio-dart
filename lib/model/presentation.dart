//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Presentation {
  /// Returns a new [Presentation] instance.
  Presentation({
    required this.id,
    this.provider,
    this.accountId,
    this.ownerUserId,
    required this.title,
    this.description,
    this.theme,
    this.thumbnailUrl,
    required this.createdAt,
    required this.updatedAt,
    this.lastViewedAt,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ownerUserId;

  String title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Free-form theme id; provider-specific.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? theme;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? thumbnailUrl;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? lastViewedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Presentation &&
    other.id == id &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.ownerUserId == ownerUserId &&
    other.title == title &&
    other.description == description &&
    other.theme == theme &&
    other.thumbnailUrl == thumbnailUrl &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.lastViewedAt == lastViewedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (ownerUserId == null ? 0 : ownerUserId!.hashCode) +
    (title.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (theme == null ? 0 : theme!.hashCode) +
    (thumbnailUrl == null ? 0 : thumbnailUrl!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (lastViewedAt == null ? 0 : lastViewedAt!.hashCode);

  @override
  String toString() => 'Presentation[id=$id, provider=$provider, accountId=$accountId, ownerUserId=$ownerUserId, title=$title, description=$description, theme=$theme, thumbnailUrl=$thumbnailUrl, createdAt=$createdAt, updatedAt=$updatedAt, lastViewedAt=$lastViewedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.ownerUserId != null) {
      json[r'ownerUserId'] = this.ownerUserId;
    } else {
      json[r'ownerUserId'] = null;
    }
      json[r'title'] = this.title;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.theme != null) {
      json[r'theme'] = this.theme;
    } else {
      json[r'theme'] = null;
    }
    if (this.thumbnailUrl != null) {
      json[r'thumbnailUrl'] = this.thumbnailUrl;
    } else {
      json[r'thumbnailUrl'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.lastViewedAt != null) {
      json[r'lastViewedAt'] = this.lastViewedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastViewedAt'] = null;
    }
    return json;
  }

  /// Returns a new [Presentation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Presentation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Presentation[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Presentation[id]" has a null value in JSON.');
        assert(json.containsKey(r'title'), 'Required key "Presentation[title]" is missing from JSON.');
        assert(json[r'title'] != null, 'Required key "Presentation[title]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "Presentation[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "Presentation[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "Presentation[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "Presentation[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return Presentation(
        id: mapValueOfType<String>(json, r'id')!,
        provider: mapValueOfType<String>(json, r'provider'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        ownerUserId: mapValueOfType<String>(json, r'ownerUserId'),
        title: mapValueOfType<String>(json, r'title')!,
        description: mapValueOfType<String>(json, r'description'),
        theme: mapValueOfType<String>(json, r'theme'),
        thumbnailUrl: mapValueOfType<String>(json, r'thumbnailUrl'),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
        lastViewedAt: mapDateTime(json, r'lastViewedAt', r''),
      );
    }
    return null;
  }

  static List<Presentation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Presentation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Presentation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Presentation> mapFromJson(dynamic json) {
    final map = <String, Presentation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Presentation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Presentation-objects as value to a dart map
  static Map<String, List<Presentation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Presentation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Presentation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'createdAt',
    'updatedAt',
  };
}

