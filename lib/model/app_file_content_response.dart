//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AppFileContentResponse {
  /// Returns a new [AppFileContentResponse] instance.
  AppFileContentResponse({
    required this.path,
    this.content,
  });

  String path;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppFileContentResponse &&
    other.path == path &&
    other.content == content;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (path.hashCode) +
    (content == null ? 0 : content!.hashCode);

  @override
  String toString() => 'AppFileContentResponse[path=$path, content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'path'] = this.path;
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    return json;
  }

  /// Returns a new [AppFileContentResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AppFileContentResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'path'), 'Required key "AppFileContentResponse[path]" is missing from JSON.');
        assert(json[r'path'] != null, 'Required key "AppFileContentResponse[path]" has a null value in JSON.');
        return true;
      }());

      return AppFileContentResponse(
        path: mapValueOfType<String>(json, r'path')!,
        content: mapValueOfType<String>(json, r'content'),
      );
    }
    return null;
  }

  static List<AppFileContentResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AppFileContentResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppFileContentResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AppFileContentResponse> mapFromJson(dynamic json) {
    final map = <String, AppFileContentResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AppFileContentResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AppFileContentResponse-objects as value to a dart map
  static Map<String, List<AppFileContentResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AppFileContentResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AppFileContentResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'path',
  };
}

