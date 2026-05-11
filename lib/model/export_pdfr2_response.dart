//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class ExportPDFR2Response {
  /// Returns a new [ExportPDFR2Response] instance.
  ExportPDFR2Response({
    required this.storage,
    required this.url,
    required this.expiresAt,
    required this.size,
  });

  ExportPDFR2ResponseStorageEnum storage;

  /// 24-hour signed URL.
  String url;

  DateTime expiresAt;

  /// PDF size in bytes.
  int size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExportPDFR2Response &&
    other.storage == storage &&
    other.url == url &&
    other.expiresAt == expiresAt &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (storage.hashCode) +
    (url.hashCode) +
    (expiresAt.hashCode) +
    (size.hashCode);

  @override
  String toString() => 'ExportPDFR2Response[storage=$storage, url=$url, expiresAt=$expiresAt, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'storage'] = this.storage;
      json[r'url'] = this.url;
      json[r'expiresAt'] = this.expiresAt.toUtc().toIso8601String();
      json[r'size'] = this.size;
    return json;
  }

  /// Returns a new [ExportPDFR2Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExportPDFR2Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'storage'), 'Required key "ExportPDFR2Response[storage]" is missing from JSON.');
        assert(json[r'storage'] != null, 'Required key "ExportPDFR2Response[storage]" has a null value in JSON.');
        assert(json.containsKey(r'url'), 'Required key "ExportPDFR2Response[url]" is missing from JSON.');
        assert(json[r'url'] != null, 'Required key "ExportPDFR2Response[url]" has a null value in JSON.');
        assert(json.containsKey(r'expiresAt'), 'Required key "ExportPDFR2Response[expiresAt]" is missing from JSON.');
        assert(json[r'expiresAt'] != null, 'Required key "ExportPDFR2Response[expiresAt]" has a null value in JSON.');
        assert(json.containsKey(r'size'), 'Required key "ExportPDFR2Response[size]" is missing from JSON.');
        assert(json[r'size'] != null, 'Required key "ExportPDFR2Response[size]" has a null value in JSON.');
        return true;
      }());

      return ExportPDFR2Response(
        storage: ExportPDFR2ResponseStorageEnum.fromJson(json[r'storage'])!,
        url: mapValueOfType<String>(json, r'url')!,
        expiresAt: mapDateTime(json, r'expiresAt', r'')!,
        size: mapValueOfType<int>(json, r'size')!,
      );
    }
    return null;
  }

  static List<ExportPDFR2Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportPDFR2Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportPDFR2Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExportPDFR2Response> mapFromJson(dynamic json) {
    final map = <String, ExportPDFR2Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExportPDFR2Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExportPDFR2Response-objects as value to a dart map
  static Map<String, List<ExportPDFR2Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExportPDFR2Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExportPDFR2Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'storage',
    'url',
    'expiresAt',
    'size',
  };
}


class ExportPDFR2ResponseStorageEnum {
  /// Instantiate a new enum with the provided [value].
  const ExportPDFR2ResponseStorageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const r2 = ExportPDFR2ResponseStorageEnum._(r'r2');

  /// List of all possible values in this [enum][ExportPDFR2ResponseStorageEnum].
  static const values = <ExportPDFR2ResponseStorageEnum>[
    r2,
  ];

  static ExportPDFR2ResponseStorageEnum? fromJson(dynamic value) => ExportPDFR2ResponseStorageEnumTypeTransformer().decode(value);

  static List<ExportPDFR2ResponseStorageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExportPDFR2ResponseStorageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExportPDFR2ResponseStorageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExportPDFR2ResponseStorageEnum] to String,
/// and [decode] dynamic data back to [ExportPDFR2ResponseStorageEnum].
class ExportPDFR2ResponseStorageEnumTypeTransformer {
  factory ExportPDFR2ResponseStorageEnumTypeTransformer() => _instance ??= const ExportPDFR2ResponseStorageEnumTypeTransformer._();

  const ExportPDFR2ResponseStorageEnumTypeTransformer._();

  String encode(ExportPDFR2ResponseStorageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExportPDFR2ResponseStorageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExportPDFR2ResponseStorageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'r2': return ExportPDFR2ResponseStorageEnum.r2;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExportPDFR2ResponseStorageEnumTypeTransformer] instance.
  static ExportPDFR2ResponseStorageEnumTypeTransformer? _instance;
}


