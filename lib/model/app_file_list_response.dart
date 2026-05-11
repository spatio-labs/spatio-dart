//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AppFileListResponse {
  /// Returns a new [AppFileListResponse] instance.
  AppFileListResponse({
    this.files = const [],
  });

  List<Map<String, Object>>? files;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppFileListResponse &&
    _deepEquality.equals(other.files, files);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (files == null ? 0 : files!.hashCode);

  @override
  String toString() => 'AppFileListResponse[files=$files]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.files != null) {
      json[r'files'] = this.files;
    } else {
      json[r'files'] = null;
    }
    return json;
  }

  /// Returns a new [AppFileListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AppFileListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'files'), 'Required key "AppFileListResponse[files]" is missing from JSON.');
        return true;
      }());

      return AppFileListResponse(
        files: Map.listFromJson(json[r'files']),
      );
    }
    return null;
  }

  static List<AppFileListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AppFileListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppFileListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AppFileListResponse> mapFromJson(dynamic json) {
    final map = <String, AppFileListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AppFileListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AppFileListResponse-objects as value to a dart map
  static Map<String, List<AppFileListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AppFileListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AppFileListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'files',
  };
}

