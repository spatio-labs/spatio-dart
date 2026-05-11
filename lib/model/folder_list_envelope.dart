//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class FolderListEnvelope {
  /// Returns a new [FolderListEnvelope] instance.
  FolderListEnvelope({
    this.items = const [],
    this.accounts = const [],
  });

  List<Folder>? items;

  List<AccountStatus> accounts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FolderListEnvelope &&
    _deepEquality.equals(other.items, items) &&
    _deepEquality.equals(other.accounts, accounts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items == null ? 0 : items!.hashCode) +
    (accounts.hashCode);

  @override
  String toString() => 'FolderListEnvelope[items=$items, accounts=$accounts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.items != null) {
      json[r'items'] = this.items;
    } else {
      json[r'items'] = null;
    }
      json[r'accounts'] = this.accounts;
    return json;
  }

  /// Returns a new [FolderListEnvelope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FolderListEnvelope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'items'), 'Required key "FolderListEnvelope[items]" is missing from JSON.');
        assert(json.containsKey(r'accounts'), 'Required key "FolderListEnvelope[accounts]" is missing from JSON.');
        assert(json[r'accounts'] != null, 'Required key "FolderListEnvelope[accounts]" has a null value in JSON.');
        return true;
      }());

      return FolderListEnvelope(
        items: Folder.listFromJson(json[r'items']),
        accounts: AccountStatus.listFromJson(json[r'accounts']),
      );
    }
    return null;
  }

  static List<FolderListEnvelope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FolderListEnvelope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FolderListEnvelope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FolderListEnvelope> mapFromJson(dynamic json) {
    final map = <String, FolderListEnvelope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FolderListEnvelope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FolderListEnvelope-objects as value to a dart map
  static Map<String, List<FolderListEnvelope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FolderListEnvelope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FolderListEnvelope.listFromJson(entry.value, growable: growable,);
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

