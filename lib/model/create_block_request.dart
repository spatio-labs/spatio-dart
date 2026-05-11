//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateBlockRequest {
  /// Returns a new [CreateBlockRequest] instance.
  CreateBlockRequest({
    required this.type,
    required this.content,
    this.parentId,
    required this.position,
    this.properties = const {},
  });

  BlockType type;

  BlockContent content;

  /// Parent block id for nested blocks.
  String? parentId;

  int position;

  Map<String, Object> properties;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateBlockRequest &&
    other.type == type &&
    other.content == content &&
    other.parentId == parentId &&
    other.position == position &&
    _deepEquality.equals(other.properties, properties);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (content.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (position.hashCode) +
    (properties.hashCode);

  @override
  String toString() => 'CreateBlockRequest[type=$type, content=$content, parentId=$parentId, position=$position, properties=$properties]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'content'] = this.content;
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
      json[r'position'] = this.position;
      json[r'properties'] = this.properties;
    return json;
  }

  /// Returns a new [CreateBlockRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateBlockRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'type'), 'Required key "CreateBlockRequest[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "CreateBlockRequest[type]" has a null value in JSON.');
        assert(json.containsKey(r'content'), 'Required key "CreateBlockRequest[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "CreateBlockRequest[content]" has a null value in JSON.');
        assert(json.containsKey(r'position'), 'Required key "CreateBlockRequest[position]" is missing from JSON.');
        assert(json[r'position'] != null, 'Required key "CreateBlockRequest[position]" has a null value in JSON.');
        return true;
      }());

      return CreateBlockRequest(
        type: BlockType.fromJson(json[r'type'])!,
        content: BlockContent.fromJson(json[r'content'])!,
        parentId: mapValueOfType<String>(json, r'parentId'),
        position: mapValueOfType<int>(json, r'position')!,
        properties: mapCastOfType<String, Object>(json, r'properties') ?? const {},
      );
    }
    return null;
  }

  static List<CreateBlockRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateBlockRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateBlockRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateBlockRequest> mapFromJson(dynamic json) {
    final map = <String, CreateBlockRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateBlockRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateBlockRequest-objects as value to a dart map
  static Map<String, List<CreateBlockRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateBlockRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateBlockRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'content',
    'position',
  };
}

