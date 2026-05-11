//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class EmailFolderListResponse {
  /// Returns a new [EmailFolderListResponse] instance.
  EmailFolderListResponse({
    this.folders = const [],
  });

  List<EmailFolder>? folders;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFolderListResponse &&
    _deepEquality.equals(other.folders, folders);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (folders == null ? 0 : folders!.hashCode);

  @override
  String toString() => 'EmailFolderListResponse[folders=$folders]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.folders != null) {
      json[r'folders'] = this.folders;
    } else {
      json[r'folders'] = null;
    }
    return json;
  }

  /// Returns a new [EmailFolderListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFolderListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'folders'), 'Required key "EmailFolderListResponse[folders]" is missing from JSON.');
        return true;
      }());

      return EmailFolderListResponse(
        folders: EmailFolder.listFromJson(json[r'folders']),
      );
    }
    return null;
  }

  static List<EmailFolderListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFolderListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFolderListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFolderListResponse> mapFromJson(dynamic json) {
    final map = <String, EmailFolderListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFolderListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFolderListResponse-objects as value to a dart map
  static Map<String, List<EmailFolderListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFolderListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFolderListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'folders',
  };
}

