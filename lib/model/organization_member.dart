//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class OrganizationMember {
  /// Returns a new [OrganizationMember] instance.
  OrganizationMember({
    required this.id,
    required this.userId,
    required this.role,
    required this.joinedAt,
    this.invitedBy,
    this.user = const {},
  });

  /// `OrganizationMember` row id.
  String id;

  String userId;

  OrganizationMemberRoleEnum role;

  DateTime joinedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OrganizationMemberInvitedBy? invitedBy;

  /// Embedded user-profile fields (id, email, name, profilePhoto, ...).
  Map<String, Object> user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationMember &&
    other.id == id &&
    other.userId == userId &&
    other.role == role &&
    other.joinedAt == joinedAt &&
    other.invitedBy == invitedBy &&
    _deepEquality.equals(other.user, user);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (role.hashCode) +
    (joinedAt.hashCode) +
    (invitedBy == null ? 0 : invitedBy!.hashCode) +
    (user.hashCode);

  @override
  String toString() => 'OrganizationMember[id=$id, userId=$userId, role=$role, joinedAt=$joinedAt, invitedBy=$invitedBy, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'role'] = this.role;
      json[r'joinedAt'] = this.joinedAt.toUtc().toIso8601String();
    if (this.invitedBy != null) {
      json[r'invitedBy'] = this.invitedBy;
    } else {
      json[r'invitedBy'] = null;
    }
      json[r'user'] = this.user;
    return json;
  }

  /// Returns a new [OrganizationMember] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrganizationMember? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "OrganizationMember[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "OrganizationMember[id]" has a null value in JSON.');
        assert(json.containsKey(r'userId'), 'Required key "OrganizationMember[userId]" is missing from JSON.');
        assert(json[r'userId'] != null, 'Required key "OrganizationMember[userId]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "OrganizationMember[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "OrganizationMember[role]" has a null value in JSON.');
        assert(json.containsKey(r'joinedAt'), 'Required key "OrganizationMember[joinedAt]" is missing from JSON.');
        assert(json[r'joinedAt'] != null, 'Required key "OrganizationMember[joinedAt]" has a null value in JSON.');
        return true;
      }());

      return OrganizationMember(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        role: OrganizationMemberRoleEnum.fromJson(json[r'role'])!,
        joinedAt: mapDateTime(json, r'joinedAt', r'')!,
        invitedBy: OrganizationMemberInvitedBy.fromJson(json[r'invitedBy']),
        user: mapCastOfType<String, Object>(json, r'user') ?? const {},
      );
    }
    return null;
  }

  static List<OrganizationMember> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrganizationMember>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrganizationMember.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrganizationMember> mapFromJson(dynamic json) {
    final map = <String, OrganizationMember>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrganizationMember.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrganizationMember-objects as value to a dart map
  static Map<String, List<OrganizationMember>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrganizationMember>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrganizationMember.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'role',
    'joinedAt',
  };
}


class OrganizationMemberRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const OrganizationMemberRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const owner = OrganizationMemberRoleEnum._(r'owner');
  static const admin = OrganizationMemberRoleEnum._(r'admin');
  static const billingAdmin = OrganizationMemberRoleEnum._(r'billing_admin');
  static const member = OrganizationMemberRoleEnum._(r'member');

  /// List of all possible values in this [enum][OrganizationMemberRoleEnum].
  static const values = <OrganizationMemberRoleEnum>[
    owner,
    admin,
    billingAdmin,
    member,
  ];

  static OrganizationMemberRoleEnum? fromJson(dynamic value) => OrganizationMemberRoleEnumTypeTransformer().decode(value);

  static List<OrganizationMemberRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrganizationMemberRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrganizationMemberRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OrganizationMemberRoleEnum] to String,
/// and [decode] dynamic data back to [OrganizationMemberRoleEnum].
class OrganizationMemberRoleEnumTypeTransformer {
  factory OrganizationMemberRoleEnumTypeTransformer() => _instance ??= const OrganizationMemberRoleEnumTypeTransformer._();

  const OrganizationMemberRoleEnumTypeTransformer._();

  String encode(OrganizationMemberRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrganizationMemberRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrganizationMemberRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'owner': return OrganizationMemberRoleEnum.owner;
        case r'admin': return OrganizationMemberRoleEnum.admin;
        case r'billing_admin': return OrganizationMemberRoleEnum.billingAdmin;
        case r'member': return OrganizationMemberRoleEnum.member;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OrganizationMemberRoleEnumTypeTransformer] instance.
  static OrganizationMemberRoleEnumTypeTransformer? _instance;
}


