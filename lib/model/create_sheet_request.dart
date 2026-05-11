//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateSheetRequest {
  /// Returns a new [CreateSheetRequest] instance.
  CreateSheetRequest({
    required this.name,
    this.description,
    this.data = const {},
    this.rowCount,
    this.columnCount,
    this.accountId,
    this.provider,
  });

  String name;

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

  /// Optional override for the target connected account. May also be passed as `?accountId=`. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSheetRequest &&
    other.name == name &&
    other.description == description &&
    _deepEquality.equals(other.data, data) &&
    other.rowCount == rowCount &&
    other.columnCount == columnCount &&
    other.accountId == accountId &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (data.hashCode) +
    (rowCount == null ? 0 : rowCount!.hashCode) +
    (columnCount == null ? 0 : columnCount!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'CreateSheetRequest[name=$name, description=$description, data=$data, rowCount=$rowCount, columnCount=$columnCount, accountId=$accountId, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
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
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [CreateSheetRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSheetRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "CreateSheetRequest[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "CreateSheetRequest[name]" has a null value in JSON.');
        return true;
      }());

      return CreateSheetRequest(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        data: mapCastOfType<String, Object>(json, r'data') ?? const {},
        rowCount: mapValueOfType<int>(json, r'rowCount'),
        columnCount: mapValueOfType<int>(json, r'columnCount'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<CreateSheetRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSheetRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSheetRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSheetRequest> mapFromJson(dynamic json) {
    final map = <String, CreateSheetRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSheetRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSheetRequest-objects as value to a dart map
  static Map<String, List<CreateSheetRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSheetRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateSheetRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

