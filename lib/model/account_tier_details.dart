//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class AccountTierDetails {
  /// Returns a new [AccountTierDetails] instance.
  AccountTierDetails({
    required this.tier,
    this.dailyApiCalls,
    this.maxConnectedAccounts,
    this.maxEmailSendsPerDay,
    this.maxNotes,
    this.maxSheets,
    this.maxSlides,
    this.maxFiles,
    this.maxTasks,
    this.maxTeamMembers,
    this.maxWorkspaces,
    this.storageGb,
    this.hasAutomations,
    this.hasAdvancedAutomations,
    this.hasFullApiAccess,
  });

  String tier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dailyApiCalls;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxConnectedAccounts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxEmailSendsPerDay;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxNotes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxSheets;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxSlides;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxFiles;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxTasks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxTeamMembers;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxWorkspaces;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? storageGb;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasAutomations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasAdvancedAutomations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasFullApiAccess;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountTierDetails &&
    other.tier == tier &&
    other.dailyApiCalls == dailyApiCalls &&
    other.maxConnectedAccounts == maxConnectedAccounts &&
    other.maxEmailSendsPerDay == maxEmailSendsPerDay &&
    other.maxNotes == maxNotes &&
    other.maxSheets == maxSheets &&
    other.maxSlides == maxSlides &&
    other.maxFiles == maxFiles &&
    other.maxTasks == maxTasks &&
    other.maxTeamMembers == maxTeamMembers &&
    other.maxWorkspaces == maxWorkspaces &&
    other.storageGb == storageGb &&
    other.hasAutomations == hasAutomations &&
    other.hasAdvancedAutomations == hasAdvancedAutomations &&
    other.hasFullApiAccess == hasFullApiAccess;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tier.hashCode) +
    (dailyApiCalls == null ? 0 : dailyApiCalls!.hashCode) +
    (maxConnectedAccounts == null ? 0 : maxConnectedAccounts!.hashCode) +
    (maxEmailSendsPerDay == null ? 0 : maxEmailSendsPerDay!.hashCode) +
    (maxNotes == null ? 0 : maxNotes!.hashCode) +
    (maxSheets == null ? 0 : maxSheets!.hashCode) +
    (maxSlides == null ? 0 : maxSlides!.hashCode) +
    (maxFiles == null ? 0 : maxFiles!.hashCode) +
    (maxTasks == null ? 0 : maxTasks!.hashCode) +
    (maxTeamMembers == null ? 0 : maxTeamMembers!.hashCode) +
    (maxWorkspaces == null ? 0 : maxWorkspaces!.hashCode) +
    (storageGb == null ? 0 : storageGb!.hashCode) +
    (hasAutomations == null ? 0 : hasAutomations!.hashCode) +
    (hasAdvancedAutomations == null ? 0 : hasAdvancedAutomations!.hashCode) +
    (hasFullApiAccess == null ? 0 : hasFullApiAccess!.hashCode);

  @override
  String toString() => 'AccountTierDetails[tier=$tier, dailyApiCalls=$dailyApiCalls, maxConnectedAccounts=$maxConnectedAccounts, maxEmailSendsPerDay=$maxEmailSendsPerDay, maxNotes=$maxNotes, maxSheets=$maxSheets, maxSlides=$maxSlides, maxFiles=$maxFiles, maxTasks=$maxTasks, maxTeamMembers=$maxTeamMembers, maxWorkspaces=$maxWorkspaces, storageGb=$storageGb, hasAutomations=$hasAutomations, hasAdvancedAutomations=$hasAdvancedAutomations, hasFullApiAccess=$hasFullApiAccess]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tier'] = this.tier;
    if (this.dailyApiCalls != null) {
      json[r'daily_api_calls'] = this.dailyApiCalls;
    } else {
      json[r'daily_api_calls'] = null;
    }
    if (this.maxConnectedAccounts != null) {
      json[r'max_connected_accounts'] = this.maxConnectedAccounts;
    } else {
      json[r'max_connected_accounts'] = null;
    }
    if (this.maxEmailSendsPerDay != null) {
      json[r'max_email_sends_per_day'] = this.maxEmailSendsPerDay;
    } else {
      json[r'max_email_sends_per_day'] = null;
    }
    if (this.maxNotes != null) {
      json[r'max_notes'] = this.maxNotes;
    } else {
      json[r'max_notes'] = null;
    }
    if (this.maxSheets != null) {
      json[r'max_sheets'] = this.maxSheets;
    } else {
      json[r'max_sheets'] = null;
    }
    if (this.maxSlides != null) {
      json[r'max_slides'] = this.maxSlides;
    } else {
      json[r'max_slides'] = null;
    }
    if (this.maxFiles != null) {
      json[r'max_files'] = this.maxFiles;
    } else {
      json[r'max_files'] = null;
    }
    if (this.maxTasks != null) {
      json[r'max_tasks'] = this.maxTasks;
    } else {
      json[r'max_tasks'] = null;
    }
    if (this.maxTeamMembers != null) {
      json[r'max_team_members'] = this.maxTeamMembers;
    } else {
      json[r'max_team_members'] = null;
    }
    if (this.maxWorkspaces != null) {
      json[r'max_workspaces'] = this.maxWorkspaces;
    } else {
      json[r'max_workspaces'] = null;
    }
    if (this.storageGb != null) {
      json[r'storage_gb'] = this.storageGb;
    } else {
      json[r'storage_gb'] = null;
    }
    if (this.hasAutomations != null) {
      json[r'has_automations'] = this.hasAutomations;
    } else {
      json[r'has_automations'] = null;
    }
    if (this.hasAdvancedAutomations != null) {
      json[r'has_advanced_automations'] = this.hasAdvancedAutomations;
    } else {
      json[r'has_advanced_automations'] = null;
    }
    if (this.hasFullApiAccess != null) {
      json[r'has_full_api_access'] = this.hasFullApiAccess;
    } else {
      json[r'has_full_api_access'] = null;
    }
    return json;
  }

  /// Returns a new [AccountTierDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountTierDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'tier'), 'Required key "AccountTierDetails[tier]" is missing from JSON.');
        assert(json[r'tier'] != null, 'Required key "AccountTierDetails[tier]" has a null value in JSON.');
        return true;
      }());

      return AccountTierDetails(
        tier: mapValueOfType<String>(json, r'tier')!,
        dailyApiCalls: mapValueOfType<int>(json, r'daily_api_calls'),
        maxConnectedAccounts: mapValueOfType<int>(json, r'max_connected_accounts'),
        maxEmailSendsPerDay: mapValueOfType<int>(json, r'max_email_sends_per_day'),
        maxNotes: mapValueOfType<int>(json, r'max_notes'),
        maxSheets: mapValueOfType<int>(json, r'max_sheets'),
        maxSlides: mapValueOfType<int>(json, r'max_slides'),
        maxFiles: mapValueOfType<int>(json, r'max_files'),
        maxTasks: mapValueOfType<int>(json, r'max_tasks'),
        maxTeamMembers: mapValueOfType<int>(json, r'max_team_members'),
        maxWorkspaces: mapValueOfType<int>(json, r'max_workspaces'),
        storageGb: mapValueOfType<int>(json, r'storage_gb'),
        hasAutomations: mapValueOfType<bool>(json, r'has_automations'),
        hasAdvancedAutomations: mapValueOfType<bool>(json, r'has_advanced_automations'),
        hasFullApiAccess: mapValueOfType<bool>(json, r'has_full_api_access'),
      );
    }
    return null;
  }

  static List<AccountTierDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountTierDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountTierDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountTierDetails> mapFromJson(dynamic json) {
    final map = <String, AccountTierDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountTierDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountTierDetails-objects as value to a dart map
  static Map<String, List<AccountTierDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountTierDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountTierDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tier',
  };
}

