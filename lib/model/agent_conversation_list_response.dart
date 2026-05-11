//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AgentConversationListResponse {
  /// Returns a new [AgentConversationListResponse] instance.
  AgentConversationListResponse({
    this.conversations = const [],
    this.total,
  });

  List<AgentConversation> conversations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentConversationListResponse &&
    _deepEquality.equals(other.conversations, conversations) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (conversations.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'AgentConversationListResponse[conversations=$conversations, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'conversations'] = this.conversations;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [AgentConversationListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentConversationListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'conversations'), 'Required key "AgentConversationListResponse[conversations]" is missing from JSON.');
        assert(json[r'conversations'] != null, 'Required key "AgentConversationListResponse[conversations]" has a null value in JSON.');
        return true;
      }());

      return AgentConversationListResponse(
        conversations: AgentConversation.listFromJson(json[r'conversations']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<AgentConversationListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentConversationListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentConversationListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentConversationListResponse> mapFromJson(dynamic json) {
    final map = <String, AgentConversationListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentConversationListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentConversationListResponse-objects as value to a dart map
  static Map<String, List<AgentConversationListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentConversationListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentConversationListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'conversations',
  };
}

