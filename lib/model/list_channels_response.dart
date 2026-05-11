//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ListChannelsResponse {
  /// Returns a new [ListChannelsResponse] instance.
  ListChannelsResponse({
    this.channels = const [],
    required this.total,
    this.nextCursor,
    required this.provider,
  });

  /// `null` when no results (Go nil-slice serialization).
  List<Channel>? channels;

  int total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextCursor;

  String provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListChannelsResponse &&
    _deepEquality.equals(other.channels, channels) &&
    other.total == total &&
    other.nextCursor == nextCursor &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channels == null ? 0 : channels!.hashCode) +
    (total.hashCode) +
    (nextCursor == null ? 0 : nextCursor!.hashCode) +
    (provider.hashCode);

  @override
  String toString() => 'ListChannelsResponse[channels=$channels, total=$total, nextCursor=$nextCursor, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channels != null) {
      json[r'channels'] = this.channels;
    } else {
      json[r'channels'] = null;
    }
      json[r'total'] = this.total;
    if (this.nextCursor != null) {
      json[r'nextCursor'] = this.nextCursor;
    } else {
      json[r'nextCursor'] = null;
    }
      json[r'provider'] = this.provider;
    return json;
  }

  /// Returns a new [ListChannelsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListChannelsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'total'), 'Required key "ListChannelsResponse[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "ListChannelsResponse[total]" has a null value in JSON.');
        assert(json.containsKey(r'provider'), 'Required key "ListChannelsResponse[provider]" is missing from JSON.');
        assert(json[r'provider'] != null, 'Required key "ListChannelsResponse[provider]" has a null value in JSON.');
        return true;
      }());

      return ListChannelsResponse(
        channels: Channel.listFromJson(json[r'channels']),
        total: mapValueOfType<int>(json, r'total')!,
        nextCursor: mapValueOfType<String>(json, r'nextCursor'),
        provider: mapValueOfType<String>(json, r'provider')!,
      );
    }
    return null;
  }

  static List<ListChannelsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListChannelsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListChannelsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListChannelsResponse> mapFromJson(dynamic json) {
    final map = <String, ListChannelsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListChannelsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListChannelsResponse-objects as value to a dart map
  static Map<String, List<ListChannelsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListChannelsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListChannelsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total',
    'provider',
  };
}

