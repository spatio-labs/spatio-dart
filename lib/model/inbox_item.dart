//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class InboxItem {
  /// Returns a new [InboxItem] instance.
  InboxItem({
    required this.id,
    required this.category,
    this.title,
    this.snippet,
    this.source_,
    this.sourceId,
    this.accountId,
    this.isRead,
    this.isMention,
    this.timestamp,
    this.metadata = const {},
  });

  String id;

  String category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? snippet;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceId;

  String? accountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isRead;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isMention;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? timestamp;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxItem &&
    other.id == id &&
    other.category == category &&
    other.title == title &&
    other.snippet == snippet &&
    other.source_ == source_ &&
    other.sourceId == sourceId &&
    other.accountId == accountId &&
    other.isRead == isRead &&
    other.isMention == isMention &&
    other.timestamp == timestamp &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (category.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (snippet == null ? 0 : snippet!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (isRead == null ? 0 : isRead!.hashCode) +
    (isMention == null ? 0 : isMention!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'InboxItem[id=$id, category=$category, title=$title, snippet=$snippet, source_=$source_, sourceId=$sourceId, accountId=$accountId, isRead=$isRead, isMention=$isMention, timestamp=$timestamp, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'category'] = this.category;
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.snippet != null) {
      json[r'snippet'] = this.snippet;
    } else {
      json[r'snippet'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.sourceId != null) {
      json[r'sourceId'] = this.sourceId;
    } else {
      json[r'sourceId'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.isRead != null) {
      json[r'isRead'] = this.isRead;
    } else {
      json[r'isRead'] = null;
    }
    if (this.isMention != null) {
      json[r'isMention'] = this.isMention;
    } else {
      json[r'isMention'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp!.toUtc().toIso8601String();
    } else {
      json[r'timestamp'] = null;
    }
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [InboxItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "InboxItem[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "InboxItem[id]" has a null value in JSON.');
        assert(json.containsKey(r'category'), 'Required key "InboxItem[category]" is missing from JSON.');
        assert(json[r'category'] != null, 'Required key "InboxItem[category]" has a null value in JSON.');
        return true;
      }());

      return InboxItem(
        id: mapValueOfType<String>(json, r'id')!,
        category: mapValueOfType<String>(json, r'category')!,
        title: mapValueOfType<String>(json, r'title'),
        snippet: mapValueOfType<String>(json, r'snippet'),
        source_: mapValueOfType<String>(json, r'source'),
        sourceId: mapValueOfType<String>(json, r'sourceId'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        isRead: mapValueOfType<bool>(json, r'isRead'),
        isMention: mapValueOfType<bool>(json, r'isMention'),
        timestamp: mapDateTime(json, r'timestamp', r''),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<InboxItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxItem> mapFromJson(dynamic json) {
    final map = <String, InboxItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxItem-objects as value to a dart map
  static Map<String, List<InboxItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'category',
  };
}

