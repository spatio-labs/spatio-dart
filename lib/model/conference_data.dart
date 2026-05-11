//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ConferenceData {
  /// Returns a new [ConferenceData] instance.
  ConferenceData({
    required this.type,
    required this.uri,
    this.meetingId,
    this.passcode,
    this.accessCode,
    this.dialIn = const [],
  });

  String type;

  String uri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? meetingId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? passcode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessCode;

  List<String> dialIn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConferenceData &&
    other.type == type &&
    other.uri == uri &&
    other.meetingId == meetingId &&
    other.passcode == passcode &&
    other.accessCode == accessCode &&
    _deepEquality.equals(other.dialIn, dialIn);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (uri.hashCode) +
    (meetingId == null ? 0 : meetingId!.hashCode) +
    (passcode == null ? 0 : passcode!.hashCode) +
    (accessCode == null ? 0 : accessCode!.hashCode) +
    (dialIn.hashCode);

  @override
  String toString() => 'ConferenceData[type=$type, uri=$uri, meetingId=$meetingId, passcode=$passcode, accessCode=$accessCode, dialIn=$dialIn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'uri'] = this.uri;
    if (this.meetingId != null) {
      json[r'meeting_id'] = this.meetingId;
    } else {
      json[r'meeting_id'] = null;
    }
    if (this.passcode != null) {
      json[r'passcode'] = this.passcode;
    } else {
      json[r'passcode'] = null;
    }
    if (this.accessCode != null) {
      json[r'access_code'] = this.accessCode;
    } else {
      json[r'access_code'] = null;
    }
      json[r'dial_in'] = this.dialIn;
    return json;
  }

  /// Returns a new [ConferenceData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConferenceData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'type'), 'Required key "ConferenceData[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "ConferenceData[type]" has a null value in JSON.');
        assert(json.containsKey(r'uri'), 'Required key "ConferenceData[uri]" is missing from JSON.');
        assert(json[r'uri'] != null, 'Required key "ConferenceData[uri]" has a null value in JSON.');
        return true;
      }());

      return ConferenceData(
        type: mapValueOfType<String>(json, r'type')!,
        uri: mapValueOfType<String>(json, r'uri')!,
        meetingId: mapValueOfType<String>(json, r'meeting_id'),
        passcode: mapValueOfType<String>(json, r'passcode'),
        accessCode: mapValueOfType<String>(json, r'access_code'),
        dialIn: json[r'dial_in'] is Iterable
            ? (json[r'dial_in'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ConferenceData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConferenceData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConferenceData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConferenceData> mapFromJson(dynamic json) {
    final map = <String, ConferenceData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConferenceData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConferenceData-objects as value to a dart map
  static Map<String, List<ConferenceData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConferenceData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConferenceData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'uri',
  };
}

