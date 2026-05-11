//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateDraftRequest {
  /// Returns a new [UpdateDraftRequest] instance.
  UpdateDraftRequest({
    this.accountId,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    this.subject,
    this.body,
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

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDraftRequest &&
    other.accountId == accountId &&
    _deepEquality.equals(other.to, to) &&
    _deepEquality.equals(other.cc, cc) &&
    _deepEquality.equals(other.bcc, bcc) &&
    other.subject == subject &&
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
    (subject == null ? 0 : subject!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (html == null ? 0 : html!.hashCode) +
    (attachments.hashCode);

  @override
  String toString() => 'UpdateDraftRequest[accountId=$accountId, to=$to, cc=$cc, bcc=$bcc, subject=$subject, body=$body, html=$html, attachments=$attachments]';

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
    return json;
  }

  /// Returns a new [UpdateDraftRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateDraftRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UpdateDraftRequest(
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
      );
    }
    return null;
  }

  static List<UpdateDraftRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateDraftRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateDraftRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateDraftRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateDraftRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDraftRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateDraftRequest-objects as value to a dart map
  static Map<String, List<UpdateDraftRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateDraftRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateDraftRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

