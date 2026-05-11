//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AgentTaskUsage {
  /// Returns a new [AgentTaskUsage] instance.
  AgentTaskUsage({
    required this.allowed,
    this.taskCount,
    this.dailyLimit,
    this.trialEndsAt,
    this.paid,
  });

  bool allowed;

  int? taskCount;

  int? dailyLimit;

  DateTime? trialEndsAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? paid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentTaskUsage &&
    other.allowed == allowed &&
    other.taskCount == taskCount &&
    other.dailyLimit == dailyLimit &&
    other.trialEndsAt == trialEndsAt &&
    other.paid == paid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (allowed.hashCode) +
    (taskCount == null ? 0 : taskCount!.hashCode) +
    (dailyLimit == null ? 0 : dailyLimit!.hashCode) +
    (trialEndsAt == null ? 0 : trialEndsAt!.hashCode) +
    (paid == null ? 0 : paid!.hashCode);

  @override
  String toString() => 'AgentTaskUsage[allowed=$allowed, taskCount=$taskCount, dailyLimit=$dailyLimit, trialEndsAt=$trialEndsAt, paid=$paid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'allowed'] = this.allowed;
    if (this.taskCount != null) {
      json[r'task_count'] = this.taskCount;
    } else {
      json[r'task_count'] = null;
    }
    if (this.dailyLimit != null) {
      json[r'daily_limit'] = this.dailyLimit;
    } else {
      json[r'daily_limit'] = null;
    }
    if (this.trialEndsAt != null) {
      json[r'trial_ends_at'] = this.trialEndsAt!.toUtc().toIso8601String();
    } else {
      json[r'trial_ends_at'] = null;
    }
    if (this.paid != null) {
      json[r'paid'] = this.paid;
    } else {
      json[r'paid'] = null;
    }
    return json;
  }

  /// Returns a new [AgentTaskUsage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentTaskUsage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'allowed'), 'Required key "AgentTaskUsage[allowed]" is missing from JSON.');
        assert(json[r'allowed'] != null, 'Required key "AgentTaskUsage[allowed]" has a null value in JSON.');
        return true;
      }());

      return AgentTaskUsage(
        allowed: mapValueOfType<bool>(json, r'allowed')!,
        taskCount: mapValueOfType<int>(json, r'task_count'),
        dailyLimit: mapValueOfType<int>(json, r'daily_limit'),
        trialEndsAt: mapDateTime(json, r'trial_ends_at', r''),
        paid: mapValueOfType<bool>(json, r'paid'),
      );
    }
    return null;
  }

  static List<AgentTaskUsage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentTaskUsage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentTaskUsage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentTaskUsage> mapFromJson(dynamic json) {
    final map = <String, AgentTaskUsage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentTaskUsage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentTaskUsage-objects as value to a dart map
  static Map<String, List<AgentTaskUsage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentTaskUsage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentTaskUsage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'allowed',
  };
}

