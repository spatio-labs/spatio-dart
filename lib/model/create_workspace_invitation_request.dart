//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateWorkspaceInvitationRequest {
  /// Returns a new [CreateWorkspaceInvitationRequest] instance.
  CreateWorkspaceInvitationRequest({
    required this.email,
    required this.role,
  });

  String email;

  CreateWorkspaceInvitationRequestRoleEnum role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateWorkspaceInvitationRequest &&
    other.email == email &&
    other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (role.hashCode);

  @override
  String toString() => 'CreateWorkspaceInvitationRequest[email=$email, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'role'] = this.role;
    return json;
  }

  /// Returns a new [CreateWorkspaceInvitationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateWorkspaceInvitationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'email'), 'Required key "CreateWorkspaceInvitationRequest[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "CreateWorkspaceInvitationRequest[email]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "CreateWorkspaceInvitationRequest[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "CreateWorkspaceInvitationRequest[role]" has a null value in JSON.');
        return true;
      }());

      return CreateWorkspaceInvitationRequest(
        email: mapValueOfType<String>(json, r'email')!,
        role: CreateWorkspaceInvitationRequestRoleEnum.fromJson(json[r'role'])!,
      );
    }
    return null;
  }

  static List<CreateWorkspaceInvitationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateWorkspaceInvitationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateWorkspaceInvitationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateWorkspaceInvitationRequest> mapFromJson(dynamic json) {
    final map = <String, CreateWorkspaceInvitationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateWorkspaceInvitationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateWorkspaceInvitationRequest-objects as value to a dart map
  static Map<String, List<CreateWorkspaceInvitationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateWorkspaceInvitationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateWorkspaceInvitationRequest.listFromJson(entry.value, growable: growable,);
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


class CreateWorkspaceInvitationRequestRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateWorkspaceInvitationRequestRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const owner = CreateWorkspaceInvitationRequestRoleEnum._(r'owner');
  static const admin = CreateWorkspaceInvitationRequestRoleEnum._(r'admin');
  static const member = CreateWorkspaceInvitationRequestRoleEnum._(r'member');
  static const guest = CreateWorkspaceInvitationRequestRoleEnum._(r'guest');

  /// List of all possible values in this [enum][CreateWorkspaceInvitationRequestRoleEnum].
  static const values = <CreateWorkspaceInvitationRequestRoleEnum>[
    owner,
    admin,
    member,
    guest,
  ];

  static CreateWorkspaceInvitationRequestRoleEnum? fromJson(dynamic value) => CreateWorkspaceInvitationRequestRoleEnumTypeTransformer().decode(value);

  static List<CreateWorkspaceInvitationRequestRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateWorkspaceInvitationRequestRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateWorkspaceInvitationRequestRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateWorkspaceInvitationRequestRoleEnum] to String,
/// and [decode] dynamic data back to [CreateWorkspaceInvitationRequestRoleEnum].
class CreateWorkspaceInvitationRequestRoleEnumTypeTransformer {
  factory CreateWorkspaceInvitationRequestRoleEnumTypeTransformer() => _instance ??= const CreateWorkspaceInvitationRequestRoleEnumTypeTransformer._();

  const CreateWorkspaceInvitationRequestRoleEnumTypeTransformer._();

  String encode(CreateWorkspaceInvitationRequestRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateWorkspaceInvitationRequestRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateWorkspaceInvitationRequestRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'owner': return CreateWorkspaceInvitationRequestRoleEnum.owner;
        case r'admin': return CreateWorkspaceInvitationRequestRoleEnum.admin;
        case r'member': return CreateWorkspaceInvitationRequestRoleEnum.member;
        case r'guest': return CreateWorkspaceInvitationRequestRoleEnum.guest;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateWorkspaceInvitationRequestRoleEnumTypeTransformer] instance.
  static CreateWorkspaceInvitationRequestRoleEnumTypeTransformer? _instance;
}


