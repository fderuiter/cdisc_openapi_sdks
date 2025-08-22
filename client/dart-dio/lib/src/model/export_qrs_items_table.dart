//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_qrs_csv_items_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_qrs_items_table.g.dart';

/// ExportQrsItemsTable
///
/// Properties:
/// * [items] 
@BuiltValue()
abstract class ExportQrsItemsTable implements Built<ExportQrsItemsTable, ExportQrsItemsTableBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<ExportQrsCsvItemsRow>? get items;

  ExportQrsItemsTable._();

  factory ExportQrsItemsTable([void updates(ExportQrsItemsTableBuilder b)]) = _$ExportQrsItemsTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportQrsItemsTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportQrsItemsTable> get serializer => _$ExportQrsItemsTableSerializer();
}

class _$ExportQrsItemsTableSerializer implements PrimitiveSerializer<ExportQrsItemsTable> {
  @override
  final Iterable<Type> types = const [ExportQrsItemsTable, _$ExportQrsItemsTable];

  @override
  final String wireName = r'ExportQrsItemsTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportQrsItemsTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(ExportQrsCsvItemsRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportQrsItemsTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportQrsItemsTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportQrsCsvItemsRow)]),
          ) as BuiltList<ExportQrsCsvItemsRow>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportQrsItemsTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportQrsItemsTableBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

