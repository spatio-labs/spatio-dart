//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SlideElement {
  /// Returns a new [SlideElement] instance.
  SlideElement({
    required this.id,
    required this.slideId,
    required this.elementType,
    this.content = const {},
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    required this.rotation,
    required this.zIndex,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String slideId;

  /// Free-form type id (`text`, `image`, `shape`, etc.).
  String elementType;

  Map<String, Object> content;

  double x;

  double y;

  double width;

  double height;

  /// Degrees.
  double rotation;

  int zIndex;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SlideElement &&
    other.id == id &&
    other.slideId == slideId &&
    other.elementType == elementType &&
    _deepEquality.equals(other.content, content) &&
    other.x == x &&
    other.y == y &&
    other.width == width &&
    other.height == height &&
    other.rotation == rotation &&
    other.zIndex == zIndex &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (slideId.hashCode) +
    (elementType.hashCode) +
    (content.hashCode) +
    (x.hashCode) +
    (y.hashCode) +
    (width.hashCode) +
    (height.hashCode) +
    (rotation.hashCode) +
    (zIndex.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'SlideElement[id=$id, slideId=$slideId, elementType=$elementType, content=$content, x=$x, y=$y, width=$width, height=$height, rotation=$rotation, zIndex=$zIndex, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'slideId'] = this.slideId;
      json[r'elementType'] = this.elementType;
      json[r'content'] = this.content;
      json[r'x'] = this.x;
      json[r'y'] = this.y;
      json[r'width'] = this.width;
      json[r'height'] = this.height;
      json[r'rotation'] = this.rotation;
      json[r'zIndex'] = this.zIndex;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SlideElement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SlideElement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "SlideElement[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "SlideElement[id]" has a null value in JSON.');
        assert(json.containsKey(r'slideId'), 'Required key "SlideElement[slideId]" is missing from JSON.');
        assert(json[r'slideId'] != null, 'Required key "SlideElement[slideId]" has a null value in JSON.');
        assert(json.containsKey(r'elementType'), 'Required key "SlideElement[elementType]" is missing from JSON.');
        assert(json[r'elementType'] != null, 'Required key "SlideElement[elementType]" has a null value in JSON.');
        assert(json.containsKey(r'content'), 'Required key "SlideElement[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "SlideElement[content]" has a null value in JSON.');
        assert(json.containsKey(r'x'), 'Required key "SlideElement[x]" is missing from JSON.');
        assert(json[r'x'] != null, 'Required key "SlideElement[x]" has a null value in JSON.');
        assert(json.containsKey(r'y'), 'Required key "SlideElement[y]" is missing from JSON.');
        assert(json[r'y'] != null, 'Required key "SlideElement[y]" has a null value in JSON.');
        assert(json.containsKey(r'width'), 'Required key "SlideElement[width]" is missing from JSON.');
        assert(json[r'width'] != null, 'Required key "SlideElement[width]" has a null value in JSON.');
        assert(json.containsKey(r'height'), 'Required key "SlideElement[height]" is missing from JSON.');
        assert(json[r'height'] != null, 'Required key "SlideElement[height]" has a null value in JSON.');
        assert(json.containsKey(r'rotation'), 'Required key "SlideElement[rotation]" is missing from JSON.');
        assert(json[r'rotation'] != null, 'Required key "SlideElement[rotation]" has a null value in JSON.');
        assert(json.containsKey(r'zIndex'), 'Required key "SlideElement[zIndex]" is missing from JSON.');
        assert(json[r'zIndex'] != null, 'Required key "SlideElement[zIndex]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "SlideElement[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "SlideElement[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "SlideElement[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "SlideElement[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return SlideElement(
        id: mapValueOfType<String>(json, r'id')!,
        slideId: mapValueOfType<String>(json, r'slideId')!,
        elementType: mapValueOfType<String>(json, r'elementType')!,
        content: mapCastOfType<String, Object>(json, r'content')!,
        x: mapValueOfType<double>(json, r'x')!,
        y: mapValueOfType<double>(json, r'y')!,
        width: mapValueOfType<double>(json, r'width')!,
        height: mapValueOfType<double>(json, r'height')!,
        rotation: mapValueOfType<double>(json, r'rotation')!,
        zIndex: mapValueOfType<int>(json, r'zIndex')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
      );
    }
    return null;
  }

  static List<SlideElement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SlideElement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SlideElement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SlideElement> mapFromJson(dynamic json) {
    final map = <String, SlideElement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SlideElement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SlideElement-objects as value to a dart map
  static Map<String, List<SlideElement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SlideElement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SlideElement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'slideId',
    'elementType',
    'content',
    'x',
    'y',
    'width',
    'height',
    'rotation',
    'zIndex',
    'createdAt',
    'updatedAt',
  };
}

