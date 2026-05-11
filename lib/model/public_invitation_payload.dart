//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class PublicInvitationPayload {
  /// Returns a new [PublicInvitationPayload] instance.
  PublicInvitationPayload({
    required this.kind,
    required this.id,
    this.workspaceId,
    this.organizationId,
    required this.email,
    required this.role,
    required this.status,
    this.expiresAt,
    this.createdAt,
    this.workspace = const {},
    this.organization = const {},
    this.invitedBy = const {},
  });

  PublicInvitationPayloadKindEnum kind;

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
  String? organizationId;

  String email;

  String role;

  PublicInvitationPayloadStatusEnum status;

  DateTime? expiresAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  Map<String, Object> workspace;

  Map<String, Object> organization;

  Map<String, Object> invitedBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicInvitationPayload &&
    other.kind == kind &&
    other.id == id &&
    other.workspaceId == workspaceId &&
    other.organizationId == organizationId &&
    other.email == email &&
    other.role == role &&
    other.status == status &&
    other.expiresAt == expiresAt &&
    other.createdAt == createdAt &&
    _deepEquality.equals(other.workspace, workspace) &&
    _deepEquality.equals(other.organization, organization) &&
    _deepEquality.equals(other.invitedBy, invitedBy);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kind.hashCode) +
    (id.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (email.hashCode) +
    (role.hashCode) +
    (status.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (workspace.hashCode) +
    (organization.hashCode) +
    (invitedBy.hashCode);

  @override
  String toString() => 'PublicInvitationPayload[kind=$kind, id=$id, workspaceId=$workspaceId, organizationId=$organizationId, email=$email, role=$role, status=$status, expiresAt=$expiresAt, createdAt=$createdAt, workspace=$workspace, organization=$organization, invitedBy=$invitedBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kind'] = this.kind;
      json[r'id'] = this.id;
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
    if (this.organizationId != null) {
      json[r'organizationId'] = this.organizationId;
    } else {
      json[r'organizationId'] = null;
    }
      json[r'email'] = this.email;
      json[r'role'] = this.role;
      json[r'status'] = this.status;
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
      json[r'workspace'] = this.workspace;
      json[r'organization'] = this.organization;
      json[r'invitedBy'] = this.invitedBy;
    return json;
  }

  /// Returns a new [PublicInvitationPayload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicInvitationPayload? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'kind'), 'Required key "PublicInvitationPayload[kind]" is missing from JSON.');
        assert(json[r'kind'] != null, 'Required key "PublicInvitationPayload[kind]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "PublicInvitationPayload[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "PublicInvitationPayload[id]" has a null value in JSON.');
        assert(json.containsKey(r'email'), 'Required key "PublicInvitationPayload[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "PublicInvitationPayload[email]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "PublicInvitationPayload[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "PublicInvitationPayload[role]" has a null value in JSON.');
        assert(json.containsKey(r'status'), 'Required key "PublicInvitationPayload[status]" is missing from JSON.');
        assert(json[r'status'] != null, 'Required key "PublicInvitationPayload[status]" has a null value in JSON.');
        return true;
      }());

      return PublicInvitationPayload(
        kind: PublicInvitationPayloadKindEnum.fromJson(json[r'kind'])!,
        id: mapValueOfType<String>(json, r'id')!,
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
        organizationId: mapValueOfType<String>(json, r'organizationId'),
        email: mapValueOfType<String>(json, r'email')!,
        role: mapValueOfType<String>(json, r'role')!,
        status: PublicInvitationPayloadStatusEnum.fromJson(json[r'status'])!,
        expiresAt: mapDateTime(json, r'expiresAt', r''),
        createdAt: mapDateTime(json, r'createdAt', r''),
        workspace: mapCastOfType<String, Object>(json, r'workspace') ?? const {},
        organization: mapCastOfType<String, Object>(json, r'organization') ?? const {},
        invitedBy: mapCastOfType<String, Object>(json, r'invitedBy') ?? const {},
      );
    }
    return null;
  }

  static List<PublicInvitationPayload> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicInvitationPayload>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicInvitationPayload.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicInvitationPayload> mapFromJson(dynamic json) {
    final map = <String, PublicInvitationPayload>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicInvitationPayload.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicInvitationPayload-objects as value to a dart map
  static Map<String, List<PublicInvitationPayload>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicInvitationPayload>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicInvitationPayload.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kind',
    'id',
    'email',
    'role',
    'status',
  };
}


class PublicInvitationPayloadKindEnum {
  /// Instantiate a new enum with the provided [value].
  const PublicInvitationPayloadKindEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const workspace = PublicInvitationPayloadKindEnum._(r'workspace');
  static const organization = PublicInvitationPayloadKindEnum._(r'organization');

  /// List of all possible values in this [enum][PublicInvitationPayloadKindEnum].
  static const values = <PublicInvitationPayloadKindEnum>[
    workspace,
    organization,
  ];

  static PublicInvitationPayloadKindEnum? fromJson(dynamic value) => PublicInvitationPayloadKindEnumTypeTransformer().decode(value);

  static List<PublicInvitationPayloadKindEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicInvitationPayloadKindEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicInvitationPayloadKindEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PublicInvitationPayloadKindEnum] to String,
/// and [decode] dynamic data back to [PublicInvitationPayloadKindEnum].
class PublicInvitationPayloadKindEnumTypeTransformer {
  factory PublicInvitationPayloadKindEnumTypeTransformer() => _instance ??= const PublicInvitationPayloadKindEnumTypeTransformer._();

  const PublicInvitationPayloadKindEnumTypeTransformer._();

  String encode(PublicInvitationPayloadKindEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PublicInvitationPayloadKindEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PublicInvitationPayloadKindEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'workspace': return PublicInvitationPayloadKindEnum.workspace;
        case r'organization': return PublicInvitationPayloadKindEnum.organization;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PublicInvitationPayloadKindEnumTypeTransformer] instance.
  static PublicInvitationPayloadKindEnumTypeTransformer? _instance;
}



class PublicInvitationPayloadStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const PublicInvitationPayloadStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = PublicInvitationPayloadStatusEnum._(r'pending');
  static const accepted = PublicInvitationPayloadStatusEnum._(r'accepted');
  static const revoked = PublicInvitationPayloadStatusEnum._(r'revoked');
  static const expired = PublicInvitationPayloadStatusEnum._(r'expired');

  /// List of all possible values in this [enum][PublicInvitationPayloadStatusEnum].
  static const values = <PublicInvitationPayloadStatusEnum>[
    pending,
    accepted,
    revoked,
    expired,
  ];

  static PublicInvitationPayloadStatusEnum? fromJson(dynamic value) => PublicInvitationPayloadStatusEnumTypeTransformer().decode(value);

  static List<PublicInvitationPayloadStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicInvitationPayloadStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicInvitationPayloadStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PublicInvitationPayloadStatusEnum] to String,
/// and [decode] dynamic data back to [PublicInvitationPayloadStatusEnum].
class PublicInvitationPayloadStatusEnumTypeTransformer {
  factory PublicInvitationPayloadStatusEnumTypeTransformer() => _instance ??= const PublicInvitationPayloadStatusEnumTypeTransformer._();

  const PublicInvitationPayloadStatusEnumTypeTransformer._();

  String encode(PublicInvitationPayloadStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PublicInvitationPayloadStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PublicInvitationPayloadStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return PublicInvitationPayloadStatusEnum.pending;
        case r'accepted': return PublicInvitationPayloadStatusEnum.accepted;
        case r'revoked': return PublicInvitationPayloadStatusEnum.revoked;
        case r'expired': return PublicInvitationPayloadStatusEnum.expired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PublicInvitationPayloadStatusEnumTypeTransformer] instance.
  static PublicInvitationPayloadStatusEnumTypeTransformer? _instance;
}


