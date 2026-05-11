//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ShareSettings {
  /// Returns a new [ShareSettings] instance.
  ShareSettings({
    required this.isPublic,
    required this.hasPassword,
    this.shareToken,
    this.shareUrl,
    this.passwordSetAt,
  });

  bool isPublic;

  bool hasPassword;

  /// Opaque token embedded in the public URL. Empty when `isPublic` is false. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shareToken;

  /// Fully-qualified public viewer URL. Computed server-side from `PUBLIC_VIEWER_BASE` (defaults to `https://spatio.app`) and the share token. Empty when the note is private. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shareUrl;

  /// When the current password was set, if any.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? passwordSetAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ShareSettings &&
    other.isPublic == isPublic &&
    other.hasPassword == hasPassword &&
    other.shareToken == shareToken &&
    other.shareUrl == shareUrl &&
    other.passwordSetAt == passwordSetAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isPublic.hashCode) +
    (hasPassword.hashCode) +
    (shareToken == null ? 0 : shareToken!.hashCode) +
    (shareUrl == null ? 0 : shareUrl!.hashCode) +
    (passwordSetAt == null ? 0 : passwordSetAt!.hashCode);

  @override
  String toString() => 'ShareSettings[isPublic=$isPublic, hasPassword=$hasPassword, shareToken=$shareToken, shareUrl=$shareUrl, passwordSetAt=$passwordSetAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'isPublic'] = this.isPublic;
      json[r'hasPassword'] = this.hasPassword;
    if (this.shareToken != null) {
      json[r'shareToken'] = this.shareToken;
    } else {
      json[r'shareToken'] = null;
    }
    if (this.shareUrl != null) {
      json[r'shareUrl'] = this.shareUrl;
    } else {
      json[r'shareUrl'] = null;
    }
    if (this.passwordSetAt != null) {
      json[r'passwordSetAt'] = this.passwordSetAt!.toUtc().toIso8601String();
    } else {
      json[r'passwordSetAt'] = null;
    }
    return json;
  }

  /// Returns a new [ShareSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ShareSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'isPublic'), 'Required key "ShareSettings[isPublic]" is missing from JSON.');
        assert(json[r'isPublic'] != null, 'Required key "ShareSettings[isPublic]" has a null value in JSON.');
        assert(json.containsKey(r'hasPassword'), 'Required key "ShareSettings[hasPassword]" is missing from JSON.');
        assert(json[r'hasPassword'] != null, 'Required key "ShareSettings[hasPassword]" has a null value in JSON.');
        return true;
      }());

      return ShareSettings(
        isPublic: mapValueOfType<bool>(json, r'isPublic')!,
        hasPassword: mapValueOfType<bool>(json, r'hasPassword')!,
        shareToken: mapValueOfType<String>(json, r'shareToken'),
        shareUrl: mapValueOfType<String>(json, r'shareUrl'),
        passwordSetAt: mapDateTime(json, r'passwordSetAt', r''),
      );
    }
    return null;
  }

  static List<ShareSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ShareSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ShareSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ShareSettings> mapFromJson(dynamic json) {
    final map = <String, ShareSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ShareSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ShareSettings-objects as value to a dart map
  static Map<String, List<ShareSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ShareSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ShareSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'isPublic',
    'hasPassword',
  };
}

