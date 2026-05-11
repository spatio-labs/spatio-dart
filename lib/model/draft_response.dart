//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class DraftResponse {
  /// Returns a new [DraftResponse] instance.
  DraftResponse({
    required this.draft,
    required this.provider,
  });

  Draft draft;

  String provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DraftResponse &&
    other.draft == draft &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (draft.hashCode) +
    (provider.hashCode);

  @override
  String toString() => 'DraftResponse[draft=$draft, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'draft'] = this.draft;
      json[r'provider'] = this.provider;
    return json;
  }

  /// Returns a new [DraftResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DraftResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'draft'), 'Required key "DraftResponse[draft]" is missing from JSON.');
        assert(json[r'draft'] != null, 'Required key "DraftResponse[draft]" has a null value in JSON.');
        assert(json.containsKey(r'provider'), 'Required key "DraftResponse[provider]" is missing from JSON.');
        assert(json[r'provider'] != null, 'Required key "DraftResponse[provider]" has a null value in JSON.');
        return true;
      }());

      return DraftResponse(
        draft: Draft.fromJson(json[r'draft'])!,
        provider: mapValueOfType<String>(json, r'provider')!,
      );
    }
    return null;
  }

  static List<DraftResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DraftResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DraftResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DraftResponse> mapFromJson(dynamic json) {
    final map = <String, DraftResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DraftResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DraftResponse-objects as value to a dart map
  static Map<String, List<DraftResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DraftResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DraftResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'draft',
    'provider',
  };
}

