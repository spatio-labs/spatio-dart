//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class AttendeeRole {
  /// Instantiate a new enum with the provided [value].
  const AttendeeRole._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const required_ = AttendeeRole._(r'required');
  static const optional = AttendeeRole._(r'optional');
  static const chair = AttendeeRole._(r'chair');

  /// List of all possible values in this [enum][AttendeeRole].
  static const values = <AttendeeRole>[
    required_,
    optional,
    chair,
  ];

  static AttendeeRole? fromJson(dynamic value) => AttendeeRoleTypeTransformer().decode(value);

  static List<AttendeeRole> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttendeeRole>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttendeeRole.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AttendeeRole] to String,
/// and [decode] dynamic data back to [AttendeeRole].
class AttendeeRoleTypeTransformer {
  factory AttendeeRoleTypeTransformer() => _instance ??= const AttendeeRoleTypeTransformer._();

  const AttendeeRoleTypeTransformer._();

  String encode(AttendeeRole data) => data.value;

  /// Decodes a [dynamic value][data] to a AttendeeRole.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AttendeeRole? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'required': return AttendeeRole.required_;
        case r'optional': return AttendeeRole.optional;
        case r'chair': return AttendeeRole.chair;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AttendeeRoleTypeTransformer] instance.
  static AttendeeRoleTypeTransformer? _instance;
}

