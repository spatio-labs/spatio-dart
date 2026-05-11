//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class Task {
  /// Returns a new [Task] instance.
  Task({
    required this.id,
    this.provider,
    this.accountId,
    this.ownerUserId,
    required this.title,
    this.description,
    this.status,
    required this.completed,
    this.dueDate,
    required this.priority,
    this.labels = const [],
    this.tags = const [],
    this.assigneeId,
    required this.createdAt,
    required this.updatedAt,
    this.completedAt,
    this.parentTaskId,
    this.metadata = const {},
    this.type,
    this.sourcePlatform,
    this.sourceId,
  });

  String id;

  /// Registered provider id (e.g. `native-tasks`, `linear`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ownerUserId;

  String title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Free-form status string. Canonical values across most providers: `todo`, `in_progress`, `in_review`, `backlog`, `done`. The platform falls back to `done` when `completed` is true and `status` is empty, else `todo`. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  bool completed;

  DateTime? dueDate;

  /// Priority bucket. Canonical values (mapped from a 0–4 integer): `none`, `low`, `medium`, `high`, `urgent`. 
  TaskPriorityEnum priority;

  List<String> labels;

  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assigneeId;

  DateTime createdAt;

  DateTime updatedAt;

  DateTime? completedAt;

  /// Parent task id when this is a subtask.
  String? parentTaskId;

  /// Provider-specific extras.
  Map<String, Object> metadata;

  /// Discriminator. Canonical values: `todo`, `reminder`, `issue`. Empty defaults to `todo`. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// When this task was auto-generated from another artifact (e.g. a calendar event reminder), the platform id of that artifact. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourcePlatform;

  /// Source artifact id paired with `sourcePlatform`.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Task &&
    other.id == id &&
    other.provider == provider &&
    other.accountId == accountId &&
    other.ownerUserId == ownerUserId &&
    other.title == title &&
    other.description == description &&
    other.status == status &&
    other.completed == completed &&
    other.dueDate == dueDate &&
    other.priority == priority &&
    _deepEquality.equals(other.labels, labels) &&
    _deepEquality.equals(other.tags, tags) &&
    other.assigneeId == assigneeId &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.completedAt == completedAt &&
    other.parentTaskId == parentTaskId &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.type == type &&
    other.sourcePlatform == sourcePlatform &&
    other.sourceId == sourceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (ownerUserId == null ? 0 : ownerUserId!.hashCode) +
    (title.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (completed.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (priority.hashCode) +
    (labels.hashCode) +
    (tags.hashCode) +
    (assigneeId == null ? 0 : assigneeId!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (parentTaskId == null ? 0 : parentTaskId!.hashCode) +
    (metadata.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (sourcePlatform == null ? 0 : sourcePlatform!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode);

  @override
  String toString() => 'Task[id=$id, provider=$provider, accountId=$accountId, ownerUserId=$ownerUserId, title=$title, description=$description, status=$status, completed=$completed, dueDate=$dueDate, priority=$priority, labels=$labels, tags=$tags, assigneeId=$assigneeId, createdAt=$createdAt, updatedAt=$updatedAt, completedAt=$completedAt, parentTaskId=$parentTaskId, metadata=$metadata, type=$type, sourcePlatform=$sourcePlatform, sourceId=$sourceId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.ownerUserId != null) {
      json[r'ownerUserId'] = this.ownerUserId;
    } else {
      json[r'ownerUserId'] = null;
    }
      json[r'title'] = this.title;
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
      json[r'completed'] = this.completed;
    if (this.dueDate != null) {
      json[r'dueDate'] = this.dueDate!.toUtc().toIso8601String();
    } else {
      json[r'dueDate'] = null;
    }
      json[r'priority'] = this.priority;
      json[r'labels'] = this.labels;
      json[r'tags'] = this.tags;
    if (this.assigneeId != null) {
      json[r'assigneeId'] = this.assigneeId;
    } else {
      json[r'assigneeId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
    if (this.parentTaskId != null) {
      json[r'parentTaskId'] = this.parentTaskId;
    } else {
      json[r'parentTaskId'] = null;
    }
      json[r'metadata'] = this.metadata;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.sourcePlatform != null) {
      json[r'sourcePlatform'] = this.sourcePlatform;
    } else {
      json[r'sourcePlatform'] = null;
    }
    if (this.sourceId != null) {
      json[r'sourceId'] = this.sourceId;
    } else {
      json[r'sourceId'] = null;
    }
    return json;
  }

  /// Returns a new [Task] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Task? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "Task[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "Task[id]" has a null value in JSON.');
        assert(json.containsKey(r'title'), 'Required key "Task[title]" is missing from JSON.');
        assert(json[r'title'] != null, 'Required key "Task[title]" has a null value in JSON.');
        assert(json.containsKey(r'completed'), 'Required key "Task[completed]" is missing from JSON.');
        assert(json[r'completed'] != null, 'Required key "Task[completed]" has a null value in JSON.');
        assert(json.containsKey(r'priority'), 'Required key "Task[priority]" is missing from JSON.');
        assert(json[r'priority'] != null, 'Required key "Task[priority]" has a null value in JSON.');
        assert(json.containsKey(r'createdAt'), 'Required key "Task[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "Task[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'updatedAt'), 'Required key "Task[updatedAt]" is missing from JSON.');
        assert(json[r'updatedAt'] != null, 'Required key "Task[updatedAt]" has a null value in JSON.');
        return true;
      }());

      return Task(
        id: mapValueOfType<String>(json, r'id')!,
        provider: mapValueOfType<String>(json, r'provider'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        ownerUserId: mapValueOfType<String>(json, r'ownerUserId'),
        title: mapValueOfType<String>(json, r'title')!,
        description: mapValueOfType<String>(json, r'description'),
        status: mapValueOfType<String>(json, r'status'),
        completed: mapValueOfType<bool>(json, r'completed')!,
        dueDate: mapDateTime(json, r'dueDate', r''),
        priority: TaskPriorityEnum.fromJson(json[r'priority'])!,
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        assigneeId: mapValueOfType<String>(json, r'assigneeId'),
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
        completedAt: mapDateTime(json, r'completedAt', r''),
        parentTaskId: mapValueOfType<String>(json, r'parentTaskId'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        type: mapValueOfType<String>(json, r'type'),
        sourcePlatform: mapValueOfType<String>(json, r'sourcePlatform'),
        sourceId: mapValueOfType<String>(json, r'sourceId'),
      );
    }
    return null;
  }

  static List<Task> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Task>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Task.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Task> mapFromJson(dynamic json) {
    final map = <String, Task>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Task.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Task-objects as value to a dart map
  static Map<String, List<Task>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Task>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Task.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'completed',
    'priority',
    'createdAt',
    'updatedAt',
  };
}

/// Priority bucket. Canonical values (mapped from a 0–4 integer): `none`, `low`, `medium`, `high`, `urgent`. 
class TaskPriorityEnum {
  /// Instantiate a new enum with the provided [value].
  const TaskPriorityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = TaskPriorityEnum._(r'none');
  static const low = TaskPriorityEnum._(r'low');
  static const medium = TaskPriorityEnum._(r'medium');
  static const high = TaskPriorityEnum._(r'high');
  static const urgent = TaskPriorityEnum._(r'urgent');

  /// List of all possible values in this [enum][TaskPriorityEnum].
  static const values = <TaskPriorityEnum>[
    none,
    low,
    medium,
    high,
    urgent,
  ];

  static TaskPriorityEnum? fromJson(dynamic value) => TaskPriorityEnumTypeTransformer().decode(value);

  static List<TaskPriorityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TaskPriorityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TaskPriorityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TaskPriorityEnum] to String,
/// and [decode] dynamic data back to [TaskPriorityEnum].
class TaskPriorityEnumTypeTransformer {
  factory TaskPriorityEnumTypeTransformer() => _instance ??= const TaskPriorityEnumTypeTransformer._();

  const TaskPriorityEnumTypeTransformer._();

  String encode(TaskPriorityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TaskPriorityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TaskPriorityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'none': return TaskPriorityEnum.none;
        case r'low': return TaskPriorityEnum.low;
        case r'medium': return TaskPriorityEnum.medium;
        case r'high': return TaskPriorityEnum.high;
        case r'urgent': return TaskPriorityEnum.urgent;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TaskPriorityEnumTypeTransformer] instance.
  static TaskPriorityEnumTypeTransformer? _instance;
}


