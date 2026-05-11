//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ListEmailsResponse {
  /// Returns a new [ListEmailsResponse] instance.
  ListEmailsResponse({
    this.emails = const [],
    required this.total,
    this.nextPageToken,
    required this.provider,
  });

  /// `null` when there are no results (Go nil-slice serialization). Treat as equivalent to an empty array. 
  List<Email>? emails;

  int total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextPageToken;

  String provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListEmailsResponse &&
    _deepEquality.equals(other.emails, emails) &&
    other.total == total &&
    other.nextPageToken == nextPageToken &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emails == null ? 0 : emails!.hashCode) +
    (total.hashCode) +
    (nextPageToken == null ? 0 : nextPageToken!.hashCode) +
    (provider.hashCode);

  @override
  String toString() => 'ListEmailsResponse[emails=$emails, total=$total, nextPageToken=$nextPageToken, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.emails != null) {
      json[r'emails'] = this.emails;
    } else {
      json[r'emails'] = null;
    }
      json[r'total'] = this.total;
    if (this.nextPageToken != null) {
      json[r'nextPageToken'] = this.nextPageToken;
    } else {
      json[r'nextPageToken'] = null;
    }
      json[r'provider'] = this.provider;
    return json;
  }

  /// Returns a new [ListEmailsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListEmailsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'total'), 'Required key "ListEmailsResponse[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "ListEmailsResponse[total]" has a null value in JSON.');
        assert(json.containsKey(r'provider'), 'Required key "ListEmailsResponse[provider]" is missing from JSON.');
        assert(json[r'provider'] != null, 'Required key "ListEmailsResponse[provider]" has a null value in JSON.');
        return true;
      }());

      return ListEmailsResponse(
        emails: Email.listFromJson(json[r'emails']),
        total: mapValueOfType<int>(json, r'total')!,
        nextPageToken: mapValueOfType<String>(json, r'nextPageToken'),
        provider: mapValueOfType<String>(json, r'provider')!,
      );
    }
    return null;
  }

  static List<ListEmailsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListEmailsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListEmailsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListEmailsResponse> mapFromJson(dynamic json) {
    final map = <String, ListEmailsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListEmailsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListEmailsResponse-objects as value to a dart map
  static Map<String, List<ListEmailsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListEmailsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListEmailsResponse.listFromJson(entry.value, growable: growable,);
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

