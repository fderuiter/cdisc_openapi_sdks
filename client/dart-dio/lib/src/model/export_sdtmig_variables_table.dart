//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_sdtmig_variables_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sdtmig_variables_table.g.dart';

/// ExportSdtmigVariablesTable
///
/// Properties:
/// * [variables] 
@BuiltValue()
abstract class ExportSdtmigVariablesTable implements Built<ExportSdtmigVariablesTable, ExportSdtmigVariablesTableBuilder> {
  @BuiltValueField(wireName: r'variables')
  BuiltList<ExportSdtmigVariablesRow>? get variables;

  ExportSdtmigVariablesTable._();

  factory ExportSdtmigVariablesTable([void updates(ExportSdtmigVariablesTableBuilder b)]) = _$ExportSdtmigVariablesTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSdtmigVariablesTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSdtmigVariablesTable> get serializer => _$ExportSdtmigVariablesTableSerializer();
}

class _$ExportSdtmigVariablesTableSerializer implements PrimitiveSerializer<ExportSdtmigVariablesTable> {
  @override
  final Iterable<Type> types = const [ExportSdtmigVariablesTable, _$ExportSdtmigVariablesTable];

  @override
  final String wireName = r'ExportSdtmigVariablesTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSdtmigVariablesTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.variables != null) {
      yield r'variables';
      yield serializers.serialize(
        object.variables,
        specifiedType: const FullType(BuiltList, [FullType(ExportSdtmigVariablesRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportSdtmigVariablesTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSdtmigVariablesTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportSdtmigVariablesRow)]),
          ) as BuiltList<ExportSdtmigVariablesRow>;
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
  ExportSdtmigVariablesTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSdtmigVariablesTableBuilder();
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

