//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CommentAuthor {
  /// Returns a new [CommentAuthor] instance.
  CommentAuthor({
    required this.id,
    required this.name,
    required this.email,
    this.profilePhoto,
  });

  String id;

  String name;

  String email;

  String? profilePhoto;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommentAuthor &&
    other.id == id &&
    other.name == name &&
    other.email == email &&
    other.profilePhoto == profilePhoto;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (email.hashCode) +
    (profilePhoto == null ? 0 : profilePhoto!.hashCode);

  @override
  String toString() => 'CommentAuthor[id=$id, name=$name, email=$email, profilePhoto=$profilePhoto]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'email'] = this.email;
    if (this.profilePhoto != null) {
      json[r'profilePhoto'] = this.profilePhoto;
    } else {
      json[r'profilePhoto'] = null;
    }
    return json;
  }

  /// Returns a new [CommentAuthor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommentAuthor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "CommentAuthor[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "CommentAuthor[id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "CommentAuthor[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "CommentAuthor[name]" has a null value in JSON.');
        assert(json.containsKey(r'email'), 'Required key "CommentAuthor[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "CommentAuthor[email]" has a null value in JSON.');
        return true;
      }());

      return CommentAuthor(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        email: mapValueOfType<String>(json, r'email')!,
        profilePhoto: mapValueOfType<String>(json, r'profilePhoto'),
      );
    }
    return null;
  }

  static List<CommentAuthor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CommentAuthor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CommentAuthor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CommentAuthor> mapFromJson(dynamic json) {
    final map = <String, CommentAuthor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CommentAuthor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CommentAuthor-objects as value to a dart map
  static Map<String, List<CommentAuthor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CommentAuthor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CommentAuthor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'email',
  };
}

