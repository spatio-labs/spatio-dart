//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AddWorkspaceMemberRequest {
  /// Returns a new [AddWorkspaceMemberRequest] instance.
  AddWorkspaceMemberRequest({
    required this.email,
    required this.role,
  });

  String email;

  AddWorkspaceMemberRequestRoleEnum role;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AddWorkspaceMemberRequest &&
    other.email == email &&
    other.role == role;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (role.hashCode);

  @override
  String toString() => 'AddWorkspaceMemberRequest[email=$email, role=$role]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'role'] = this.role;
    return json;
  }

  /// Returns a new [AddWorkspaceMemberRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AddWorkspaceMemberRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'email'), 'Required key "AddWorkspaceMemberRequest[email]" is missing from JSON.');
        assert(json[r'email'] != null, 'Required key "AddWorkspaceMemberRequest[email]" has a null value in JSON.');
        assert(json.containsKey(r'role'), 'Required key "AddWorkspaceMemberRequest[role]" is missing from JSON.');
        assert(json[r'role'] != null, 'Required key "AddWorkspaceMemberRequest[role]" has a null value in JSON.');
        return true;
      }());

      return AddWorkspaceMemberRequest(
        email: mapValueOfType<String>(json, r'email')!,
        role: AddWorkspaceMemberRequestRoleEnum.fromJson(json[r'role'])!,
      );
    }
    return null;
  }

  static List<AddWorkspaceMemberRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddWorkspaceMemberRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddWorkspaceMemberRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AddWorkspaceMemberRequest> mapFromJson(dynamic json) {
    final map = <String, AddWorkspaceMemberRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AddWorkspaceMemberRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AddWorkspaceMemberRequest-objects as value to a dart map
  static Map<String, List<AddWorkspaceMemberRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AddWorkspaceMemberRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AddWorkspaceMemberRequest.listFromJson(entry.value, growable: growable,);
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


class AddWorkspaceMemberRequestRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const AddWorkspaceMemberRequestRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const owner = AddWorkspaceMemberRequestRoleEnum._(r'owner');
  static const admin = AddWorkspaceMemberRequestRoleEnum._(r'admin');
  static const member = AddWorkspaceMemberRequestRoleEnum._(r'member');
  static const guest = AddWorkspaceMemberRequestRoleEnum._(r'guest');

  /// List of all possible values in this [enum][AddWorkspaceMemberRequestRoleEnum].
  static const values = <AddWorkspaceMemberRequestRoleEnum>[
    owner,
    admin,
    member,
    guest,
  ];

  static AddWorkspaceMemberRequestRoleEnum? fromJson(dynamic value) => AddWorkspaceMemberRequestRoleEnumTypeTransformer().decode(value);

  static List<AddWorkspaceMemberRequestRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AddWorkspaceMemberRequestRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AddWorkspaceMemberRequestRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AddWorkspaceMemberRequestRoleEnum] to String,
/// and [decode] dynamic data back to [AddWorkspaceMemberRequestRoleEnum].
class AddWorkspaceMemberRequestRoleEnumTypeTransformer {
  factory AddWorkspaceMemberRequestRoleEnumTypeTransformer() => _instance ??= const AddWorkspaceMemberRequestRoleEnumTypeTransformer._();

  const AddWorkspaceMemberRequestRoleEnumTypeTransformer._();

  String encode(AddWorkspaceMemberRequestRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AddWorkspaceMemberRequestRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AddWorkspaceMemberRequestRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'owner': return AddWorkspaceMemberRequestRoleEnum.owner;
        case r'admin': return AddWorkspaceMemberRequestRoleEnum.admin;
        case r'member': return AddWorkspaceMemberRequestRoleEnum.member;
        case r'guest': return AddWorkspaceMemberRequestRoleEnum.guest;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AddWorkspaceMemberRequestRoleEnumTypeTransformer] instance.
  static AddWorkspaceMemberRequestRoleEnumTypeTransformer? _instance;
}


