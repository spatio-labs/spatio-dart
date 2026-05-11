//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateDraftRequest {
  /// Returns a new [CreateDraftRequest] instance.
  CreateDraftRequest({
    this.accountId,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    this.subject,
    this.body,
    this.html,
    this.attachments = const [],
    this.threadId,
    this.inReplyTo,
    this.references = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? html;

  List<AttachmentInput> attachments;

  /// Provider thread id — set when this draft is a reply, so the sent message lands inside the parent thread. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? threadId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inReplyTo;

  List<String> references;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDraftRequest &&
    other.accountId == accountId &&
    _deepEquality.equals(other.to, to) &&
    _deepEquality.equals(other.cc, cc) &&
    _deepEquality.equals(other.bcc, bcc) &&
    other.subject == subject &&
    other.body == body &&
    other.html == html &&
    _deepEquality.equals(other.attachments, attachments) &&
    other.threadId == threadId &&
    other.inReplyTo == inReplyTo &&
    _deepEquality.equals(other.references, references);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (to.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (html == null ? 0 : html!.hashCode) +
    (attachments.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (inReplyTo == null ? 0 : inReplyTo!.hashCode) +
    (references.hashCode);

  @override
  String toString() => 'CreateDraftRequest[accountId=$accountId, to=$to, cc=$cc, bcc=$bcc, subject=$subject, body=$body, html=$html, attachments=$attachments, threadId=$threadId, inReplyTo=$inReplyTo, references=$references]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
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
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
      json[r'attachments'] = this.attachments;
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
    }
    if (this.inReplyTo != null) {
      json[r'inReplyTo'] = this.inReplyTo;
    } else {
      json[r'inReplyTo'] = null;
    }
      json[r'references'] = this.references;
    return json;
  }

  /// Returns a new [CreateDraftRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDraftRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return CreateDraftRequest(
        accountId: mapValueOfType<String>(json, r'accountId'),
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
        html: mapValueOfType<bool>(json, r'html'),
        attachments: AttachmentInput.listFromJson(json[r'attachments']),
        threadId: mapValueOfType<String>(json, r'threadId'),
        inReplyTo: mapValueOfType<String>(json, r'inReplyTo'),
        references: json[r'references'] is Iterable
            ? (json[r'references'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<CreateDraftRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDraftRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDraftRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDraftRequest> mapFromJson(dynamic json) {
    final map = <String, CreateDraftRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDraftRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDraftRequest-objects as value to a dart map
  static Map<String, List<CreateDraftRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDraftRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDraftRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

