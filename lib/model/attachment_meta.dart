//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AttachmentMeta {
  /// Returns a new [AttachmentMeta] instance.
  AttachmentMeta({
    required this.id,
    required this.filename,
    required this.contentType,
    required this.size,
  });

  String id;

  String filename;

  String contentType;

  int size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentMeta &&
    other.id == id &&
    other.filename == filename &&
    other.contentType == contentType &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (filename.hashCode) +
    (contentType.hashCode) +
    (size.hashCode);

  @override
  String toString() => 'AttachmentMeta[id=$id, filename=$filename, contentType=$contentType, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'filename'] = this.filename;
      json[r'contentType'] = this.contentType;
      json[r'size'] = this.size;
    return json;
  }

  /// Returns a new [AttachmentMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttachmentMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "AttachmentMeta[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "AttachmentMeta[id]" has a null value in JSON.');
        assert(json.containsKey(r'filename'), 'Required key "AttachmentMeta[filename]" is missing from JSON.');
        assert(json[r'filename'] != null, 'Required key "AttachmentMeta[filename]" has a null value in JSON.');
        assert(json.containsKey(r'contentType'), 'Required key "AttachmentMeta[contentType]" is missing from JSON.');
        assert(json[r'contentType'] != null, 'Required key "AttachmentMeta[contentType]" has a null value in JSON.');
        assert(json.containsKey(r'size'), 'Required key "AttachmentMeta[size]" is missing from JSON.');
        assert(json[r'size'] != null, 'Required key "AttachmentMeta[size]" has a null value in JSON.');
        return true;
      }());

      return AttachmentMeta(
        id: mapValueOfType<String>(json, r'id')!,
        filename: mapValueOfType<String>(json, r'filename')!,
        contentType: mapValueOfType<String>(json, r'contentType')!,
        size: mapValueOfType<int>(json, r'size')!,
      );
    }
    return null;
  }

  static List<AttachmentMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttachmentMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttachmentMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttachmentMeta> mapFromJson(dynamic json) {
    final map = <String, AttachmentMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttachmentMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttachmentMeta-objects as value to a dart map
  static Map<String, List<AttachmentMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttachmentMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttachmentMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'filename',
    'contentType',
    'size',
  };
}

