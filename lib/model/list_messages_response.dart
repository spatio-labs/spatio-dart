//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ListMessagesResponse {
  /// Returns a new [ListMessagesResponse] instance.
  ListMessagesResponse({
    this.messages = const [],
    required this.hasMore,
    this.nextCursor,
    required this.provider,
  });

  List<ChatMessage>? messages;

  bool hasMore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextCursor;

  String provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListMessagesResponse &&
    _deepEquality.equals(other.messages, messages) &&
    other.hasMore == hasMore &&
    other.nextCursor == nextCursor &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (messages == null ? 0 : messages!.hashCode) +
    (hasMore.hashCode) +
    (nextCursor == null ? 0 : nextCursor!.hashCode) +
    (provider.hashCode);

  @override
  String toString() => 'ListMessagesResponse[messages=$messages, hasMore=$hasMore, nextCursor=$nextCursor, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.messages != null) {
      json[r'messages'] = this.messages;
    } else {
      json[r'messages'] = null;
    }
      json[r'hasMore'] = this.hasMore;
    if (this.nextCursor != null) {
      json[r'nextCursor'] = this.nextCursor;
    } else {
      json[r'nextCursor'] = null;
    }
      json[r'provider'] = this.provider;
    return json;
  }

  /// Returns a new [ListMessagesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListMessagesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'hasMore'), 'Required key "ListMessagesResponse[hasMore]" is missing from JSON.');
        assert(json[r'hasMore'] != null, 'Required key "ListMessagesResponse[hasMore]" has a null value in JSON.');
        assert(json.containsKey(r'provider'), 'Required key "ListMessagesResponse[provider]" is missing from JSON.');
        assert(json[r'provider'] != null, 'Required key "ListMessagesResponse[provider]" has a null value in JSON.');
        return true;
      }());

      return ListMessagesResponse(
        messages: ChatMessage.listFromJson(json[r'messages']),
        hasMore: mapValueOfType<bool>(json, r'hasMore')!,
        nextCursor: mapValueOfType<String>(json, r'nextCursor'),
        provider: mapValueOfType<String>(json, r'provider')!,
      );
    }
    return null;
  }

  static List<ListMessagesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListMessagesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListMessagesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListMessagesResponse> mapFromJson(dynamic json) {
    final map = <String, ListMessagesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListMessagesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListMessagesResponse-objects as value to a dart map
  static Map<String, List<ListMessagesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListMessagesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListMessagesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hasMore',
    'provider',
  };
}

