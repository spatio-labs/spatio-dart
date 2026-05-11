//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

class BlockListResponse {
  /// Returns a new [BlockListResponse] instance.
  BlockListResponse({
    this.blocks = const [],
    required this.total,
  });

  List<Block> blocks;

  int total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlockListResponse &&
    _deepEquality.equals(other.blocks, blocks) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blocks.hashCode) +
    (total.hashCode);

  @override
  String toString() => 'BlockListResponse[blocks=$blocks, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'blocks'] = this.blocks;
      json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [BlockListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlockListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'blocks'), 'Required key "BlockListResponse[blocks]" is missing from JSON.');
        assert(json[r'blocks'] != null, 'Required key "BlockListResponse[blocks]" has a null value in JSON.');
        assert(json.containsKey(r'total'), 'Required key "BlockListResponse[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "BlockListResponse[total]" has a null value in JSON.');
        return true;
      }());

      return BlockListResponse(
        blocks: Block.listFromJson(json[r'blocks']),
        total: mapValueOfType<int>(json, r'total')!,
      );
    }
    return null;
  }

  static List<BlockListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlockListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlockListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlockListResponse> mapFromJson(dynamic json) {
    final map = <String, BlockListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlockListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlockListResponse-objects as value to a dart map
  static Map<String, List<BlockListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlockListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlockListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'blocks',
    'total',
  };
}

