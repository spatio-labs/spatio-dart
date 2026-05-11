//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SheetListEnvelope {
  /// Returns a new [SheetListEnvelope] instance.
  SheetListEnvelope({
    this.items = const [],
    this.accounts = const [],
  });

  List<Sheet> items;

  List<AccountStatus> accounts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SheetListEnvelope &&
    _deepEquality.equals(other.items, items) &&
    _deepEquality.equals(other.accounts, accounts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode) +
    (accounts.hashCode);

  @override
  String toString() => 'SheetListEnvelope[items=$items, accounts=$accounts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
      json[r'accounts'] = this.accounts;
    return json;
  }

  /// Returns a new [SheetListEnvelope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SheetListEnvelope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'items'), 'Required key "SheetListEnvelope[items]" is missing from JSON.');
        assert(json[r'items'] != null, 'Required key "SheetListEnvelope[items]" has a null value in JSON.');
        assert(json.containsKey(r'accounts'), 'Required key "SheetListEnvelope[accounts]" is missing from JSON.');
        assert(json[r'accounts'] != null, 'Required key "SheetListEnvelope[accounts]" has a null value in JSON.');
        return true;
      }());

      return SheetListEnvelope(
        items: Sheet.listFromJson(json[r'items']),
        accounts: AccountStatus.listFromJson(json[r'accounts']),
      );
    }
    return null;
  }

  static List<SheetListEnvelope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SheetListEnvelope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SheetListEnvelope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SheetListEnvelope> mapFromJson(dynamic json) {
    final map = <String, SheetListEnvelope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SheetListEnvelope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SheetListEnvelope-objects as value to a dart map
  static Map<String, List<SheetListEnvelope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SheetListEnvelope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SheetListEnvelope.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'items',
    'accounts',
  };
}

