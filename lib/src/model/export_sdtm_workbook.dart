//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/export_sdtm_dataset_variables_row.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_sdtm_class_variables_row.dart';
import 'package:openapi/src/model/export_sdtm_datasets_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sdtm_workbook.g.dart';

/// ExportSdtmWorkbook
///
/// Properties:
/// * [classVariables] 
/// * [datasetVariables] 
/// * [datasets] 
@BuiltValue()
abstract class ExportSdtmWorkbook implements Built<ExportSdtmWorkbook, ExportSdtmWorkbookBuilder> {
  @BuiltValueField(wireName: r'class-variables')
  BuiltList<ExportSdtmClassVariablesRow>? get classVariables;

  @BuiltValueField(wireName: r'dataset-variables')
  BuiltList<ExportSdtmDatasetVariablesRow>? get datasetVariables;

  @BuiltValueField(wireName: r'datasets')
  BuiltList<ExportSdtmDatasetsRow>? get datasets;

  ExportSdtmWorkbook._();

  factory ExportSdtmWorkbook([void updates(ExportSdtmWorkbookBuilder b)]) = _$ExportSdtmWorkbook;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSdtmWorkbookBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSdtmWorkbook> get serializer => _$ExportSdtmWorkbookSerializer();
}

class _$ExportSdtmWorkbookSerializer implements PrimitiveSerializer<ExportSdtmWorkbook> {
  @override
  final Iterable<Type> types = const [ExportSdtmWorkbook, _$ExportSdtmWorkbook];

  @override
  final String wireName = r'ExportSdtmWorkbook';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSdtmWorkbook object, {
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
    if (object.datasets != null) {
      yield r'datasets';
      yield serializers.serialize(
        object.datasets,
        specifiedType: const FullType(BuiltList, [FullType(ExportSdtmDatasetsRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportSdtmWorkbook object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSdtmWorkbookBuilder result,
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
        case r'datasets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportSdtmDatasetsRow)]),
          ) as BuiltList<ExportSdtmDatasetsRow>;
          result.datasets.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportSdtmWorkbook deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSdtmWorkbookBuilder();
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

