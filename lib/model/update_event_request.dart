//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateEventRequest {
  /// Returns a new [UpdateEventRequest] instance.
  UpdateEventRequest({
    required this.accountId,
    this.updates = const {},
    this.sendUpdates,
  });

  String accountId;

  Map<String, Object> updates;

  UpdateEventRequestSendUpdatesEnum? sendUpdates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateEventRequest &&
    other.accountId == accountId &&
    _deepEquality.equals(other.updates, updates) &&
    other.sendUpdates == sendUpdates;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId.hashCode) +
    (updates.hashCode) +
    (sendUpdates == null ? 0 : sendUpdates!.hashCode);

  @override
  String toString() => 'UpdateEventRequest[accountId=$accountId, updates=$updates, sendUpdates=$sendUpdates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account_id'] = this.accountId;
      json[r'updates'] = this.updates;
    if (this.sendUpdates != null) {
      json[r'send_updates'] = this.sendUpdates;
    } else {
      json[r'send_updates'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateEventRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateEventRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'account_id'), 'Required key "UpdateEventRequest[account_id]" is missing from JSON.');
        assert(json[r'account_id'] != null, 'Required key "UpdateEventRequest[account_id]" has a null value in JSON.');
        assert(json.containsKey(r'updates'), 'Required key "UpdateEventRequest[updates]" is missing from JSON.');
        assert(json[r'updates'] != null, 'Required key "UpdateEventRequest[updates]" has a null value in JSON.');
        return true;
      }());

      return UpdateEventRequest(
        accountId: mapValueOfType<String>(json, r'account_id')!,
        updates: mapCastOfType<String, Object>(json, r'updates')!,
        sendUpdates: UpdateEventRequestSendUpdatesEnum.fromJson(json[r'send_updates']),
      );
    }
    return null;
  }

  static List<UpdateEventRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateEventRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateEventRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateEventRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateEventRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateEventRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateEventRequest-objects as value to a dart map
  static Map<String, List<UpdateEventRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateEventRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateEventRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account_id',
    'updates',
  };
}


class UpdateEventRequestSendUpdatesEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateEventRequestSendUpdatesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = UpdateEventRequestSendUpdatesEnum._(r'all');
  static const externalOnly = UpdateEventRequestSendUpdatesEnum._(r'externalOnly');
  static const none = UpdateEventRequestSendUpdatesEnum._(r'none');

  /// List of all possible values in this [enum][UpdateEventRequestSendUpdatesEnum].
  static const values = <UpdateEventRequestSendUpdatesEnum>[
    all,
    externalOnly,
    none,
  ];

  static UpdateEventRequestSendUpdatesEnum? fromJson(dynamic value) => UpdateEventRequestSendUpdatesEnumTypeTransformer().decode(value);

  static List<UpdateEventRequestSendUpdatesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateEventRequestSendUpdatesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateEventRequestSendUpdatesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateEventRequestSendUpdatesEnum] to String,
/// and [decode] dynamic data back to [UpdateEventRequestSendUpdatesEnum].
class UpdateEventRequestSendUpdatesEnumTypeTransformer {
  factory UpdateEventRequestSendUpdatesEnumTypeTransformer() => _instance ??= const UpdateEventRequestSendUpdatesEnumTypeTransformer._();

  const UpdateEventRequestSendUpdatesEnumTypeTransformer._();

  String encode(UpdateEventRequestSendUpdatesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateEventRequestSendUpdatesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateEventRequestSendUpdatesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'all': return UpdateEventRequestSendUpdatesEnum.all;
        case r'externalOnly': return UpdateEventRequestSendUpdatesEnum.externalOnly;
        case r'none': return UpdateEventRequestSendUpdatesEnum.none;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateEventRequestSendUpdatesEnumTypeTransformer] instance.
  static UpdateEventRequestSendUpdatesEnumTypeTransformer? _instance;
}


