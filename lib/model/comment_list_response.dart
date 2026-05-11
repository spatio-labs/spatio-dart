//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CommentListResponse {
  /// Returns a new [CommentListResponse] instance.
  CommentListResponse({
    this.comments = const [],
    required this.total,
  });

  List<Comment> comments;

  int total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommentListResponse &&
    _deepEquality.equals(other.comments, comments) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (comments.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'CommentListResponse[comments=$comments, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'comments'] = this.comments;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [CommentListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommentListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'comments'), 'Required key "CommentListResponse[comments]" is missing from JSON.');
        assert(json[r'comments'] != null, 'Required key "CommentListResponse[comments]" has a null value in JSON.');
        assert(json.containsKey(r'total'), 'Required key "CommentListResponse[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "CommentListResponse[total]" has a null value in JSON.');
        return true;
      }());

      return CommentListResponse(
        comments: Comment.listFromJson(json[r'comments']),
        total: mapValueOfType<int>(json, r'total')!,
      );
    }
    return null;
  }

  static List<CommentListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CommentListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CommentListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CommentListResponse> mapFromJson(dynamic json) {
    final map = <String, CommentListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CommentListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CommentListResponse-objects as value to a dart map
  static Map<String, List<CommentListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CommentListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CommentListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'comments',
    'total',
  };
}

