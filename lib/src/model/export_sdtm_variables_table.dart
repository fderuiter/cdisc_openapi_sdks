//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/export_sdtm_dataset_variables_row.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_sdtm_class_variables_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sdtm_variables_table.g.dart';

/// ExportSdtmVariablesTable
///
/// Properties:
/// * [classVariables] 
/// * [datasetVariables] 
@BuiltValue()
abstract class ExportSdtmVariablesTable implements Built<ExportSdtmVariablesTable, ExportSdtmVariablesTableBuilder> {
  @BuiltValueField(wireName: r'class-variables')
  BuiltList<ExportSdtmClassVariablesRow>? get classVariables;

  @BuiltValueField(wireName: r'dataset-variables')
  BuiltList<ExportSdtmDatasetVariablesRow>? get datasetVariables;

  ExportSdtmVariablesTable._();

  factory ExportSdtmVariablesTable([void updates(ExportSdtmVariablesTableBuilder b)]) = _$ExportSdtmVariablesTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSdtmVariablesTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSdtmVariablesTable> get serializer => _$ExportSdtmVariablesTableSerializer();
}

class _$ExportSdtmVariablesTableSerializer implements PrimitiveSerializer<ExportSdtmVariablesTable> {
  @override
  final Iterable<Type> types = const [ExportSdtmVariablesTable, _$ExportSdtmVariablesTable];

  @override
  final String wireName = r'ExportSdtmVariablesTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSdtmVariablesTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.classVariables != null) {
      yield r'class-variables';
      yield serializers.serialize(
        object.classVariables,
        specifiedType: const FullType(BuiltList, [FullType(ExportSdtmClassVariablesRow)]),
      );
    }
    if (object.datasetVariables != null) {
      yield r'dataset-variables';
      yield serializers.serialize(
        object.datasetVariables,
        specifiedType: const FullType(BuiltList, [FullType(ExportSdtmDatasetVariablesRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportSdtmVariablesTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSdtmVariablesTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'class-variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportSdtmClassVariablesRow)]),
          ) as BuiltList<ExportSdtmClassVariablesRow>;
          result.classVariables.replace(valueDes);
          break;
        case r'dataset-variables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportSdtmDatasetVariablesRow)]),
          ) as BuiltList<ExportSdtmDatasetVariablesRow>;
          result.datasetVariables.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportSdtmVariablesTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSdtmVariablesTableBuilder();
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

