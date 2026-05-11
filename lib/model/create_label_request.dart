//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateLabelRequest {
  /// Returns a new [CreateLabelRequest] instance.
  CreateLabelRequest({
    this.accountId,
    required this.name,
    this.messageListVisibility,
    this.labelListVisibility,
    this.color,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? messageListVisibility;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? labelListVisibility;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LabelColor? color;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateLabelRequest &&
    other.accountId == accountId &&
    other.name == name &&
    other.messageListVisibility == messageListVisibility &&
    other.labelListVisibility == labelListVisibility &&
    other.color == color;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (name.hashCode) +
    (messageListVisibility == null ? 0 : messageListVisibility!.hashCode) +
    (labelListVisibility == null ? 0 : labelListVisibility!.hashCode) +
    (color == null ? 0 : color!.hashCode);

  @override
  String toString() => 'CreateLabelRequest[accountId=$accountId, name=$name, messageListVisibility=$messageListVisibility, labelListVisibility=$labelListVisibility, color=$color]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
      json[r'name'] = this.name;
    if (this.messageListVisibility != null) {
      json[r'messageListVisibility'] = this.messageListVisibility;
    } else {
      json[r'messageListVisibility'] = null;
    }
    if (this.labelListVisibility != null) {
      json[r'labelListVisibility'] = this.labelListVisibility;
    } else {
      json[r'labelListVisibility'] = null;
    }
    if (this.color != null) {
      json[r'color'] = this.color;
    } else {
      json[r'color'] = null;
    }
    return json;
  }

  /// Returns a new [CreateLabelRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateLabelRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "CreateLabelRequest[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "CreateLabelRequest[name]" has a null value in JSON.');
        return true;
      }());

      return CreateLabelRequest(
        accountId: mapValueOfType<String>(json, r'accountId'),
        name: mapValueOfType<String>(json, r'name')!,
        messageListVisibility: mapValueOfType<String>(json, r'messageListVisibility'),
        labelListVisibility: mapValueOfType<String>(json, r'labelListVisibility'),
        color: LabelColor.fromJson(json[r'color']),
      );
    }
    return null;
  }

  static List<CreateLabelRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLabelRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLabelRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateLabelRequest> mapFromJson(dynamic json) {
    final map = <String, CreateLabelRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateLabelRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateLabelRequest-objects as value to a dart map
  static Map<String, List<CreateLabelRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateLabelRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateLabelRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

