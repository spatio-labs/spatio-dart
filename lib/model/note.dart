//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Note {
  /// Returns a new [Note] instance.
  Note({
    required this.id,
    this.provider,
    this.accountId,
    this.ownerUserId,
    required this.title,
    required this.content,
    this.icon,
    this.coverImage,
    this.parentId,
    this.properties = const {},
    required this.archived,
    required this.createdAt,
    required this.updatedAt,
    this.lastEditedBy,
  });

  /// Stable provider id for the note.
  String id;

  /// Registered provider id (e.g. `native-notes`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Connected-account row this note belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  /// User id of the note's owner. Surfaced so the renderer can show \"Shared with you\" when `ownerUserId` differs from the viewer's id. Empty for non-native providers. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ownerUserId;

  String title;

  /// Markdown body. The block tree at `/v1/notes/{id}/blocks` is the canonical structured representation; `content` is a flattened markdown view kept for clients that don't render blocks. 
  String content;

  /// Emoji or short string used as the note's icon.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? icon;

  /// URL of the note's cover image.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coverImage;

  /// Parent note id when notes are nested.
  String? parentId;

  /// Free-form provider-specific properties (tags, etc.).
  Map<String, Object> properties;

  bool archived;

  DateTime createdAt;

  DateTime updatedAt;

  /// User id of the most recent editor.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastEditedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Note &&
    other.id == id &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.ownerUserId == ownerUserId &&
    other.title == title &&
    other.content == content &&
    other.icon == icon &&
    other.coverImage == coverImage &&
    other.parentId == parentId &&
    _deepEquality.equals(other.properties, properties) &&
    other.archived == archived &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.lastEditedBy == lastEditedBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (ownerUserId == null ? 0 : ownerUserId!.hashCode) +
    (title.hashCode) +
    (content.hashCode) +
    (icon == null ? 0 : icon!.hashCode) +
    (coverImage == null ? 0 : coverImage!.hashCode) +
    (parentId == null ? 0 : parentId!.hashCode) +
    (properties.hashCode) +
    (archived.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (lastEditedBy == null ? 0 : lastEditedBy!.hashCode);

  @override
  String toString() => 'Note[id=$id, provider=$provider, accountId=$accountId, ownerUserId=$ownerUserId, title=$title, content=$content, icon=$icon, coverImage=$coverImage, parentId=$parentId, properties=$properties, archived=$archived, createdAt=$createdAt, updatedAt=$updatedAt, lastEditedBy=$lastEditedBy]';

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
      json[r'content'] = this.content;
    if (this.icon != null) {
      json[r'icon'] = this.icon;
    } else {
      json[r'icon'] = null;
    }
    if (this.coverImage != null) {
      json[r'coverImage'] = this.coverImage;
    } else {
      json[r'coverImage'] = null;
    }
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
      json[r'properties'] = this.properties;
      json[r'archived'] = this.archived;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.lastEditedBy != null) {
      json[r'lastEditedBy'] = this.lastEditedBy;
    } else {
      json[r'lastEditedBy'] = null;
    }
    return json;
  }

  /// Returns a new [Note] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Note? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Note[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Note[id]" has a null value in JSON.');
        assert(json.containsKey(r'title'), 'Required key "Note[title]" is missing from JSON.');
        assert(json[r'title'] != null, 'Required key "Note[title]" has a null value in JSON.');
        assert(json.containsKey(r'content'), 'Required key "Note[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "Note[content]" has a null value in JSON.');
        assert(json.containsKey(r'archived'), 'Required key "Note[archived]" is missing from JSON.');
        assert(json[r'archived'] != null, 'Required key "Note[archived]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "Note[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "Note[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "Note[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "Note[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return Note(
        id: mapValueOfType<String>(json, r'id')!,
        provider: mapValueOfType<String>(json, r'provider'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        ownerUserId: mapValueOfType<String>(json, r'ownerUserId'),
        title: mapValueOfType<String>(json, r'title')!,
        content: mapValueOfType<String>(json, r'content')!,
        icon: mapValueOfType<String>(json, r'icon'),
        coverImage: mapValueOfType<String>(json, r'coverImage'),
        parentId: mapValueOfType<String>(json, r'parentId'),
        properties: mapCastOfType<String, Object>(json, r'properties') ?? const {},
        archived: mapValueOfType<bool>(json, r'archived')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
        lastEditedBy: mapValueOfType<String>(json, r'lastEditedBy'),
      );
    }
    return null;
  }

  static List<Note> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Note>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Note.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Note> mapFromJson(dynamic json) {
    final map = <String, Note>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Note.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Note-objects as value to a dart map
  static Map<String, List<Note>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Note>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Note.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'content',
    'archived',
    'createdAt',
    'updatedAt',
  };
}

