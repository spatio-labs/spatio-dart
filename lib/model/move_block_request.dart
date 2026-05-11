//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class MoveBlockRequest {
  /// Returns a new [MoveBlockRequest] instance.
  MoveBlockRequest({
    this.parentId,
    required this.position,
  });

  /// New parent block id; omit to keep the current parent.
  String? parentId;

  int position;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoveBlockRequest &&
    other.parentId == parentId &&
    other.position == position;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (parentId == null ? 0 : parentId!.hashCode) +
    (position.hashCode);

  @override
  String toString() => 'MoveBlockRequest[parentId=$parentId, position=$position]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.parentId != null) {
      json[r'parentId'] = this.parentId;
    } else {
      json[r'parentId'] = null;
    }
      json[r'position'] = this.position;
    return json;
  }

  /// Returns a new [MoveBlockRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoveBlockRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'position'), 'Required key "MoveBlockRequest[position]" is missing from JSON.');
        assert(json[r'position'] != null, 'Required key "MoveBlockRequest[position]" has a null value in JSON.');
        return true;
      }());

      return MoveBlockRequest(
        parentId: mapValueOfType<String>(json, r'parentId'),
        position: mapValueOfType<int>(json, r'position')!,
      );
    }
    return null;
  }

  static List<MoveBlockRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoveBlockRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoveBlockRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoveBlockRequest> mapFromJson(dynamic json) {
    final map = <String, MoveBlockRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoveBlockRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoveBlockRequest-objects as value to a dart map
  static Map<String, List<MoveBlockRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoveBlockRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoveBlockRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'position',
  };
}

