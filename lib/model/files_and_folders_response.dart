//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class FilesAndFoldersResponse {
  /// Returns a new [FilesAndFoldersResponse] instance.
  FilesAndFoldersResponse({
    this.files = const [],
    this.folders = const [],
    this.accounts = const [],
    required this.total,
    required this.hasMore,
    this.nextOffset,
  });

  List<SpatioFile>? files;

  List<Folder>? folders;

  List<AccountStatus> accounts;

  int total;

  bool hasMore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nextOffset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilesAndFoldersResponse &&
    _deepEquality.equals(other.files, files) &&
    _deepEquality.equals(other.folders, folders) &&
    _deepEquality.equals(other.accounts, accounts) &&
    other.total == total &&
    other.hasMore == hasMore &&
    other.nextOffset == nextOffset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (files == null ? 0 : files!.hashCode) +
    (folders == null ? 0 : folders!.hashCode) +
    (accounts.hashCode) +
    (total.hashCode) +
    (hasMore.hashCode) +
    (nextOffset == null ? 0 : nextOffset!.hashCode);

  @override
  String toString() => 'FilesAndFoldersResponse[files=$files, folders=$folders, accounts=$accounts, total=$total, hasMore=$hasMore, nextOffset=$nextOffset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.files != null) {
      json[r'files'] = this.files;
    } else {
      json[r'files'] = null;
    }
    if (this.folders != null) {
      json[r'folders'] = this.folders;
    } else {
      json[r'folders'] = null;
    }
      json[r'accounts'] = this.accounts;
      json[r'total'] = this.total;
      json[r'hasMore'] = this.hasMore;
    if (this.nextOffset != null) {
      json[r'nextOffset'] = this.nextOffset;
    } else {
      json[r'nextOffset'] = null;
    }
    return json;
  }

  /// Returns a new [FilesAndFoldersResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilesAndFoldersResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'total'), 'Required key "FilesAndFoldersResponse[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "FilesAndFoldersResponse[total]" has a null value in JSON.');
        assert(json.containsKey(r'hasMore'), 'Required key "FilesAndFoldersResponse[hasMore]" is missing from JSON.');
        assert(json[r'hasMore'] != null, 'Required key "FilesAndFoldersResponse[hasMore]" has a null value in JSON.');
        return true;
      }());

      return FilesAndFoldersResponse(
        files: SpatioFile.listFromJson(json[r'files']),
        folders: Folder.listFromJson(json[r'folders']),
        accounts: AccountStatus.listFromJson(json[r'accounts']),
        total: mapValueOfType<int>(json, r'total')!,
        hasMore: mapValueOfType<bool>(json, r'hasMore')!,
        nextOffset: mapValueOfType<int>(json, r'nextOffset'),
      );
    }
    return null;
  }

  static List<FilesAndFoldersResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilesAndFoldersResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilesAndFoldersResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilesAndFoldersResponse> mapFromJson(dynamic json) {
    final map = <String, FilesAndFoldersResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilesAndFoldersResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilesAndFoldersResponse-objects as value to a dart map
  static Map<String, List<FilesAndFoldersResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilesAndFoldersResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilesAndFoldersResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total',
    'hasMore',
  };
}

