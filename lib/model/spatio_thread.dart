//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SpatioThread {
  /// Returns a new [SpatioThread] instance.
  SpatioThread({
    required this.id,
    this.messages = const [],
    this.snippet,
    this.labels = const [],
  });

  String id;

  List<Email> messages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? snippet;

  List<String> labels;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpatioThread &&
    other.id == id &&
    _deepEquality.equals(other.messages, messages) &&
    other.snippet == snippet &&
    _deepEquality.equals(other.labels, labels);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (messages.hashCode) +
    (snippet == null ? 0 : snippet!.hashCode) +
    (labels.hashCode);

  @override
  String toString() => 'SpatioThread[id=$id, messages=$messages, snippet=$snippet, labels=$labels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'messages'] = this.messages;
    if (this.snippet != null) {
      json[r'snippet'] = this.snippet;
    } else {
      json[r'snippet'] = null;
    }
      json[r'labels'] = this.labels;
    return json;
  }

  /// Returns a new [SpatioThread] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpatioThread? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "SpatioThread[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "SpatioThread[id]" has a null value in JSON.');
        assert(json.containsKey(r'messages'), 'Required key "SpatioThread[messages]" is missing from JSON.');
        assert(json[r'messages'] != null, 'Required key "SpatioThread[messages]" has a null value in JSON.');
        return true;
      }());

      return SpatioThread(
        id: mapValueOfType<String>(json, r'id')!,
        messages: Email.listFromJson(json[r'messages']),
        snippet: mapValueOfType<String>(json, r'snippet'),
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<SpatioThread> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpatioThread>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpatioThread.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpatioThread> mapFromJson(dynamic json) {
    final map = <String, SpatioThread>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpatioThread.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpatioThread-objects as value to a dart map
  static Map<String, List<SpatioThread>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpatioThread>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpatioThread.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'messages',
  };
}

