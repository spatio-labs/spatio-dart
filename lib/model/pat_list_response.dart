//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class PATListResponse {
  /// Returns a new [PATListResponse] instance.
  PATListResponse({
    this.tokens = const [],
    this.availableScopes = const [],
  });

  List<PersonalAccessToken> tokens;

  List<String> availableScopes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PATListResponse &&
    _deepEquality.equals(other.tokens, tokens) &&
    _deepEquality.equals(other.availableScopes, availableScopes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tokens.hashCode) +
    (availableScopes.hashCode);

  @override
  String toString() => 'PATListResponse[tokens=$tokens, availableScopes=$availableScopes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tokens'] = this.tokens;
      json[r'availableScopes'] = this.availableScopes;
    return json;
  }

  /// Returns a new [PATListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PATListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'tokens'), 'Required key "PATListResponse[tokens]" is missing from JSON.');
        assert(json[r'tokens'] != null, 'Required key "PATListResponse[tokens]" has a null value in JSON.');
        return true;
      }());

      return PATListResponse(
        tokens: PersonalAccessToken.listFromJson(json[r'tokens']),
        availableScopes: json[r'availableScopes'] is Iterable
            ? (json[r'availableScopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PATListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PATListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PATListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PATListResponse> mapFromJson(dynamic json) {
    final map = <String, PATListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PATListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PATListResponse-objects as value to a dart map
  static Map<String, List<PATListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PATListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PATListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tokens',
  };
}

