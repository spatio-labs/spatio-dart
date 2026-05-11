//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class FederatedSearch200Response {
  /// Returns a new [FederatedSearch200Response] instance.
  FederatedSearch200Response({
    this.items = const [],
    this.nextPageTokens = const {},
    this.perPlatform = const {},
    this.errors = const {},
    required this.totalReturned,
    required this.took,
  });

  List<FederatedSearch200ResponseItemsInner> items;

  Map<String, String> nextPageTokens;

  Map<String, FederatedSearch200ResponsePerPlatformValue> perPlatform;

  /// Per-platform errors. Other platforms still return results.
  Map<String, String> errors;

  int totalReturned;

  /// Aggregate wall-clock time for the fan-out, e.g. \"120ms\".
  String took;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FederatedSearch200Response &&
    _deepEquality.equals(other.items, items) &&
    _deepEquality.equals(other.nextPageTokens, nextPageTokens) &&
    _deepEquality.equals(other.perPlatform, perPlatform) &&
    _deepEquality.equals(other.errors, errors) &&
    other.totalReturned == totalReturned &&
    other.took == took;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode) +
    (nextPageTokens.hashCode) +
    (perPlatform.hashCode) +
    (errors.hashCode) +
    (totalReturned.hashCode) +
    (took.hashCode);

  @override
  String toString() => 'FederatedSearch200Response[items=$items, nextPageTokens=$nextPageTokens, perPlatform=$perPlatform, errors=$errors, totalReturned=$totalReturned, took=$took]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
      json[r'next_page_tokens'] = this.nextPageTokens;
      json[r'per_platform'] = this.perPlatform;
      json[r'errors'] = this.errors;
      json[r'total_returned'] = this.totalReturned;
      json[r'took'] = this.took;
    return json;
  }

  /// Returns a new [FederatedSearch200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FederatedSearch200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'items'), 'Required key "FederatedSearch200Response[items]" is missing from JSON.');
        assert(json[r'items'] != null, 'Required key "FederatedSearch200Response[items]" has a null value in JSON.');
        assert(json.containsKey(r'per_platform'), 'Required key "FederatedSearch200Response[per_platform]" is missing from JSON.');
        assert(json[r'per_platform'] != null, 'Required key "FederatedSearch200Response[per_platform]" has a null value in JSON.');
        assert(json.containsKey(r'total_returned'), 'Required key "FederatedSearch200Response[total_returned]" is missing from JSON.');
        assert(json[r'total_returned'] != null, 'Required key "FederatedSearch200Response[total_returned]" has a null value in JSON.');
        assert(json.containsKey(r'took'), 'Required key "FederatedSearch200Response[took]" is missing from JSON.');
        assert(json[r'took'] != null, 'Required key "FederatedSearch200Response[took]" has a null value in JSON.');
        return true;
      }());

      return FederatedSearch200Response(
        items: FederatedSearch200ResponseItemsInner.listFromJson(json[r'items']),
        nextPageTokens: mapCastOfType<String, String>(json, r'next_page_tokens') ?? const {},
        perPlatform: FederatedSearch200ResponsePerPlatformValue.mapFromJson(json[r'per_platform']),
        errors: mapCastOfType<String, String>(json, r'errors') ?? const {},
        totalReturned: mapValueOfType<int>(json, r'total_returned')!,
        took: mapValueOfType<String>(json, r'took')!,
      );
    }
    return null;
  }

  static List<FederatedSearch200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FederatedSearch200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FederatedSearch200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FederatedSearch200Response> mapFromJson(dynamic json) {
    final map = <String, FederatedSearch200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FederatedSearch200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FederatedSearch200Response-objects as value to a dart map
  static Map<String, List<FederatedSearch200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FederatedSearch200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FederatedSearch200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'items',
    'per_platform',
    'total_returned',
    'took',
  };
}

