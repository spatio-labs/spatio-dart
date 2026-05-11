//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateSheetRequest {
  /// Returns a new [UpdateSheetRequest] instance.
  UpdateSheetRequest({
    this.name,
    this.description,
    this.data = const {},
    this.rowCount,
    this.columnCount,
    this.isPublic,
    this.isReadOnly,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String? description;

  Map<String, Object> data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rowCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? columnCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPublic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isReadOnly;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSheetRequest &&
    other.name == name &&
    other.description == description &&
    _deepEquality.equals(other.data, data) &&
    other.rowCount == rowCount &&
    other.columnCount == columnCount &&
    other.isPublic == isPublic &&
    other.isReadOnly == isReadOnly;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (data.hashCode) +
    (rowCount == null ? 0 : rowCount!.hashCode) +
    (columnCount == null ? 0 : columnCount!.hashCode) +
    (isPublic == null ? 0 : isPublic!.hashCode) +
    (isReadOnly == null ? 0 : isReadOnly!.hashCode);

  @override
  String toString() => 'UpdateSheetRequest[name=$name, description=$description, data=$data, rowCount=$rowCount, columnCount=$columnCount, isPublic=$isPublic, isReadOnly=$isReadOnly]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'data'] = this.data;
    if (this.rowCount != null) {
      json[r'rowCount'] = this.rowCount;
    } else {
      json[r'rowCount'] = null;
    }
    if (this.columnCount != null) {
      json[r'columnCount'] = this.columnCount;
    } else {
      json[r'columnCount'] = null;
    }
    if (this.isPublic != null) {
      json[r'isPublic'] = this.isPublic;
    } else {
      json[r'isPublic'] = null;
    }
    if (this.isReadOnly != null) {
      json[r'isReadOnly'] = this.isReadOnly;
    } else {
      json[r'isReadOnly'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateSheetRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSheetRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UpdateSheetRequest(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        data: mapCastOfType<String, Object>(json, r'data') ?? const {},
        rowCount: mapValueOfType<int>(json, r'rowCount'),
        columnCount: mapValueOfType<int>(json, r'columnCount'),
        isPublic: mapValueOfType<bool>(json, r'isPublic'),
        isReadOnly: mapValueOfType<bool>(json, r'isReadOnly'),
      );
    }
    return null;
  }

  static List<UpdateSheetRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSheetRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSheetRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSheetRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateSheetRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSheetRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSheetRequest-objects as value to a dart map
  static Map<String, List<UpdateSheetRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSheetRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateSheetRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

