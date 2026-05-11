//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class OrganizationInvitation {
  /// Returns a new [OrganizationInvitation] instance.
  OrganizationInvitation({
    required this.id,
    this.organizationId,
    required this.email,
    required this.role,
    this.token,
    this.expiresAt,
    required this.createdAt,
    this.acceptedAt,
    this.revokedAt,
    this.invitedBy,
    this.status,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? organizationId;

  String email;

  String role;

  /// Opaque invitation token (omitted on list responses).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token;

  DateTime? expiresAt;

  DateTime createdAt;

  DateTime? acceptedAt;

  DateTime? revokedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrganizationMemberInvitedBy? invitedBy;

  OrganizationInvitationStatusEnum? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationInvitation &&
    other.id == id &&
    other.organizationId == organizationId &&
    other.email == email &&
    other.role == role &&
    other.token == token &&
    other.expiresAt == expiresAt &&
    other.createdAt == createdAt &&
    other.acceptedAt == acceptedAt &&
    other.revokedAt == revokedAt &&
    other.invitedBy == invitedBy &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (email.hashCode) +
    (role.hashCode) +
    (token == null ? 0 : token!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (createdAt.hashCode) +
    (acceptedAt == null ? 0 : acceptedAt!.hashCode) +
    (revokedAt == null ? 0 : revokedAt!.hashCode) +
    (invitedBy == null ? 0 : invitedBy!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'OrganizationInvitation[id=$id, organizationId=$organizationId, email=$email, role=$role, token=$token, expiresAt=$expiresAt, createdAt=$createdAt, acceptedAt=$acceptedAt, revokedAt=$revokedAt, invitedBy=$invitedBy, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.organizationId != null) {
      json[r'organizationId'] = this.organizationId;
    } else {
      json[r'organizationId'] = null;
    }
      json[r'email'] = this.email;
      json[r'role'] = this.role;
    if (this.token != null) {
      json[r'token'] = this.token;
    } else {
      json[r'token'] = null;
    }
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
    if (this.invitedBy != null) {
      json[r'invitedBy'] = this.invitedBy;
    } else {
      json[r'invitedBy'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [OrganizationInvitation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationInvitation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "OrganizationInvitation[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "OrganizationInvitation[id]" has a null value in JSON.');
        assert(json.containsKey(r'email'), 'Required key "OrganizationInvitation[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "OrganizationInvitation[email]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "OrganizationInvitation[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "OrganizationInvitation[role]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "OrganizationInvitation[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "OrganizationInvitation[createdAt]" has a null value in JSON.');
        return true;
      }());

      return OrganizationInvitation(
        id: mapValueOfType<String>(json, r'id')!,
        organizationId: mapValueOfType<String>(json, r'organizationId'),
        email: mapValueOfType<String>(json, r'email')!,
        role: mapValueOfType<String>(json, r'role')!,
        token: mapValueOfType<String>(json, r'token'),
        expiresAt: mapDateTime(json, r'expiresAt', r''),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        acceptedAt: mapDateTime(json, r'acceptedAt', r''),
        revokedAt: mapDateTime(json, r'revokedAt', r''),
        invitedBy: OrganizationMemberInvitedBy.fromJson(json[r'invitedBy']),
        status: OrganizationInvitationStatusEnum.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<OrganizationInvitation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrganizationInvitation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrganizationInvitation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrganizationInvitation> mapFromJson(dynamic json) {
    final map = <String, OrganizationInvitation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrganizationInvitation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrganizationInvitation-objects as value to a dart map
  static Map<String, List<OrganizationInvitation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrganizationInvitation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrganizationInvitation.listFromJson(entry.value, growable: growable,);
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


class OrganizationInvitationStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const OrganizationInvitationStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const pending = OrganizationInvitationStatusEnum._(r'pending');
  static const accepted = OrganizationInvitationStatusEnum._(r'accepted');
  static const revoked = OrganizationInvitationStatusEnum._(r'revoked');
  static const expired = OrganizationInvitationStatusEnum._(r'expired');

  /// List of all possible values in this [enum][OrganizationInvitationStatusEnum].
  static const values = <OrganizationInvitationStatusEnum>[
    pending,
    accepted,
    revoked,
    expired,
  ];

  static OrganizationInvitationStatusEnum? fromJson(dynamic value) => OrganizationInvitationStatusEnumTypeTransformer().decode(value);

  static List<OrganizationInvitationStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrganizationInvitationStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrganizationInvitationStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrganizationInvitationStatusEnum] to String,
/// and [decode] dynamic data back to [OrganizationInvitationStatusEnum].
class OrganizationInvitationStatusEnumTypeTransformer {
  factory OrganizationInvitationStatusEnumTypeTransformer() => _instance ??= const OrganizationInvitationStatusEnumTypeTransformer._();

  const OrganizationInvitationStatusEnumTypeTransformer._();

  String encode(OrganizationInvitationStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrganizationInvitationStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrganizationInvitationStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'pending': return OrganizationInvitationStatusEnum.pending;
        case r'accepted': return OrganizationInvitationStatusEnum.accepted;
        case r'revoked': return OrganizationInvitationStatusEnum.revoked;
        case r'expired': return OrganizationInvitationStatusEnum.expired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrganizationInvitationStatusEnumTypeTransformer] instance.
  static OrganizationInvitationStatusEnumTypeTransformer? _instance;
}


