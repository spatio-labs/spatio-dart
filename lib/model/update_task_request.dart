//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class UpdateTaskRequest {
  /// Returns a new [UpdateTaskRequest] instance.
  UpdateTaskRequest({
    this.title,
    this.description,
    this.status,
    this.dueDate,
    this.priority,
    this.labels = const [],
    this.tags = const [],
    this.assigneeId,
    this.parentTaskId,
  });

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
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  DateTime? dueDate;

  UpdateTaskRequestPriorityEnum? priority;

  List<String> labels;

  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assigneeId;

  String? parentTaskId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateTaskRequest &&
    other.title == title &&
    other.description == description &&
    other.status == status &&
    other.dueDate == dueDate &&
    other.priority == priority &&
    _deepEquality.equals(other.labels, labels) &&
    _deepEquality.equals(other.tags, tags) &&
    other.assigneeId == assigneeId &&
    other.parentTaskId == parentTaskId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (labels.hashCode) +
    (tags.hashCode) +
    (assigneeId == null ? 0 : assigneeId!.hashCode) +
    (parentTaskId == null ? 0 : parentTaskId!.hashCode);

  @override
  String toString() => 'UpdateTaskRequest[title=$title, description=$description, status=$status, dueDate=$dueDate, priority=$priority, labels=$labels, tags=$tags, assigneeId=$assigneeId, parentTaskId=$parentTaskId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.dueDate != null) {
      json[r'dueDate'] = this.dueDate!.toUtc().toIso8601String();
    } else {
      json[r'dueDate'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
      json[r'labels'] = this.labels;
      json[r'tags'] = this.tags;
    if (this.assigneeId != null) {
      json[r'assigneeId'] = this.assigneeId;
    } else {
      json[r'assigneeId'] = null;
    }
    if (this.parentTaskId != null) {
      json[r'parentTaskId'] = this.parentTaskId;
    } else {
      json[r'parentTaskId'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateTaskRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateTaskRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UpdateTaskRequest(
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        status: mapValueOfType<String>(json, r'status'),
        dueDate: mapDateTime(json, r'dueDate', r''),
        priority: UpdateTaskRequestPriorityEnum.fromJson(json[r'priority']),
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        assigneeId: mapValueOfType<String>(json, r'assigneeId'),
        parentTaskId: mapValueOfType<String>(json, r'parentTaskId'),
      );
    }
    return null;
  }

  static List<UpdateTaskRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateTaskRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateTaskRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateTaskRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateTaskRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateTaskRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateTaskRequest-objects as value to a dart map
  static Map<String, List<UpdateTaskRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateTaskRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateTaskRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class UpdateTaskRequestPriorityEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateTaskRequestPriorityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = UpdateTaskRequestPriorityEnum._(r'none');
  static const low = UpdateTaskRequestPriorityEnum._(r'low');
  static const medium = UpdateTaskRequestPriorityEnum._(r'medium');
  static const high = UpdateTaskRequestPriorityEnum._(r'high');
  static const urgent = UpdateTaskRequestPriorityEnum._(r'urgent');

  /// List of all possible values in this [enum][UpdateTaskRequestPriorityEnum].
  static const values = <UpdateTaskRequestPriorityEnum>[
    none,
    low,
    medium,
    high,
    urgent,
  ];

  static UpdateTaskRequestPriorityEnum? fromJson(dynamic value) => UpdateTaskRequestPriorityEnumTypeTransformer().decode(value);

  static List<UpdateTaskRequestPriorityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateTaskRequestPriorityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateTaskRequestPriorityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateTaskRequestPriorityEnum] to String,
/// and [decode] dynamic data back to [UpdateTaskRequestPriorityEnum].
class UpdateTaskRequestPriorityEnumTypeTransformer {
  factory UpdateTaskRequestPriorityEnumTypeTransformer() => _instance ??= const UpdateTaskRequestPriorityEnumTypeTransformer._();

  const UpdateTaskRequestPriorityEnumTypeTransformer._();

  String encode(UpdateTaskRequestPriorityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateTaskRequestPriorityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateTaskRequestPriorityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'none': return UpdateTaskRequestPriorityEnum.none;
        case r'low': return UpdateTaskRequestPriorityEnum.low;
        case r'medium': return UpdateTaskRequestPriorityEnum.medium;
        case r'high': return UpdateTaskRequestPriorityEnum.high;
        case r'urgent': return UpdateTaskRequestPriorityEnum.urgent;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateTaskRequestPriorityEnumTypeTransformer] instance.
  static UpdateTaskRequestPriorityEnumTypeTransformer? _instance;
}


