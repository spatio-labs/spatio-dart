//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateRecommendationStatusRequest {
  /// Returns a new [UpdateRecommendationStatusRequest] instance.
  UpdateRecommendationStatusRequest({
    required this.status,
  });

  UpdateRecommendationStatusRequestStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateRecommendationStatusRequest &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode);

  @override
  String toString() => 'UpdateRecommendationStatusRequest[status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [UpdateRecommendationStatusRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateRecommendationStatusRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'status'), 'Required key "UpdateRecommendationStatusRequest[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "UpdateRecommendationStatusRequest[status]" has a null value in JSON.');
        return true;
      }());

      return UpdateRecommendationStatusRequest(
        status: UpdateRecommendationStatusRequestStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<UpdateRecommendationStatusRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateRecommendationStatusRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateRecommendationStatusRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateRecommendationStatusRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateRecommendationStatusRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateRecommendationStatusRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateRecommendationStatusRequest-objects as value to a dart map
  static Map<String, List<UpdateRecommendationStatusRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateRecommendationStatusRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateRecommendationStatusRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
  };
}


class UpdateRecommendationStatusRequestStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateRecommendationStatusRequestStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const accepted = UpdateRecommendationStatusRequestStatusEnum._(r'accepted');
  static const dismissed = UpdateRecommendationStatusRequestStatusEnum._(r'dismissed');

  /// List of all possible values in this [enum][UpdateRecommendationStatusRequestStatusEnum].
  static const values = <UpdateRecommendationStatusRequestStatusEnum>[
    accepted,
    dismissed,
  ];

  static UpdateRecommendationStatusRequestStatusEnum? fromJson(dynamic value) => UpdateRecommendationStatusRequestStatusEnumTypeTransformer().decode(value);

  static List<UpdateRecommendationStatusRequestStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateRecommendationStatusRequestStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateRecommendationStatusRequestStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateRecommendationStatusRequestStatusEnum] to String,
/// and [decode] dynamic data back to [UpdateRecommendationStatusRequestStatusEnum].
class UpdateRecommendationStatusRequestStatusEnumTypeTransformer {
  factory UpdateRecommendationStatusRequestStatusEnumTypeTransformer() => _instance ??= const UpdateRecommendationStatusRequestStatusEnumTypeTransformer._();

  const UpdateRecommendationStatusRequestStatusEnumTypeTransformer._();

  String encode(UpdateRecommendationStatusRequestStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateRecommendationStatusRequestStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateRecommendationStatusRequestStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'accepted': return UpdateRecommendationStatusRequestStatusEnum.accepted;
        case r'dismissed': return UpdateRecommendationStatusRequestStatusEnum.dismissed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateRecommendationStatusRequestStatusEnumTypeTransformer] instance.
  static UpdateRecommendationStatusRequestStatusEnumTypeTransformer? _instance;
}


