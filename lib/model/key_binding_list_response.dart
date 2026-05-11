//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class KeyBindingListResponse {
  /// Returns a new [KeyBindingListResponse] instance.
  KeyBindingListResponse({
    this.bindings = const [],
  });

  List<KeyBinding> bindings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KeyBindingListResponse &&
    _deepEquality.equals(other.bindings, bindings);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bindings.hashCode);

  @override
  String toString() => 'KeyBindingListResponse[bindings=$bindings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bindings'] = this.bindings;
    return json;
  }

  /// Returns a new [KeyBindingListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KeyBindingListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'bindings'), 'Required key "KeyBindingListResponse[bindings]" is missing from JSON.');
        assert(json[r'bindings'] != null, 'Required key "KeyBindingListResponse[bindings]" has a null value in JSON.');
        return true;
      }());

      return KeyBindingListResponse(
        bindings: KeyBinding.listFromJson(json[r'bindings']),
      );
    }
    return null;
  }

  static List<KeyBindingListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KeyBindingListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KeyBindingListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KeyBindingListResponse> mapFromJson(dynamic json) {
    final map = <String, KeyBindingListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KeyBindingListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KeyBindingListResponse-objects as value to a dart map
  static Map<String, List<KeyBindingListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KeyBindingListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KeyBindingListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bindings',
  };
}

