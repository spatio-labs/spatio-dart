//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Recommendation {
  /// Returns a new [Recommendation] instance.
  Recommendation({
    required this.id,
    this.workspaceId,
    this.userId,
    this.kind,
    this.title,
    this.body,
    required this.status,
    this.payload = const {},
    this.createdAt,
    this.updatedAt,
    this.expiresAt,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workspaceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  /// Provider-tagged proposal kind (e.g. `note.draft`, `task.followup`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  RecommendationStatusEnum status;

  Map<String, Object> payload;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  DateTime? expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Recommendation &&
    other.id == id &&
    other.workspaceId == workspaceId &&
    other.userId == userId &&
    other.kind == kind &&
    other.title == title &&
    other.body == body &&
    other.status == status &&
    _deepEquality.equals(other.payload, payload) &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (status.hashCode) +
    (payload.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode);

  @override
  String toString() => 'Recommendation[id=$id, workspaceId=$workspaceId, userId=$userId, kind=$kind, title=$title, body=$body, status=$status, payload=$payload, createdAt=$createdAt, updatedAt=$updatedAt, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
      json[r'status'] = this.status;
      json[r'payload'] = this.payload;
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    return json;
  }

  /// Returns a new [Recommendation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Recommendation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Recommendation[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Recommendation[id]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "Recommendation[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "Recommendation[status]" has a null value in JSON.');
        return true;
      }());

      return Recommendation(
        id: mapValueOfType<String>(json, r'id')!,
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
        userId: mapValueOfType<String>(json, r'userId'),
        kind: mapValueOfType<String>(json, r'kind'),
        title: mapValueOfType<String>(json, r'title'),
        body: mapValueOfType<String>(json, r'body'),
        status: RecommendationStatusEnum.fromJson(json[r'status'])!,
        payload: mapCastOfType<String, Object>(json, r'payload') ?? const {},
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        expiresAt: mapDateTime(json, r'expiresAt', r''),
      );
    }
    return null;
  }

  static List<Recommendation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Recommendation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Recommendation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Recommendation> mapFromJson(dynamic json) {
    final map = <String, Recommendation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Recommendation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Recommendation-objects as value to a dart map
  static Map<String, List<Recommendation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Recommendation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Recommendation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'status',
  };
}


class RecommendationStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const RecommendationStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = RecommendationStatusEnum._(r'pending');
  static const accepted = RecommendationStatusEnum._(r'accepted');
  static const dismissed = RecommendationStatusEnum._(r'dismissed');
  static const expired = RecommendationStatusEnum._(r'expired');

  /// List of all possible values in this [enum][RecommendationStatusEnum].
  static const values = <RecommendationStatusEnum>[
    pending,
    accepted,
    dismissed,
    expired,
  ];

  static RecommendationStatusEnum? fromJson(dynamic value) => RecommendationStatusEnumTypeTransformer().decode(value);

  static List<RecommendationStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecommendationStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecommendationStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RecommendationStatusEnum] to String,
/// and [decode] dynamic data back to [RecommendationStatusEnum].
class RecommendationStatusEnumTypeTransformer {
  factory RecommendationStatusEnumTypeTransformer() => _instance ??= const RecommendationStatusEnumTypeTransformer._();

  const RecommendationStatusEnumTypeTransformer._();

  String encode(RecommendationStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RecommendationStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RecommendationStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return RecommendationStatusEnum.pending;
        case r'accepted': return RecommendationStatusEnum.accepted;
        case r'dismissed': return RecommendationStatusEnum.dismissed;
        case r'expired': return RecommendationStatusEnum.expired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RecommendationStatusEnumTypeTransformer] instance.
  static RecommendationStatusEnumTypeTransformer? _instance;
}


