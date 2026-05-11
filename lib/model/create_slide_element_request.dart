//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateSlideElementRequest {
  /// Returns a new [CreateSlideElementRequest] instance.
  CreateSlideElementRequest({
    required this.elementType,
    this.content = const {},
    this.x,
    this.y,
    this.width,
    this.height,
    this.rotation,
    this.zIndex,
  });

  String elementType;

  Map<String, Object> content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? x;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? y;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? width;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? height;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? rotation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? zIndex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSlideElementRequest &&
    other.elementType == elementType &&
    _deepEquality.equals(other.content, content) &&
    other.x == x &&
    other.y == y &&
    other.width == width &&
    other.height == height &&
    other.rotation == rotation &&
    other.zIndex == zIndex;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (elementType.hashCode) +
    (content.hashCode) +
    (x == null ? 0 : x!.hashCode) +
    (y == null ? 0 : y!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (rotation == null ? 0 : rotation!.hashCode) +
    (zIndex == null ? 0 : zIndex!.hashCode);

  @override
  String toString() => 'CreateSlideElementRequest[elementType=$elementType, content=$content, x=$x, y=$y, width=$width, height=$height, rotation=$rotation, zIndex=$zIndex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'elementType'] = this.elementType;
      json[r'content'] = this.content;
    if (this.x != null) {
      json[r'x'] = this.x;
    } else {
      json[r'x'] = null;
    }
    if (this.y != null) {
      json[r'y'] = this.y;
    } else {
      json[r'y'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
    if (this.rotation != null) {
      json[r'rotation'] = this.rotation;
    } else {
      json[r'rotation'] = null;
    }
    if (this.zIndex != null) {
      json[r'zIndex'] = this.zIndex;
    } else {
      json[r'zIndex'] = null;
    }
    return json;
  }

  /// Returns a new [CreateSlideElementRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSlideElementRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'elementType'), 'Required key "CreateSlideElementRequest[elementType]" is missing from JSON.');
        assert(json[r'elementType'] != null, 'Required key "CreateSlideElementRequest[elementType]" has a null value in JSON.');
        return true;
      }());

      return CreateSlideElementRequest(
        elementType: mapValueOfType<String>(json, r'elementType')!,
        content: mapCastOfType<String, Object>(json, r'content') ?? const {},
        x: mapValueOfType<double>(json, r'x'),
        y: mapValueOfType<double>(json, r'y'),
        width: mapValueOfType<double>(json, r'width'),
        height: mapValueOfType<double>(json, r'height'),
        rotation: mapValueOfType<double>(json, r'rotation'),
        zIndex: mapValueOfType<int>(json, r'zIndex'),
      );
    }
    return null;
  }

  static List<CreateSlideElementRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSlideElementRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSlideElementRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSlideElementRequest> mapFromJson(dynamic json) {
    final map = <String, CreateSlideElementRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSlideElementRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSlideElementRequest-objects as value to a dart map
  static Map<String, List<CreateSlideElementRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSlideElementRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateSlideElementRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'elementType',
  };
}

