//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreatePATResponse {
  /// Returns a new [CreatePATResponse] instance.
  CreatePATResponse({
    required this.token,
    this.pat,
  });

  String token;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PersonalAccessToken? pat;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePATResponse &&
    other.token == token &&
    other.pat == pat;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token.hashCode) +
    (pat == null ? 0 : pat!.hashCode);

  @override
  String toString() => 'CreatePATResponse[token=$token, pat=$pat]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = this.token;
    if (this.pat != null) {
      json[r'pat'] = this.pat;
    } else {
      json[r'pat'] = null;
    }
    return json;
  }

  /// Returns a new [CreatePATResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePATResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'token'), 'Required key "CreatePATResponse[token]" is missing from JSON.');
        assert(json[r'token'] != null, 'Required key "CreatePATResponse[token]" has a null value in JSON.');
        return true;
      }());

      return CreatePATResponse(
        token: mapValueOfType<String>(json, r'token')!,
        pat: PersonalAccessToken.fromJson(json[r'pat']),
      );
    }
    return null;
  }

  static List<CreatePATResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePATResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePATResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePATResponse> mapFromJson(dynamic json) {
    final map = <String, CreatePATResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePATResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePATResponse-objects as value to a dart map
  static Map<String, List<CreatePATResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePATResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePATResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
  };
}

