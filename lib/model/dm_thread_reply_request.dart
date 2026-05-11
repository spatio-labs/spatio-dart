//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class DMThreadReplyRequest {
  /// Returns a new [DMThreadReplyRequest] instance.
  DMThreadReplyRequest({
    required this.content,
    this.accountId,
  });

  String content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DMThreadReplyRequest &&
    other.content == content &&
    other.accountId == accountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode);

  @override
  String toString() => 'DMThreadReplyRequest[content=$content, accountId=$accountId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    return json;
  }

  /// Returns a new [DMThreadReplyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DMThreadReplyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'content'), 'Required key "DMThreadReplyRequest[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "DMThreadReplyRequest[content]" has a null value in JSON.');
        return true;
      }());

      return DMThreadReplyRequest(
        content: mapValueOfType<String>(json, r'content')!,
        accountId: mapValueOfType<String>(json, r'accountId'),
      );
    }
    return null;
  }

  static List<DMThreadReplyRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DMThreadReplyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DMThreadReplyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DMThreadReplyRequest> mapFromJson(dynamic json) {
    final map = <String, DMThreadReplyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DMThreadReplyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DMThreadReplyRequest-objects as value to a dart map
  static Map<String, List<DMThreadReplyRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DMThreadReplyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DMThreadReplyRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'content',
  };
}

