//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SearchFilesResponse {
  /// Returns a new [SearchFilesResponse] instance.
  SearchFilesResponse({
    this.files = const [],
    required this.total,
    required this.hasMore,
    required this.query,
  });

  List<SpatioFile>? files;

  int total;

  bool hasMore;

  String query;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SearchFilesResponse &&
    _deepEquality.equals(other.files, files) &&
    other.total == total &&
    other.hasMore == hasMore &&
    other.query == query;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (files == null ? 0 : files!.hashCode) +
    (total.hashCode) +
    (hasMore.hashCode) +
    (query.hashCode);

  @override
  String toString() => 'SearchFilesResponse[files=$files, total=$total, hasMore=$hasMore, query=$query]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.files != null) {
      json[r'files'] = this.files;
    } else {
      json[r'files'] = null;
    }
      json[r'total'] = this.total;
      json[r'hasMore'] = this.hasMore;
      json[r'query'] = this.query;
    return json;
  }

  /// Returns a new [SearchFilesResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SearchFilesResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'total'), 'Required key "SearchFilesResponse[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "SearchFilesResponse[total]" has a null value in JSON.');
        assert(json.containsKey(r'hasMore'), 'Required key "SearchFilesResponse[hasMore]" is missing from JSON.');
        assert(json[r'hasMore'] != null, 'Required key "SearchFilesResponse[hasMore]" has a null value in JSON.');
        assert(json.containsKey(r'query'), 'Required key "SearchFilesResponse[query]" is missing from JSON.');
        assert(json[r'query'] != null, 'Required key "SearchFilesResponse[query]" has a null value in JSON.');
        return true;
      }());

      return SearchFilesResponse(
        files: SpatioFile.listFromJson(json[r'files']),
        total: mapValueOfType<int>(json, r'total')!,
        hasMore: mapValueOfType<bool>(json, r'hasMore')!,
        query: mapValueOfType<String>(json, r'query')!,
      );
    }
    return null;
  }

  static List<SearchFilesResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SearchFilesResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SearchFilesResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SearchFilesResponse> mapFromJson(dynamic json) {
    final map = <String, SearchFilesResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SearchFilesResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SearchFilesResponse-objects as value to a dart map
  static Map<String, List<SearchFilesResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SearchFilesResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SearchFilesResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total',
    'hasMore',
    'query',
  };
}

