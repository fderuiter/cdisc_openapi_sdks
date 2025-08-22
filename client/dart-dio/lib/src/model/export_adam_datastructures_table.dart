//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_adam_datastructures_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_adam_datastructures_table.g.dart';

/// ExportAdamDatastructuresTable
///
/// Properties:
/// * [datastructures] 
@BuiltValue()
abstract class ExportAdamDatastructuresTable implements Built<ExportAdamDatastructuresTable, ExportAdamDatastructuresTableBuilder> {
  @BuiltValueField(wireName: r'datastructures')
  BuiltList<ExportAdamDatastructuresRow>? get datastructures;

  ExportAdamDatastructuresTable._();

  factory ExportAdamDatastructuresTable([void updates(ExportAdamDatastructuresTableBuilder b)]) = _$ExportAdamDatastructuresTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportAdamDatastructuresTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportAdamDatastructuresTable> get serializer => _$ExportAdamDatastructuresTableSerializer();
}

class _$ExportAdamDatastructuresTableSerializer implements PrimitiveSerializer<ExportAdamDatastructuresTable> {
  @override
  final Iterable<Type> types = const [ExportAdamDatastructuresTable, _$ExportAdamDatastructuresTable];

  @override
  final String wireName = r'ExportAdamDatastructuresTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportAdamDatastructuresTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.datastructures != null) {
      yield r'datastructures';
      yield serializers.serialize(
        object.datastructures,
        specifiedType: const FullType(BuiltList, [FullType(ExportAdamDatastructuresRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportAdamDatastructuresTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportAdamDatastructuresTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'datastructures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportAdamDatastructuresRow)]),
          ) as BuiltList<ExportAdamDatastructuresRow>;
          result.datastructures.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportAdamDatastructuresTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportAdamDatastructuresTableBuilder();
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

