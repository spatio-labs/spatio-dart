//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateKeyBindingRequest {
  /// Returns a new [UpdateKeyBindingRequest] instance.
  UpdateKeyBindingRequest({
    required this.key,
    this.modifiers = const [],
  });

  String key;

  List<String> modifiers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateKeyBindingRequest &&
    other.key == key &&
    _deepEquality.equals(other.modifiers, modifiers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key.hashCode) +
    (modifiers.hashCode);

  @override
  String toString() => 'UpdateKeyBindingRequest[key=$key, modifiers=$modifiers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key'] = this.key;
      json[r'modifiers'] = this.modifiers;
    return json;
  }

  /// Returns a new [UpdateKeyBindingRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateKeyBindingRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'key'), 'Required key "UpdateKeyBindingRequest[key]" is missing from JSON.');
        assert(json[r'key'] != null, 'Required key "UpdateKeyBindingRequest[key]" has a null value in JSON.');
        return true;
      }());

      return UpdateKeyBindingRequest(
        key: mapValueOfType<String>(json, r'key')!,
        modifiers: json[r'modifiers'] is Iterable
            ? (json[r'modifiers'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<UpdateKeyBindingRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateKeyBindingRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateKeyBindingRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateKeyBindingRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateKeyBindingRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateKeyBindingRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateKeyBindingRequest-objects as value to a dart map
  static Map<String, List<UpdateKeyBindingRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateKeyBindingRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateKeyBindingRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
  };
}

