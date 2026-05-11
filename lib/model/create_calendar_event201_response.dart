//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateCalendarEvent201Response {
  /// Returns a new [CreateCalendarEvent201Response] instance.
  CreateCalendarEvent201Response({
    required this.success,
    this.data,
    this.errors = const [],
    this.metadata = const {},
  });

  bool success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SpatioEvent? data;

  List<CalendarAccountError> errors;

  Map<String, Object> metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateCalendarEvent201Response &&
    other.success == success &&
    other.data == data &&
    _deepEquality.equals(other.errors, errors) &&
    _deepEquality.equals(other.metadata, metadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (errors.hashCode) +
    (metadata.hashCode);

  @override
  String toString() => 'CreateCalendarEvent201Response[success=$success, data=$data, errors=$errors, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
      json[r'errors'] = this.errors;
      json[r'metadata'] = this.metadata;
    return json;
  }

  /// Returns a new [CreateCalendarEvent201Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCalendarEvent201Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "CreateCalendarEvent201Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "CreateCalendarEvent201Response[success]" has a null value in JSON.');
        return true;
      }());

      return CreateCalendarEvent201Response(
        success: mapValueOfType<bool>(json, r'success')!,
        data: SpatioEvent.fromJson(json[r'data']),
        errors: CalendarAccountError.listFromJson(json[r'errors']),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
      );
    }
    return null;
  }

  static List<CreateCalendarEvent201Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateCalendarEvent201Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCalendarEvent201Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateCalendarEvent201Response> mapFromJson(dynamic json) {
    final map = <String, CreateCalendarEvent201Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCalendarEvent201Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateCalendarEvent201Response-objects as value to a dart map
  static Map<String, List<CreateCalendarEvent201Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateCalendarEvent201Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateCalendarEvent201Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}

