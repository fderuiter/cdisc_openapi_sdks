//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/export_adam_variables_row.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_adam_variables_table.g.dart';

/// ExportAdamVariablesTable
///
/// Properties:
/// * [variables] 
@BuiltValue()
abstract class ExportAdamVariablesTable implements Built<ExportAdamVariablesTable, ExportAdamVariablesTableBuilder> {
  @BuiltValueField(wireName: r'variables')
  BuiltList<ExportAdamVariablesRow>? get variables;

  ExportAdamVariablesTable._();

  factory ExportAdamVariablesTable([void updates(ExportAdamVariablesTableBuilder b)]) = _$ExportAdamVariablesTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportAdamVariablesTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportAdamVariablesTable> get serializer => _$ExportAdamVariablesTableSerializer();
}

class _$ExportAdamVariablesTableSerializer implements PrimitiveSerializer<ExportAdamVariablesTable> {
  @override
  final Iterable<Type> types = const [ExportAdamVariablesTable, _$ExportAdamVariablesTable];

  @override
  final String wireName = r'ExportAdamVariablesTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportAdamVariablesTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.variables != null) {
      yield r'variables';
      yield serializers.serialize(
        object.variables,
        specifiedType: const FullType(BuiltList, [FullType(ExportAdamVariablesRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportAdamVariablesTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportAdamVariablesTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportAdamVariablesRow)]),
          ) as BuiltList<ExportAdamVariablesRow>;
          result.variables.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportAdamVariablesTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportAdamVariablesTableBuilder();
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

