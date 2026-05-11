//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class CreateTaskRequest {
  /// Returns a new [CreateTaskRequest] instance.
  CreateTaskRequest({
    required this.title,
    this.description,
    this.status,
    this.dueDate,
    this.priority,
    this.labels = const [],
    this.tags = const [],
    this.assigneeId,
    this.parentTaskId,
    this.type,
    this.sourcePlatform,
    this.sourceId,
    this.accountId,
    this.provider,
  });

  String title;

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

  CreateTaskRequestPriorityEnum? priority;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourcePlatform;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceId;

  /// Optional override for the target connected account. May also be passed as `?accountId=`. 
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
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateTaskRequest &&
    other.title == title &&
    other.description == description &&
    other.status == status &&
    other.dueDate == dueDate &&
    other.priority == priority &&
    _deepEquality.equals(other.labels, labels) &&
    _deepEquality.equals(other.tags, tags) &&
    other.assigneeId == assigneeId &&
    other.parentTaskId == parentTaskId &&
    other.type == type &&
    other.sourcePlatform == sourcePlatform &&
    other.sourceId == sourceId &&
    other.accountId == accountId &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (labels.hashCode) +
    (tags.hashCode) +
    (assigneeId == null ? 0 : assigneeId!.hashCode) +
    (parentTaskId == null ? 0 : parentTaskId!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (sourcePlatform == null ? 0 : sourcePlatform!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'CreateTaskRequest[title=$title, description=$description, status=$status, dueDate=$dueDate, priority=$priority, labels=$labels, tags=$tags, assigneeId=$assigneeId, parentTaskId=$parentTaskId, type=$type, sourcePlatform=$sourcePlatform, sourceId=$sourceId, accountId=$accountId, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.accountId != null) {
      json[r'accountId'] = this.accountId;
    } else {
      json[r'accountId'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [CreateTaskRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateTaskRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'title'), 'Required key "CreateTaskRequest[title]" is missing from JSON.');
        assert(json[r'title'] != null, 'Required key "CreateTaskRequest[title]" has a null value in JSON.');
        return true;
      }());

      return CreateTaskRequest(
        title: mapValueOfType<String>(json, r'title')!,
        description: mapValueOfType<String>(json, r'description'),
        status: mapValueOfType<String>(json, r'status'),
        dueDate: mapDateTime(json, r'dueDate', r''),
        priority: CreateTaskRequestPriorityEnum.fromJson(json[r'priority']),
        labels: json[r'labels'] is Iterable
            ? (json[r'labels'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        assigneeId: mapValueOfType<String>(json, r'assigneeId'),
        parentTaskId: mapValueOfType<String>(json, r'parentTaskId'),
        type: mapValueOfType<String>(json, r'type'),
        sourcePlatform: mapValueOfType<String>(json, r'sourcePlatform'),
        sourceId: mapValueOfType<String>(json, r'sourceId'),
        accountId: mapValueOfType<String>(json, r'accountId'),
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<CreateTaskRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateTaskRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateTaskRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateTaskRequest> mapFromJson(dynamic json) {
    final map = <String, CreateTaskRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateTaskRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateTaskRequest-objects as value to a dart map
  static Map<String, List<CreateTaskRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateTaskRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateTaskRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
  };
}


class CreateTaskRequestPriorityEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateTaskRequestPriorityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const none = CreateTaskRequestPriorityEnum._(r'none');
  static const low = CreateTaskRequestPriorityEnum._(r'low');
  static const medium = CreateTaskRequestPriorityEnum._(r'medium');
  static const high = CreateTaskRequestPriorityEnum._(r'high');
  static const urgent = CreateTaskRequestPriorityEnum._(r'urgent');

  /// List of all possible values in this [enum][CreateTaskRequestPriorityEnum].
  static const values = <CreateTaskRequestPriorityEnum>[
    none,
    low,
    medium,
    high,
    urgent,
  ];

  static CreateTaskRequestPriorityEnum? fromJson(dynamic value) => CreateTaskRequestPriorityEnumTypeTransformer().decode(value);

  static List<CreateTaskRequestPriorityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateTaskRequestPriorityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateTaskRequestPriorityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateTaskRequestPriorityEnum] to String,
/// and [decode] dynamic data back to [CreateTaskRequestPriorityEnum].
class CreateTaskRequestPriorityEnumTypeTransformer {
  factory CreateTaskRequestPriorityEnumTypeTransformer() => _instance ??= const CreateTaskRequestPriorityEnumTypeTransformer._();

  const CreateTaskRequestPriorityEnumTypeTransformer._();

  String encode(CreateTaskRequestPriorityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateTaskRequestPriorityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateTaskRequestPriorityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'none': return CreateTaskRequestPriorityEnum.none;
        case r'low': return CreateTaskRequestPriorityEnum.low;
        case r'medium': return CreateTaskRequestPriorityEnum.medium;
        case r'high': return CreateTaskRequestPriorityEnum.high;
        case r'urgent': return CreateTaskRequestPriorityEnum.urgent;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateTaskRequestPriorityEnumTypeTransformer] instance.
  static CreateTaskRequestPriorityEnumTypeTransformer? _instance;
}


