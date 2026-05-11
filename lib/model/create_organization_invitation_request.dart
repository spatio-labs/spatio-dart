//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateOrganizationInvitationRequest {
  /// Returns a new [CreateOrganizationInvitationRequest] instance.
  CreateOrganizationInvitationRequest({
    required this.email,
    required this.role,
    this.workspaceId,
  });

  String email;

  CreateOrganizationInvitationRequestRoleEnum role;

  /// Optional — the invitee will also be added to this workspace on accept. Defaults to the org's default workspace. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workspaceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateOrganizationInvitationRequest &&
    other.email == email &&
    other.role == role &&
    other.workspaceId == workspaceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (role.hashCode) +
    (workspaceId == null ? 0 : workspaceId!.hashCode);

  @override
  String toString() => 'CreateOrganizationInvitationRequest[email=$email, role=$role, workspaceId=$workspaceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'role'] = this.role;
    if (this.workspaceId != null) {
      json[r'workspaceId'] = this.workspaceId;
    } else {
      json[r'workspaceId'] = null;
    }
    return json;
  }

  /// Returns a new [CreateOrganizationInvitationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateOrganizationInvitationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'email'), 'Required key "CreateOrganizationInvitationRequest[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "CreateOrganizationInvitationRequest[email]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "CreateOrganizationInvitationRequest[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "CreateOrganizationInvitationRequest[role]" has a null value in JSON.');
        return true;
      }());

      return CreateOrganizationInvitationRequest(
        email: mapValueOfType<String>(json, r'email')!,
        role: CreateOrganizationInvitationRequestRoleEnum.fromJson(json[r'role'])!,
        workspaceId: mapValueOfType<String>(json, r'workspaceId'),
      );
    }
    return null;
  }

  static List<CreateOrganizationInvitationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateOrganizationInvitationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateOrganizationInvitationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateOrganizationInvitationRequest> mapFromJson(dynamic json) {
    final map = <String, CreateOrganizationInvitationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateOrganizationInvitationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateOrganizationInvitationRequest-objects as value to a dart map
  static Map<String, List<CreateOrganizationInvitationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateOrganizationInvitationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateOrganizationInvitationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'role',
  };
}


class CreateOrganizationInvitationRequestRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateOrganizationInvitationRequestRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const owner = CreateOrganizationInvitationRequestRoleEnum._(r'owner');
  static const admin = CreateOrganizationInvitationRequestRoleEnum._(r'admin');
  static const billingAdmin = CreateOrganizationInvitationRequestRoleEnum._(r'billing_admin');
  static const member = CreateOrganizationInvitationRequestRoleEnum._(r'member');

  /// List of all possible values in this [enum][CreateOrganizationInvitationRequestRoleEnum].
  static const values = <CreateOrganizationInvitationRequestRoleEnum>[
    owner,
    admin,
    billingAdmin,
    member,
  ];

  static CreateOrganizationInvitationRequestRoleEnum? fromJson(dynamic value) => CreateOrganizationInvitationRequestRoleEnumTypeTransformer().decode(value);

  static List<CreateOrganizationInvitationRequestRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateOrganizationInvitationRequestRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateOrganizationInvitationRequestRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateOrganizationInvitationRequestRoleEnum] to String,
/// and [decode] dynamic data back to [CreateOrganizationInvitationRequestRoleEnum].
class CreateOrganizationInvitationRequestRoleEnumTypeTransformer {
  factory CreateOrganizationInvitationRequestRoleEnumTypeTransformer() => _instance ??= const CreateOrganizationInvitationRequestRoleEnumTypeTransformer._();

  const CreateOrganizationInvitationRequestRoleEnumTypeTransformer._();

  String encode(CreateOrganizationInvitationRequestRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateOrganizationInvitationRequestRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateOrganizationInvitationRequestRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'owner': return CreateOrganizationInvitationRequestRoleEnum.owner;
        case r'admin': return CreateOrganizationInvitationRequestRoleEnum.admin;
        case r'billing_admin': return CreateOrganizationInvitationRequestRoleEnum.billingAdmin;
        case r'member': return CreateOrganizationInvitationRequestRoleEnum.member;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateOrganizationInvitationRequestRoleEnumTypeTransformer] instance.
  static CreateOrganizationInvitationRequestRoleEnumTypeTransformer? _instance;
}


