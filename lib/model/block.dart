//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Block {
  /// Returns a new [Block] instance.
  Block({
    required this.id,
    required this.noteId,
    this.parentId,
    required this.type,
    required this.content,
    this.properties = const {},
    required this.position,
    required this.hasChildren,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String noteId;

  String? parentId;

  BlockType type;

  BlockContent content;

  Map<String, Object> properties;

  /// Order within the parent (0-indexed).
  int position;

  bool hasChildren;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Block &&
    other.id == id &&
    other.noteId == noteId &&
    other.parentId == parentId &&
    other.type == type &&
    other.content == content &&
    _deepEquality.equals(other.properties, properties) &&
    other.position == position &&
    other.hasChildren == hasChildren &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (noteId.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (type.hashCode) +
    (content.hashCode) +
    (properties.hashCode) +
    (position.hashCode) +
    (hasChildren.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Block[id=$id, noteId=$noteId, parentId=$parentId, type=$type, content=$content, properties=$properties, position=$position, hasChildren=$hasChildren, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'noteId'] = this.noteId;
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
      json[r'type'] = this.type;
      json[r'content'] = this.content;
      json[r'properties'] = this.properties;
      json[r'position'] = this.position;
      json[r'hasChildren'] = this.hasChildren;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Block] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Block? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Block[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Block[id]" has a null value in JSON.');
        assert(json.containsKey(r'noteId'), 'Required key "Block[noteId]" is missing from JSON.');
        assert(json[r'noteId'] != null, 'Required key "Block[noteId]" has a null value in JSON.');
        assert(json.containsKey(r'type'), 'Required key "Block[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "Block[type]" has a null value in JSON.');
        assert(json.containsKey(r'content'), 'Required key "Block[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "Block[content]" has a null value in JSON.');
        assert(json.containsKey(r'position'), 'Required key "Block[position]" is missing from JSON.');
        assert(json[r'position'] != null, 'Required key "Block[position]" has a null value in JSON.');
        assert(json.containsKey(r'hasChildren'), 'Required key "Block[hasChildren]" is missing from JSON.');
        assert(json[r'hasChildren'] != null, 'Required key "Block[hasChildren]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "Block[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "Block[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "Block[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "Block[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return Block(
        id: mapValueOfType<String>(json, r'id')!,
        noteId: mapValueOfType<String>(json, r'noteId')!,
        parentId: mapValueOfType<String>(json, r'parentId'),
        type: BlockType.fromJson(json[r'type'])!,
        content: BlockContent.fromJson(json[r'content'])!,
        properties: mapCastOfType<String, Object>(json, r'properties') ?? const {},
        position: mapValueOfType<int>(json, r'position')!,
        hasChildren: mapValueOfType<bool>(json, r'hasChildren')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<Block> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Block>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Block.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Block> mapFromJson(dynamic json) {
    final map = <String, Block>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Block.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Block-objects as value to a dart map
  static Map<String, List<Block>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Block>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Block.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'noteId',
    'type',
    'content',
    'position',
    'hasChildren',
    'createdAt',
    'updatedAt',
  };
}

