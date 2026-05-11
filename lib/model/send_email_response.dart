//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class SendEmailResponse {
  /// Returns a new [SendEmailResponse] instance.
  SendEmailResponse({
    required this.success,
    required this.messageId,
    this.threadId,
    required this.provider,
    this.error,
  });

  bool success;

  String messageId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? threadId;

  String provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendEmailResponse &&
    other.success == success &&
    other.messageId == messageId &&
    other.threadId == threadId &&
    other.provider == provider &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (messageId.hashCode) +
    (threadId == null ? 0 : threadId!.hashCode) +
    (provider.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'SendEmailResponse[success=$success, messageId=$messageId, threadId=$threadId, provider=$provider, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'messageId'] = this.messageId;
    if (this.threadId != null) {
      json[r'threadId'] = this.threadId;
    } else {
      json[r'threadId'] = null;
    }
      json[r'provider'] = this.provider;
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [SendEmailResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendEmailResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "SendEmailResponse[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "SendEmailResponse[success]" has a null value in JSON.');
        assert(json.containsKey(r'messageId'), 'Required key "SendEmailResponse[messageId]" is missing from JSON.');
        assert(json[r'messageId'] != null, 'Required key "SendEmailResponse[messageId]" has a null value in JSON.');
        assert(json.containsKey(r'provider'), 'Required key "SendEmailResponse[provider]" is missing from JSON.');
        assert(json[r'provider'] != null, 'Required key "SendEmailResponse[provider]" has a null value in JSON.');
        return true;
      }());

      return SendEmailResponse(
        success: mapValueOfType<bool>(json, r'success')!,
        messageId: mapValueOfType<String>(json, r'messageId')!,
        threadId: mapValueOfType<String>(json, r'threadId'),
        provider: mapValueOfType<String>(json, r'provider')!,
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<SendEmailResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendEmailResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendEmailResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendEmailResponse> mapFromJson(dynamic json) {
    final map = <String, SendEmailResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendEmailResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendEmailResponse-objects as value to a dart map
  static Map<String, List<SendEmailResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendEmailResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendEmailResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'messageId',
    'provider',
  };
}

