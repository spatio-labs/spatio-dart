//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Email {
  /// Returns a new [Email] instance.
  Email({
    required this.id,
    this.threadId,
    this.provider,
    this.accountId,
    required this.subject,
    required this.from,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    required this.body,
    required this.html,
    required this.date,
    this.labels = const [],
    required this.isRead,
    required this.isStarred,
    this.attachments = const [],
    this.snippet,
    this.messageId,
    this.inReplyTo,
    this.references = const [],
  });

  String id;

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
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  String subject;

  String from;

  List<String> to;

  List<String> cc;

  List<String> bcc;

  String body;

  /// `true` when `body` contains HTML, `false` for plain text. 
  bool html;

  DateTime date;

  List<String> labels;

  bool isRead;

  bool isStarred;

  List<AttachmentMeta> attachments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? snippet;

  /// RFC 5322 Message-ID header.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageId;

  /// RFC 5322 In-Reply-To header — the parent message id this message is a reply to. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inReplyTo;

  /// RFC 5322 References header (ancestor chain).
  List<String> references;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Email &&
    other.id == id &&
    other.threadId == threadId &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.subject == subject &&
    other.from == from &&
    _deepEquality.equals(other.to, to) &&
    _deepEquality.equals(other.cc, cc) &&
    _deepEquality.equals(other.bcc, bcc) &&
    other.body == body &&
    other.html == html &&
    other.date == date &&
    _deepEquality.equals(other.labels, labels) &&
    other.isRead == isRead &&
    other.isStarred == isStarred &&
    _deepEquality.equals(other.attachments, attachments) &&
    other.snippet == snippet &&
    other.messageId == messageId &&
    other.inReplyTo == inReplyTo &&
    _deepEquality.equals(other.references, references);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (subject.hashCode) +
    (from.hashCode) +
    (to.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (body.hashCode) +
    (html.hashCode) +
    (date.hashCode) +
    (labels.hashCode) +
    (isRead.hashCode) +
    (isStarred.hashCode) +
    (attachments.hashCode) +
    (snippet == null ? 0 : snippet!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (inReplyTo == null ? 0 : inReplyTo!.hashCode) +
    (references.hashCode);

  @override
  String toString() => 'Email[id=$id, threadId=$threadId, provider=$provider, accountId=$accountId, subject=$subject, from=$from, to=$to, cc=$cc, bcc=$bcc, body=$body, html=$html, date=$date, labels=$labels, isRead=$isRead, isStarred=$isStarred, attachments=$attachments, snippet=$snippet, messageId=$messageId, inReplyTo=$inReplyTo, references=$references]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
    }
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
      json[r'subject'] = this.subject;
      json[r'from'] = this.from;
      json[r'to'] = this.to;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
      json[r'body'] = this.body;
      json[r'html'] = this.html;
      json[r'date'] = this.date.toUtc().toIso8601String();
      json[r'labels'] = this.labels;
      json[r'isRead'] = this.isRead;
      json[r'isStarred'] = this.isStarred;
      json[r'attachments'] = this.attachments;
    if (this.snippet != null) {
      json[r'snippet'] = this.snippet;
    } else {
      json[r'snippet'] = null;
    }
    if (this.messageId != null) {
      json[r'messageId'] = this.messageId;
    } else {
      json[r'messageId'] = null;
    }
    if (this.inReplyTo != null) {
      json[r'inReplyTo'] = this.inReplyTo;
    } else {
      json[r'inReplyTo'] = null;
    }
      json[r'references'] = this.references;
    return json;
  }

  /// Returns a new [Email] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Email? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Email[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Email[id]" has a null value in JSON.');
        assert(json.containsKey(r'subject'), 'Required key "Email[subject]" is missing from JSON.');
        assert(json[r'subject'] != null, 'Required key "Email[subject]" has a null value in JSON.');
        assert(json.containsKey(r'from'), 'Required key "Email[from]" is missing from JSON.');
        assert(json[r'from'] != null, 'Required key "Email[from]" has a null value in JSON.');
        assert(json.containsKey(r'to'), 'Required key "Email[to]" is missing from JSON.');
        assert(json[r'to'] != null, 'Required key "Email[to]" has a null value in JSON.');
        assert(json.containsKey(r'body'), 'Required key "Email[body]" is missing from JSON.');
        assert(json[r'body'] != null, 'Required key "Email[body]" has a null value in JSON.');
        assert(json.containsKey(r'html'), 'Required key "Email[html]" is missing from JSON.');
        assert(json[r'html'] != null, 'Required key "Email[html]" has a null value in JSON.');
        assert(json.containsKey(r'date'), 'Required key "Email[date]" is missing from JSON.');
        assert(json[r'date'] != null, 'Required key "Email[date]" has a null value in JSON.');
        assert(json.containsKey(r'isRead'), 'Required key "Email[isRead]" is missing from JSON.');
        assert(json[r'isRead'] != null, 'Required key "Email[isRead]" has a null value in JSON.');
        assert(json.containsKey(r'isStarred'), 'Required key "Email[isStarred]" is missing from JSON.');
        assert(json[r'isStarred'] != null, 'Required key "Email[isStarred]" has a null value in JSON.');
        return true;
      }());

      return Email(
        id: mapValueOfType<String>(json, r'id')!,
        threadId: mapValueOfType<String>(json, r'threadId'),
        provider: mapValueOfType<String>(json, r'provider'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        subject: mapValueOfType<String>(json, r'subject')!,
        from: mapValueOfType<String>(json, r'from')!,
        to: json[r'to'] is Iterable
            ? (json[r'to'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        cc: json[r'cc'] is Iterable
            ? (json[r'cc'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        bcc: json[r'bcc'] is Iterable
            ? (json[r'bcc'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        body: mapValueOfType<String>(json, r'body')!,
        html: mapValueOfType<bool>(json, r'html')!,
        date: mapDateTime(json, r'date', r'')!,
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        isRead: mapValueOfType<bool>(json, r'isRead')!,
        isStarred: mapValueOfType<bool>(json, r'isStarred')!,
        attachments: AttachmentMeta.listFromJson(json[r'attachments']),
        snippet: mapValueOfType<String>(json, r'snippet'),
        messageId: mapValueOfType<String>(json, r'messageId'),
        inReplyTo: mapValueOfType<String>(json, r'inReplyTo'),
        references: json[r'references'] is Iterable
            ? (json[r'references'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Email> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Email>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Email.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Email> mapFromJson(dynamic json) {
    final map = <String, Email>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Email.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Email-objects as value to a dart map
  static Map<String, List<Email>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Email>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Email.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'subject',
    'from',
    'to',
    'body',
    'html',
    'date',
    'isRead',
    'isStarred',
  };
}

