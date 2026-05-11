//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateWorkspaceMemberRequest {
  /// Returns a new [UpdateWorkspaceMemberRequest] instance.
  UpdateWorkspaceMemberRequest({
    required this.role,
  });

  UpdateWorkspaceMemberRequestRoleEnum role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateWorkspaceMemberRequest &&
    other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (role.hashCode);

  @override
  String toString() => 'UpdateWorkspaceMemberRequest[role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'role'] = this.role;
    return json;
  }

  /// Returns a new [UpdateWorkspaceMemberRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateWorkspaceMemberRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'role'), 'Required key "UpdateWorkspaceMemberRequest[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "UpdateWorkspaceMemberRequest[role]" has a null value in JSON.');
        return true;
      }());

      return UpdateWorkspaceMemberRequest(
        role: UpdateWorkspaceMemberRequestRoleEnum.fromJson(json[r'role'])!,
      );
    }
    return null;
  }

  static List<UpdateWorkspaceMemberRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateWorkspaceMemberRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateWorkspaceMemberRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateWorkspaceMemberRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateWorkspaceMemberRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateWorkspaceMemberRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateWorkspaceMemberRequest-objects as value to a dart map
  static Map<String, List<UpdateWorkspaceMemberRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateWorkspaceMemberRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateWorkspaceMemberRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'role',
  };
}


class UpdateWorkspaceMemberRequestRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateWorkspaceMemberRequestRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const owner = UpdateWorkspaceMemberRequestRoleEnum._(r'owner');
  static const admin = UpdateWorkspaceMemberRequestRoleEnum._(r'admin');
  static const member = UpdateWorkspaceMemberRequestRoleEnum._(r'member');
  static const guest = UpdateWorkspaceMemberRequestRoleEnum._(r'guest');

  /// List of all possible values in this [enum][UpdateWorkspaceMemberRequestRoleEnum].
  static const values = <UpdateWorkspaceMemberRequestRoleEnum>[
    owner,
    admin,
    member,
    guest,
  ];

  static UpdateWorkspaceMemberRequestRoleEnum? fromJson(dynamic value) => UpdateWorkspaceMemberRequestRoleEnumTypeTransformer().decode(value);

  static List<UpdateWorkspaceMemberRequestRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateWorkspaceMemberRequestRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateWorkspaceMemberRequestRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateWorkspaceMemberRequestRoleEnum] to String,
/// and [decode] dynamic data back to [UpdateWorkspaceMemberRequestRoleEnum].
class UpdateWorkspaceMemberRequestRoleEnumTypeTransformer {
  factory UpdateWorkspaceMemberRequestRoleEnumTypeTransformer() => _instance ??= const UpdateWorkspaceMemberRequestRoleEnumTypeTransformer._();

  const UpdateWorkspaceMemberRequestRoleEnumTypeTransformer._();

  String encode(UpdateWorkspaceMemberRequestRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateWorkspaceMemberRequestRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateWorkspaceMemberRequestRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'owner': return UpdateWorkspaceMemberRequestRoleEnum.owner;
        case r'admin': return UpdateWorkspaceMemberRequestRoleEnum.admin;
        case r'member': return UpdateWorkspaceMemberRequestRoleEnum.member;
        case r'guest': return UpdateWorkspaceMemberRequestRoleEnum.guest;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateWorkspaceMemberRequestRoleEnumTypeTransformer] instance.
  static UpdateWorkspaceMemberRequestRoleEnumTypeTransformer? _instance;
}


