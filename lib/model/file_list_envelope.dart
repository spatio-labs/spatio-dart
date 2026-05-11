//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class FileListEnvelope {
  /// Returns a new [FileListEnvelope] instance.
  FileListEnvelope({
    this.items = const [],
    this.accounts = const [],
  });

  List<SpatioFile>? items;

  List<AccountStatus> accounts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileListEnvelope &&
    _deepEquality.equals(other.items, items) &&
    _deepEquality.equals(other.accounts, accounts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (items == null ? 0 : items!.hashCode) +
    (accounts.hashCode);

  @override
  String toString() => 'FileListEnvelope[items=$items, accounts=$accounts]';

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

  /// Returns a new [FileListEnvelope] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileListEnvelope? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'items'), 'Required key "FileListEnvelope[items]" is missing from JSON.');
        assert(json.containsKey(r'accounts'), 'Required key "FileListEnvelope[accounts]" is missing from JSON.');
        assert(json[r'accounts'] != null, 'Required key "FileListEnvelope[accounts]" has a null value in JSON.');
        return true;
      }());

      return FileListEnvelope(
        items: SpatioFile.listFromJson(json[r'items']),
        accounts: AccountStatus.listFromJson(json[r'accounts']),
      );
    }
    return null;
  }

  static List<FileListEnvelope> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileListEnvelope>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileListEnvelope.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileListEnvelope> mapFromJson(dynamic json) {
    final map = <String, FileListEnvelope>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileListEnvelope.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileListEnvelope-objects as value to a dart map
  static Map<String, List<FileListEnvelope>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileListEnvelope>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileListEnvelope.listFromJson(entry.value, growable: growable,);
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

