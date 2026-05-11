//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateEmailRequest {
  /// Returns a new [UpdateEmailRequest] instance.
  UpdateEmailRequest({
    this.accountId,
    this.isRead,
    this.isStarred,
    this.addLabels = const [],
    this.removeLabels = const [],
  });

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
  bool? isRead;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isStarred;

  List<String> addLabels;

  List<String> removeLabels;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateEmailRequest &&
    other.accountId == accountId &&
    other.isRead == isRead &&
    other.isStarred == isStarred &&
    _deepEquality.equals(other.addLabels, addLabels) &&
    _deepEquality.equals(other.removeLabels, removeLabels);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId == null ? 0 : accountId!.hashCode) +
    (isRead == null ? 0 : isRead!.hashCode) +
    (isStarred == null ? 0 : isStarred!.hashCode) +
    (addLabels.hashCode) +
    (removeLabels.hashCode);

  @override
  String toString() => 'UpdateEmailRequest[accountId=$accountId, isRead=$isRead, isStarred=$isStarred, addLabels=$addLabels, removeLabels=$removeLabels]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.isRead != null) {
      json[r'isRead'] = this.isRead;
    } else {
      json[r'isRead'] = null;
    }
    if (this.isStarred != null) {
      json[r'isStarred'] = this.isStarred;
    } else {
      json[r'isStarred'] = null;
    }
      json[r'addLabels'] = this.addLabels;
      json[r'removeLabels'] = this.removeLabels;
    return json;
  }

  /// Returns a new [UpdateEmailRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateEmailRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UpdateEmailRequest(
        accountId: mapValueOfType<String>(json, r'accountId'),
        isRead: mapValueOfType<bool>(json, r'isRead'),
        isStarred: mapValueOfType<bool>(json, r'isStarred'),
        addLabels: json[r'addLabels'] is Iterable
            ? (json[r'addLabels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        removeLabels: json[r'removeLabels'] is Iterable
            ? (json[r'removeLabels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<UpdateEmailRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateEmailRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateEmailRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateEmailRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateEmailRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateEmailRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateEmailRequest-objects as value to a dart map
  static Map<String, List<UpdateEmailRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateEmailRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateEmailRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

