//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of spatio_sdk.api;

/// Discriminator for block types. The structure of `content` varies by type (e.g. `paragraph` carries `richText`; `code` carries `richText` + `language`; `image` carries `url` + `caption` + `altText`). 
class BlockType {
  /// Instantiate a new enum with the provided [value].
  const BlockType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const paragraph = BlockType._(r'paragraph');
  static const heading1 = BlockType._(r'heading_1');
  static const heading2 = BlockType._(r'heading_2');
  static const heading3 = BlockType._(r'heading_3');
  static const bulletedListItem = BlockType._(r'bulleted_list_item');
  static const numberedListItem = BlockType._(r'numbered_list_item');
  static const toDo = BlockType._(r'to_do');
  static const toggle = BlockType._(r'toggle');
  static const code = BlockType._(r'code');
  static const quote = BlockType._(r'quote');
  static const callout = BlockType._(r'callout');
  static const divider = BlockType._(r'divider');
  static const image = BlockType._(r'image');
  static const video = BlockType._(r'video');
  static const file = BlockType._(r'file');
  static const embed = BlockType._(r'embed');
  static const table = BlockType._(r'table');
  static const tableRow = BlockType._(r'table_row');
  static const columnList = BlockType._(r'column_list');
  static const column = BlockType._(r'column');
  static const equation = BlockType._(r'equation');
  static const breadcrumb = BlockType._(r'breadcrumb');
  static const tableOfContents = BlockType._(r'table_of_contents');

  /// List of all possible values in this [enum][BlockType].
  static const values = <BlockType>[
    paragraph,
    heading1,
    heading2,
    heading3,
    bulletedListItem,
    numberedListItem,
    toDo,
    toggle,
    code,
    quote,
    callout,
    divider,
    image,
    video,
    file,
    embed,
    table,
    tableRow,
    columnList,
    column,
    equation,
    breadcrumb,
    tableOfContents,
  ];

  static BlockType? fromJson(dynamic value) => BlockTypeTypeTransformer().decode(value);

  static List<BlockType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlockType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlockType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [BlockType] to String,
/// and [decode] dynamic data back to [BlockType].
class BlockTypeTypeTransformer {
  factory BlockTypeTypeTransformer() => _instance ??= const BlockTypeTypeTransformer._();

  const BlockTypeTypeTransformer._();

  String encode(BlockType data) => data.value;

  /// Decodes a [dynamic value][data] to a BlockType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  BlockType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'paragraph': return BlockType.paragraph;
        case r'heading_1': return BlockType.heading1;
        case r'heading_2': return BlockType.heading2;
        case r'heading_3': return BlockType.heading3;
        case r'bulleted_list_item': return BlockType.bulletedListItem;
        case r'numbered_list_item': return BlockType.numberedListItem;
        case r'to_do': return BlockType.toDo;
        case r'toggle': return BlockType.toggle;
        case r'code': return BlockType.code;
        case r'quote': return BlockType.quote;
        case r'callout': return BlockType.callout;
        case r'divider': return BlockType.divider;
        case r'image': return BlockType.image;
        case r'video': return BlockType.video;
        case r'file': return BlockType.file;
        case r'embed': return BlockType.embed;
        case r'table': return BlockType.table;
        case r'table_row': return BlockType.tableRow;
        case r'column_list': return BlockType.columnList;
        case r'column': return BlockType.column;
        case r'equation': return BlockType.equation;
        case r'breadcrumb': return BlockType.breadcrumb;
        case r'table_of_contents': return BlockType.tableOfContents;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [BlockTypeTypeTransformer] instance.
  static BlockTypeTypeTransformer? _instance;
}

