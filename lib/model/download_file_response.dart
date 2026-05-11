//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class DownloadFileResponse {
  /// Returns a new [DownloadFileResponse] instance.
  DownloadFileResponse({
    required this.signedUrl,
    required this.file,
  });

  /// Pre-signed direct-download URL pointing at the backing storage (R2, Drive, etc.). Time-limited per provider. Clients follow the URL — the platform does not proxy bytes. 
  String signedUrl;

  SpatioFile file;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DownloadFileResponse &&
    other.signedUrl == signedUrl &&
    other.file == file;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (signedUrl.hashCode) +
    (file.hashCode);

  @override
  String toString() => 'DownloadFileResponse[signedUrl=$signedUrl, file=$file]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'signedUrl'] = this.signedUrl;
      json[r'file'] = this.file;
    return json;
  }

  /// Returns a new [DownloadFileResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DownloadFileResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'signedUrl'), 'Required key "DownloadFileResponse[signedUrl]" is missing from JSON.');
        assert(json[r'signedUrl'] != null, 'Required key "DownloadFileResponse[signedUrl]" has a null value in JSON.');
        assert(json.containsKey(r'file'), 'Required key "DownloadFileResponse[file]" is missing from JSON.');
        assert(json[r'file'] != null, 'Required key "DownloadFileResponse[file]" has a null value in JSON.');
        return true;
      }());

      return DownloadFileResponse(
        signedUrl: mapValueOfType<String>(json, r'signedUrl')!,
        file: SpatioFile.fromJson(json[r'file'])!,
      );
    }
    return null;
  }

  static List<DownloadFileResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DownloadFileResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DownloadFileResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DownloadFileResponse> mapFromJson(dynamic json) {
    final map = <String, DownloadFileResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DownloadFileResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DownloadFileResponse-objects as value to a dart map
  static Map<String, List<DownloadFileResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DownloadFileResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DownloadFileResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'signedUrl',
    'file',
  };
}

