//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class MoveFileRequest {
  /// Returns a new [MoveFileRequest] instance.
  MoveFileRequest({
    this.folderId,
  });

  String? folderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoveFileRequest &&
    other.folderId == folderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (folderId == null ? 0 : folderId!.hashCode);

  @override
  String toString() => 'MoveFileRequest[folderId=$folderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.folderId != null) {
      json[r'folderId'] = this.folderId;
    } else {
      json[r'folderId'] = null;
    }
    return json;
  }

  /// Returns a new [MoveFileRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoveFileRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MoveFileRequest(
        folderId: mapValueOfType<String>(json, r'folderId'),
      );
    }
    return null;
  }

  static List<MoveFileRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoveFileRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoveFileRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoveFileRequest> mapFromJson(dynamic json) {
    final map = <String, MoveFileRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoveFileRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoveFileRequest-objects as value to a dart map
  static Map<String, List<MoveFileRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoveFileRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoveFileRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

