//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Draft {
  /// Returns a new [Draft] instance.
  Draft({
    required this.id,
    required this.messageId,
    this.threadId,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    this.subject,
    this.body,
    required this.html,
    this.attachments = const [],
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String messageId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? threadId;

  List<String> to;

  List<String> cc;

  List<String> bcc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  bool html;

  List<AttachmentMeta> attachments;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Draft &&
    other.id == id &&
    other.messageId == messageId &&
    other.threadId == threadId &&
    _deepEquality.equals(other.to, to) &&
    _deepEquality.equals(other.cc, cc) &&
    _deepEquality.equals(other.bcc, bcc) &&
    other.subject == subject &&
    other.body == body &&
    other.html == html &&
    _deepEquality.equals(other.attachments, attachments) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (messageId.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (to.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (html.hashCode) +
    (attachments.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Draft[id=$id, messageId=$messageId, threadId=$threadId, to=$to, cc=$cc, bcc=$bcc, subject=$subject, body=$body, html=$html, attachments=$attachments, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'messageId'] = this.messageId;
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
    }
      json[r'to'] = this.to;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
      json[r'html'] = this.html;
      json[r'attachments'] = this.attachments;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Draft] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Draft? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Draft[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Draft[id]" has a null value in JSON.');
        assert(json.containsKey(r'messageId'), 'Required key "Draft[messageId]" is missing from JSON.');
        assert(json[r'messageId'] != null, 'Required key "Draft[messageId]" has a null value in JSON.');
        assert(json.containsKey(r'html'), 'Required key "Draft[html]" is missing from JSON.');
        assert(json[r'html'] != null, 'Required key "Draft[html]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "Draft[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "Draft[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "Draft[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "Draft[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return Draft(
        id: mapValueOfType<String>(json, r'id')!,
        messageId: mapValueOfType<String>(json, r'messageId')!,
        threadId: mapValueOfType<String>(json, r'threadId'),
        to: json[r'to'] is Iterable
            ? (json[r'to'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        cc: json[r'cc'] is Iterable
            ? (json[r'cc'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        bcc: json[r'bcc'] is Iterable
            ? (json[r'bcc'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        subject: mapValueOfType<String>(json, r'subject'),
        body: mapValueOfType<String>(json, r'body'),
        html: mapValueOfType<bool>(json, r'html')!,
        attachments: AttachmentMeta.listFromJson(json[r'attachments']),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<Draft> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Draft>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Draft.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Draft> mapFromJson(dynamic json) {
    final map = <String, Draft>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Draft.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Draft-objects as value to a dart map
  static Map<String, List<Draft>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Draft>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Draft.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'messageId',
    'html',
    'createdAt',
    'updatedAt',
  };
}

