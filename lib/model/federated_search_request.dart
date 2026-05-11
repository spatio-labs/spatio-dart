//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class FederatedSearchRequest {
  /// Returns a new [FederatedSearchRequest] instance.
  FederatedSearchRequest({
    required this.query,
    this.platforms = const [],
    this.limit = 25,
    this.pageTokens = const {},
    this.workspaceId,
    this.organizationId,
    this.includeShared,
    this.includeArchived,
  });

  String query;

  /// Subset to fan out to. Empty means all available platforms.
  List<FederatedSearchRequestPlatformsEnum> platforms;

  /// Maximum value: 100
  int limit;

  /// Per-platform cursor for pagination.
  Map<String, String> pageTokens;

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
  String? organizationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeShared;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? includeArchived;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FederatedSearchRequest &&
    other.query == query &&
    _deepEquality.equals(other.platforms, platforms) &&
    other.limit == limit &&
    _deepEquality.equals(other.pageTokens, pageTokens) &&
    other.workspaceId == workspaceId &&
    other.organizationId == organizationId &&
    other.includeShared == includeShared &&
    other.includeArchived == includeArchived;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (query.hashCode) +
    (platforms.hashCode) +
    (limit.hashCode) +
    (pageTokens.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (includeShared == null ? 0 : includeShared!.hashCode) +
    (includeArchived == null ? 0 : includeArchived!.hashCode);

  @override
  String toString() => 'FederatedSearchRequest[query=$query, platforms=$platforms, limit=$limit, pageTokens=$pageTokens, workspaceId=$workspaceId, organizationId=$organizationId, includeShared=$includeShared, includeArchived=$includeArchived]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'query'] = this.query;
      json[r'platforms'] = this.platforms;
      json[r'limit'] = this.limit;
      json[r'page_tokens'] = this.pageTokens;
    if (this.workspaceId != null) {
      json[r'workspace_id'] = this.workspaceId;
    } else {
      json[r'workspace_id'] = null;
    }
    if (this.organizationId != null) {
      json[r'organization_id'] = this.organizationId;
    } else {
      json[r'organization_id'] = null;
    }
    if (this.includeShared != null) {
      json[r'include_shared'] = this.includeShared;
    } else {
      json[r'include_shared'] = null;
    }
    if (this.includeArchived != null) {
      json[r'include_archived'] = this.includeArchived;
    } else {
      json[r'include_archived'] = null;
    }
    return json;
  }

  /// Returns a new [FederatedSearchRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FederatedSearchRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'query'), 'Required key "FederatedSearchRequest[query]" is missing from JSON.');
        assert(json[r'query'] != null, 'Required key "FederatedSearchRequest[query]" has a null value in JSON.');
        return true;
      }());

      return FederatedSearchRequest(
        query: mapValueOfType<String>(json, r'query')!,
        platforms: FederatedSearchRequestPlatformsEnum.listFromJson(json[r'platforms']),
        limit: mapValueOfType<int>(json, r'limit') ?? 25,
        pageTokens: mapCastOfType<String, String>(json, r'page_tokens') ?? const {},
        workspaceId: mapValueOfType<String>(json, r'workspace_id'),
        organizationId: mapValueOfType<String>(json, r'organization_id'),
        includeShared: mapValueOfType<bool>(json, r'include_shared'),
        includeArchived: mapValueOfType<bool>(json, r'include_archived'),
      );
    }
    return null;
  }

  static List<FederatedSearchRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FederatedSearchRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FederatedSearchRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FederatedSearchRequest> mapFromJson(dynamic json) {
    final map = <String, FederatedSearchRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FederatedSearchRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FederatedSearchRequest-objects as value to a dart map
  static Map<String, List<FederatedSearchRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FederatedSearchRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FederatedSearchRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'query',
  };
}


class FederatedSearchRequestPlatformsEnum {
  /// Instantiate a new enum with the provided [value].
  const FederatedSearchRequestPlatformsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const notes = FederatedSearchRequestPlatformsEnum._(r'notes');
  static const tasks = FederatedSearchRequestPlatformsEnum._(r'tasks');
  static const mail = FederatedSearchRequestPlatformsEnum._(r'mail');
  static const calendar = FederatedSearchRequestPlatformsEnum._(r'calendar');
  static const files = FederatedSearchRequestPlatformsEnum._(r'files');

  /// List of all possible values in this [enum][FederatedSearchRequestPlatformsEnum].
  static const values = <FederatedSearchRequestPlatformsEnum>[
    notes,
    tasks,
    mail,
    calendar,
    files,
  ];

  static FederatedSearchRequestPlatformsEnum? fromJson(dynamic value) => FederatedSearchRequestPlatformsEnumTypeTransformer().decode(value);

  static List<FederatedSearchRequestPlatformsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FederatedSearchRequestPlatformsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FederatedSearchRequestPlatformsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FederatedSearchRequestPlatformsEnum] to String,
/// and [decode] dynamic data back to [FederatedSearchRequestPlatformsEnum].
class FederatedSearchRequestPlatformsEnumTypeTransformer {
  factory FederatedSearchRequestPlatformsEnumTypeTransformer() => _instance ??= const FederatedSearchRequestPlatformsEnumTypeTransformer._();

  const FederatedSearchRequestPlatformsEnumTypeTransformer._();

  String encode(FederatedSearchRequestPlatformsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FederatedSearchRequestPlatformsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FederatedSearchRequestPlatformsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'notes': return FederatedSearchRequestPlatformsEnum.notes;
        case r'tasks': return FederatedSearchRequestPlatformsEnum.tasks;
        case r'mail': return FederatedSearchRequestPlatformsEnum.mail;
        case r'calendar': return FederatedSearchRequestPlatformsEnum.calendar;
        case r'files': return FederatedSearchRequestPlatformsEnum.files;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FederatedSearchRequestPlatformsEnumTypeTransformer] instance.
  static FederatedSearchRequestPlatformsEnumTypeTransformer? _instance;
}


