//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ListLabelsResponse {
  /// Returns a new [ListLabelsResponse] instance.
  ListLabelsResponse({
    this.labels = const [],
    required this.provider,
  });

  List<Label> labels;

  String provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListLabelsResponse &&
    _deepEquality.equals(other.labels, labels) &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (labels.hashCode) +
    (provider.hashCode);

  @override
  String toString() => 'ListLabelsResponse[labels=$labels, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'labels'] = this.labels;
      json[r'provider'] = this.provider;
    return json;
  }

  /// Returns a new [ListLabelsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListLabelsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'labels'), 'Required key "ListLabelsResponse[labels]" is missing from JSON.');
        assert(json[r'labels'] != null, 'Required key "ListLabelsResponse[labels]" has a null value in JSON.');
        assert(json.containsKey(r'provider'), 'Required key "ListLabelsResponse[provider]" is missing from JSON.');
        assert(json[r'provider'] != null, 'Required key "ListLabelsResponse[provider]" has a null value in JSON.');
        return true;
      }());

      return ListLabelsResponse(
        labels: Label.listFromJson(json[r'labels']),
        provider: mapValueOfType<String>(json, r'provider')!,
      );
    }
    return null;
  }

  static List<ListLabelsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListLabelsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListLabelsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListLabelsResponse> mapFromJson(dynamic json) {
    final map = <String, ListLabelsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListLabelsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListLabelsResponse-objects as value to a dart map
  static Map<String, List<ListLabelsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListLabelsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListLabelsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'labels',
    'provider',
  };
}

