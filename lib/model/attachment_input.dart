//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AttachmentInput {
  /// Returns a new [AttachmentInput] instance.
  AttachmentInput({
    required this.filename,
    required this.contentType,
    required this.data,
    this.size,
  });

  String filename;

  String contentType;

  /// Base64-encoded bytes.
  String data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentInput &&
    other.filename == filename &&
    other.contentType == contentType &&
    other.data == data &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filename.hashCode) +
    (contentType.hashCode) +
    (data.hashCode) +
    (size == null ? 0 : size!.hashCode);

  @override
  String toString() => 'AttachmentInput[filename=$filename, contentType=$contentType, data=$data, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filename'] = this.filename;
      json[r'contentType'] = this.contentType;
      json[r'data'] = this.data;
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    return json;
  }

  /// Returns a new [AttachmentInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttachmentInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'filename'), 'Required key "AttachmentInput[filename]" is missing from JSON.');
        assert(json[r'filename'] != null, 'Required key "AttachmentInput[filename]" has a null value in JSON.');
        assert(json.containsKey(r'contentType'), 'Required key "AttachmentInput[contentType]" is missing from JSON.');
        assert(json[r'contentType'] != null, 'Required key "AttachmentInput[contentType]" has a null value in JSON.');
        assert(json.containsKey(r'data'), 'Required key "AttachmentInput[data]" is missing from JSON.');
        assert(json[r'data'] != null, 'Required key "AttachmentInput[data]" has a null value in JSON.');
        return true;
      }());

      return AttachmentInput(
        filename: mapValueOfType<String>(json, r'filename')!,
        contentType: mapValueOfType<String>(json, r'contentType')!,
        data: mapValueOfType<String>(json, r'data')!,
        size: mapValueOfType<int>(json, r'size'),
      );
    }
    return null;
  }

  static List<AttachmentInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttachmentInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttachmentInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttachmentInput> mapFromJson(dynamic json) {
    final map = <String, AttachmentInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttachmentInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttachmentInput-objects as value to a dart map
  static Map<String, List<AttachmentInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttachmentInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttachmentInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'filename',
    'contentType',
    'data',
  };
}

