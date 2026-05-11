//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class WriteAppFileRequest {
  /// Returns a new [WriteAppFileRequest] instance.
  WriteAppFileRequest({
    required this.path,
    required this.content,
  });

  String path;

  String content;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WriteAppFileRequest &&
    other.path == path &&
    other.content == content;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (path.hashCode) +
    (content.hashCode);

  @override
  String toString() => 'WriteAppFileRequest[path=$path, content=$content]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'path'] = this.path;
      json[r'content'] = this.content;
    return json;
  }

  /// Returns a new [WriteAppFileRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WriteAppFileRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'path'), 'Required key "WriteAppFileRequest[path]" is missing from JSON.');
        assert(json[r'path'] != null, 'Required key "WriteAppFileRequest[path]" has a null value in JSON.');
        assert(json.containsKey(r'content'), 'Required key "WriteAppFileRequest[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "WriteAppFileRequest[content]" has a null value in JSON.');
        return true;
      }());

      return WriteAppFileRequest(
        path: mapValueOfType<String>(json, r'path')!,
        content: mapValueOfType<String>(json, r'content')!,
      );
    }
    return null;
  }

  static List<WriteAppFileRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WriteAppFileRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WriteAppFileRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WriteAppFileRequest> mapFromJson(dynamic json) {
    final map = <String, WriteAppFileRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WriteAppFileRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WriteAppFileRequest-objects as value to a dart map
  static Map<String, List<WriteAppFileRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WriteAppFileRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WriteAppFileRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'path',
    'content',
  };
}

