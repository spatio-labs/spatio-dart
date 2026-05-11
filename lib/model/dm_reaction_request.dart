//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class DMReactionRequest {
  /// Returns a new [DMReactionRequest] instance.
  DMReactionRequest({
    required this.emoji,
    this.accountId,
  });

  String emoji;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DMReactionRequest &&
    other.emoji == emoji &&
    other.accountId == accountId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emoji.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode);

  @override
  String toString() => 'DMReactionRequest[emoji=$emoji, accountId=$accountId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emoji'] = this.emoji;
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    return json;
  }

  /// Returns a new [DMReactionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DMReactionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'emoji'), 'Required key "DMReactionRequest[emoji]" is missing from JSON.');
        assert(json[r'emoji'] != null, 'Required key "DMReactionRequest[emoji]" has a null value in JSON.');
        return true;
      }());

      return DMReactionRequest(
        emoji: mapValueOfType<String>(json, r'emoji')!,
        accountId: mapValueOfType<String>(json, r'accountId'),
      );
    }
    return null;
  }

  static List<DMReactionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DMReactionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DMReactionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DMReactionRequest> mapFromJson(dynamic json) {
    final map = <String, DMReactionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DMReactionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DMReactionRequest-objects as value to a dart map
  static Map<String, List<DMReactionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DMReactionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DMReactionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emoji',
  };
}

