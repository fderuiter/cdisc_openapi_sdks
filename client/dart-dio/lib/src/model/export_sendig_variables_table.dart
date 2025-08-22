//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_sendig_variables_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sendig_variables_table.g.dart';

/// ExportSendigVariablesTable
///
/// Properties:
/// * [variables] 
@BuiltValue()
abstract class ExportSendigVariablesTable implements Built<ExportSendigVariablesTable, ExportSendigVariablesTableBuilder> {
  @BuiltValueField(wireName: r'variables')
  BuiltList<ExportSendigVariablesRow>? get variables;

  ExportSendigVariablesTable._();

  factory ExportSendigVariablesTable([void updates(ExportSendigVariablesTableBuilder b)]) = _$ExportSendigVariablesTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSendigVariablesTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSendigVariablesTable> get serializer => _$ExportSendigVariablesTableSerializer();
}

class _$ExportSendigVariablesTableSerializer implements PrimitiveSerializer<ExportSendigVariablesTable> {
  @override
  final Iterable<Type> types = const [ExportSendigVariablesTable, _$ExportSendigVariablesTable];

  @override
  final String wireName = r'ExportSendigVariablesTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSendigVariablesTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.variables != null) {
      yield r'variables';
      yield serializers.serialize(
        object.variables,
        specifiedType: const FullType(BuiltList, [FullType(ExportSendigVariablesRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportSendigVariablesTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSendigVariablesTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportSendigVariablesRow)]),
          ) as BuiltList<ExportSendigVariablesRow>;
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
  ExportSendigVariablesTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSendigVariablesTableBuilder();
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

