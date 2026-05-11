//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class NoteListEnvelope {
  /// Returns a new [NoteListEnvelope] instance.
  NoteListEnvelope({
    this.items = const [],
    this.accounts = const [],
  });

  List<Note> items;

  List<AccountStatus> accounts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NoteListEnvelope &&
    _deepEquality.equals(other.items, items) &&
    _deepEquality.equals(other.accounts, accounts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items.hashCode) +
    (accounts.hashCode);

  @override
  String toString() => 'NoteListEnvelope[items=$items, accounts=$accounts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'items'] = this.items;
      json[r'accounts'] = this.accounts;
    return json;
  }

  /// Returns a new [NoteListEnvelope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NoteListEnvelope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'items'), 'Required key "NoteListEnvelope[items]" is missing from JSON.');
        assert(json[r'items'] != null, 'Required key "NoteListEnvelope[items]" has a null value in JSON.');
        assert(json.containsKey(r'accounts'), 'Required key "NoteListEnvelope[accounts]" is missing from JSON.');
        assert(json[r'accounts'] != null, 'Required key "NoteListEnvelope[accounts]" has a null value in JSON.');
        return true;
      }());

      return NoteListEnvelope(
        items: Note.listFromJson(json[r'items']),
        accounts: AccountStatus.listFromJson(json[r'accounts']),
      );
    }
    return null;
  }

  static List<NoteListEnvelope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NoteListEnvelope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NoteListEnvelope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NoteListEnvelope> mapFromJson(dynamic json) {
    final map = <String, NoteListEnvelope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NoteListEnvelope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NoteListEnvelope-objects as value to a dart map
  static Map<String, List<NoteListEnvelope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NoteListEnvelope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NoteListEnvelope.listFromJson(entry.value, growable: growable,);
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

