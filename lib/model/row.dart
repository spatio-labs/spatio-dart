//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Row {
  /// Returns a new [Row] instance.
  Row({
    required this.index,
    this.cells = const {},
  });

  /// Zero-based row position.
  int index;

  Map<String, Object> cells;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Row &&
    other.index == index &&
    _deepEquality.equals(other.cells, cells);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (index.hashCode) +
    (cells.hashCode);

  @override
  String toString() => 'Row[index=$index, cells=$cells]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'index'] = this.index;
      json[r'cells'] = this.cells;
    return json;
  }

  /// Returns a new [Row] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Row? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'index'), 'Required key "Row[index]" is missing from JSON.');
        assert(json[r'index'] != null, 'Required key "Row[index]" has a null value in JSON.');
        assert(json.containsKey(r'cells'), 'Required key "Row[cells]" is missing from JSON.');
        assert(json[r'cells'] != null, 'Required key "Row[cells]" has a null value in JSON.');
        return true;
      }());

      return Row(
        index: mapValueOfType<int>(json, r'index')!,
        cells: mapCastOfType<String, Object>(json, r'cells')!,
      );
    }
    return null;
  }

  static List<Row> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Row>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Row.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Row> mapFromJson(dynamic json) {
    final map = <String, Row>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Row.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Row-objects as value to a dart map
  static Map<String, List<Row>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Row>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Row.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'index',
    'cells',
  };
}

