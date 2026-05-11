//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ReplyEmailRequest {
  /// Returns a new [ReplyEmailRequest] instance.
  ReplyEmailRequest({
    this.accountId,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    required this.body,
    this.html,
    this.attachments = const [],
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

  String body;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? html;

  List<AttachmentInput> attachments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReplyEmailRequest &&
    other.accountId == accountId &&
    _deepEquality.equals(other.to, to) &&
    _deepEquality.equals(other.cc, cc) &&
    _deepEquality.equals(other.bcc, bcc) &&
    other.body == body &&
    other.html == html &&
    _deepEquality.equals(other.attachments, attachments);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (to.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (body.hashCode) +
    (html == null ? 0 : html!.hashCode) +
    (attachments.hashCode);

  @override
  String toString() => 'ReplyEmailRequest[accountId=$accountId, to=$to, cc=$cc, bcc=$bcc, body=$body, html=$html, attachments=$attachments]';

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
      json[r'body'] = this.body;
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
      json[r'attachments'] = this.attachments;
    return json;
  }

  /// Returns a new [ReplyEmailRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReplyEmailRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'body'), 'Required key "ReplyEmailRequest[body]" is missing from JSON.');
        assert(json[r'body'] != null, 'Required key "ReplyEmailRequest[body]" has a null value in JSON.');
        return true;
      }());

      return ReplyEmailRequest(
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
        body: mapValueOfType<String>(json, r'body')!,
        html: mapValueOfType<bool>(json, r'html'),
        attachments: AttachmentInput.listFromJson(json[r'attachments']),
      );
    }
    return null;
  }

  static List<ReplyEmailRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReplyEmailRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReplyEmailRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReplyEmailRequest> mapFromJson(dynamic json) {
    final map = <String, ReplyEmailRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReplyEmailRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReplyEmailRequest-objects as value to a dart map
  static Map<String, List<ReplyEmailRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReplyEmailRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReplyEmailRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'body',
  };
}

