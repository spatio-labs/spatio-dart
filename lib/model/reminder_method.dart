//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;


class ReminderMethod {
  /// Instantiate a new enum with the provided [value].
  const ReminderMethod._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const email = ReminderMethod._(r'email');
  static const popup = ReminderMethod._(r'popup');
  static const sms = ReminderMethod._(r'sms');
  static const push = ReminderMethod._(r'push');

  /// List of all possible values in this [enum][ReminderMethod].
  static const values = <ReminderMethod>[
    email,
    popup,
    sms,
    push,
  ];

  static ReminderMethod? fromJson(dynamic value) => ReminderMethodTypeTransformer().decode(value);

  static List<ReminderMethod> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReminderMethod>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReminderMethod.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ReminderMethod] to String,
/// and [decode] dynamic data back to [ReminderMethod].
class ReminderMethodTypeTransformer {
  factory ReminderMethodTypeTransformer() => _instance ??= const ReminderMethodTypeTransformer._();

  const ReminderMethodTypeTransformer._();

  String encode(ReminderMethod data) => data.value;

  /// Decodes a [dynamic value][data] to a ReminderMethod.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ReminderMethod? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'email': return ReminderMethod.email;
        case r'popup': return ReminderMethod.popup;
        case r'sms': return ReminderMethod.sms;
        case r'push': return ReminderMethod.push;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ReminderMethodTypeTransformer] instance.
  static ReminderMethodTypeTransformer? _instance;
}

