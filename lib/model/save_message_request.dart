//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SaveMessageRequest {
  /// Returns a new [SaveMessageRequest] instance.
  SaveMessageRequest({
    required this.role,
    required this.content,
    this.metadata = const {},
  });

  String role;

  String content;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SaveMessageRequest &&
    other.role == role &&
    other.content == content &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (role.hashCode) +
    (content.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'SaveMessageRequest[role=$role, content=$content, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'role'] = this.role;
      json[r'content'] = this.content;
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [SaveMessageRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SaveMessageRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'role'), 'Required key "SaveMessageRequest[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "SaveMessageRequest[role]" has a null value in JSON.');
        assert(json.containsKey(r'content'), 'Required key "SaveMessageRequest[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "SaveMessageRequest[content]" has a null value in JSON.');
        return true;
      }());

      return SaveMessageRequest(
        role: mapValueOfType<String>(json, r'role')!,
        content: mapValueOfType<String>(json, r'content')!,
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<SaveMessageRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SaveMessageRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SaveMessageRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SaveMessageRequest> mapFromJson(dynamic json) {
    final map = <String, SaveMessageRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SaveMessageRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SaveMessageRequest-objects as value to a dart map
  static Map<String, List<SaveMessageRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SaveMessageRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SaveMessageRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'role',
    'content',
  };
}

