//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class WorkspaceInvitation {
  /// Returns a new [WorkspaceInvitation] instance.
  WorkspaceInvitation({
    required this.id,
    this.workspaceId,
    required this.email,
    required this.role,
    this.expiresAt,
    required this.createdAt,
    this.acceptedAt,
    this.revokedAt,
    this.status,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workspaceId;

  String email;

  String role;

  DateTime? expiresAt;

  DateTime createdAt;

  DateTime? acceptedAt;

  DateTime? revokedAt;

  WorkspaceInvitationStatusEnum? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkspaceInvitation &&
    other.id == id &&
    other.workspaceId == workspaceId &&
    other.email == email &&
    other.role == role &&
    other.expiresAt == expiresAt &&
    other.createdAt == createdAt &&
    other.acceptedAt == acceptedAt &&
    other.revokedAt == revokedAt &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode) +
    (email.hashCode) +
    (role.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (createdAt.hashCode) +
    (acceptedAt == null ? 0 : acceptedAt!.hashCode) +
    (revokedAt == null ? 0 : revokedAt!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'WorkspaceInvitation[id=$id, workspaceId=$workspaceId, email=$email, role=$role, expiresAt=$expiresAt, createdAt=$createdAt, acceptedAt=$acceptedAt, revokedAt=$revokedAt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
      json[r'email'] = this.email;
      json[r'role'] = this.role;
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.acceptedAt != null) {
      json[r'acceptedAt'] = this.acceptedAt!.toUtc().toIso8601String();
    } else {
      json[r'acceptedAt'] = null;
    }
    if (this.revokedAt != null) {
      json[r'revokedAt'] = this.revokedAt!.toUtc().toIso8601String();
    } else {
      json[r'revokedAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [WorkspaceInvitation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkspaceInvitation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "WorkspaceInvitation[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "WorkspaceInvitation[id]" has a null value in JSON.');
        assert(json.containsKey(r'email'), 'Required key "WorkspaceInvitation[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "WorkspaceInvitation[email]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "WorkspaceInvitation[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "WorkspaceInvitation[role]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "WorkspaceInvitation[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "WorkspaceInvitation[createdAt]" has a null value in JSON.');
        return true;
      }());

      return WorkspaceInvitation(
        id: mapValueOfType<String>(json, r'id')!,
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
        email: mapValueOfType<String>(json, r'email')!,
        role: mapValueOfType<String>(json, r'role')!,
        expiresAt: mapDateTime(json, r'expiresAt', r''),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        acceptedAt: mapDateTime(json, r'acceptedAt', r''),
        revokedAt: mapDateTime(json, r'revokedAt', r''),
        status: WorkspaceInvitationStatusEnum.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<WorkspaceInvitation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkspaceInvitation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkspaceInvitation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkspaceInvitation> mapFromJson(dynamic json) {
    final map = <String, WorkspaceInvitation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkspaceInvitation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkspaceInvitation-objects as value to a dart map
  static Map<String, List<WorkspaceInvitation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkspaceInvitation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkspaceInvitation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'email',
    'role',
    'createdAt',
  };
}


class WorkspaceInvitationStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const WorkspaceInvitationStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = WorkspaceInvitationStatusEnum._(r'pending');
  static const accepted = WorkspaceInvitationStatusEnum._(r'accepted');
  static const revoked = WorkspaceInvitationStatusEnum._(r'revoked');
  static const expired = WorkspaceInvitationStatusEnum._(r'expired');

  /// List of all possible values in this [enum][WorkspaceInvitationStatusEnum].
  static const values = <WorkspaceInvitationStatusEnum>[
    pending,
    accepted,
    revoked,
    expired,
  ];

  static WorkspaceInvitationStatusEnum? fromJson(dynamic value) => WorkspaceInvitationStatusEnumTypeTransformer().decode(value);

  static List<WorkspaceInvitationStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkspaceInvitationStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkspaceInvitationStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WorkspaceInvitationStatusEnum] to String,
/// and [decode] dynamic data back to [WorkspaceInvitationStatusEnum].
class WorkspaceInvitationStatusEnumTypeTransformer {
  factory WorkspaceInvitationStatusEnumTypeTransformer() => _instance ??= const WorkspaceInvitationStatusEnumTypeTransformer._();

  const WorkspaceInvitationStatusEnumTypeTransformer._();

  String encode(WorkspaceInvitationStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WorkspaceInvitationStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WorkspaceInvitationStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return WorkspaceInvitationStatusEnum.pending;
        case r'accepted': return WorkspaceInvitationStatusEnum.accepted;
        case r'revoked': return WorkspaceInvitationStatusEnum.revoked;
        case r'expired': return WorkspaceInvitationStatusEnum.expired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WorkspaceInvitationStatusEnumTypeTransformer] instance.
  static WorkspaceInvitationStatusEnumTypeTransformer? _instance;
}


