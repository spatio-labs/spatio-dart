//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class AttendeeStatus {
  /// Instantiate a new enum with the provided [value].
  const AttendeeStatus._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const needsAction = AttendeeStatus._(r'needs_action');
  static const accepted = AttendeeStatus._(r'accepted');
  static const declined = AttendeeStatus._(r'declined');
  static const tentative = AttendeeStatus._(r'tentative');

  /// List of all possible values in this [enum][AttendeeStatus].
  static const values = <AttendeeStatus>[
    needsAction,
    accepted,
    declined,
    tentative,
  ];

  static AttendeeStatus? fromJson(dynamic value) => AttendeeStatusTypeTransformer().decode(value);

  static List<AttendeeStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttendeeStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttendeeStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AttendeeStatus] to String,
/// and [decode] dynamic data back to [AttendeeStatus].
class AttendeeStatusTypeTransformer {
  factory AttendeeStatusTypeTransformer() => _instance ??= const AttendeeStatusTypeTransformer._();

  const AttendeeStatusTypeTransformer._();

  String encode(AttendeeStatus data) => data.value;

  /// Decodes a [dynamic value][data] to a AttendeeStatus.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AttendeeStatus? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'needs_action': return AttendeeStatus.needsAction;
        case r'accepted': return AttendeeStatus.accepted;
        case r'declined': return AttendeeStatus.declined;
        case r'tentative': return AttendeeStatus.tentative;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AttendeeStatusTypeTransformer] instance.
  static AttendeeStatusTypeTransformer? _instance;
}

