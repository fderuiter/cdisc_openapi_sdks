//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_sdtmig_variables_row.dart';
import 'package:openapi/src/model/export_sdtmig_datasets_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sdtmig_workbook.g.dart';

/// ExportSdtmigWorkbook
///
/// Properties:
/// * [variables] 
/// * [datasets] 
@BuiltValue()
abstract class ExportSdtmigWorkbook implements Built<ExportSdtmigWorkbook, ExportSdtmigWorkbookBuilder> {
  @BuiltValueField(wireName: r'variables')
  BuiltList<ExportSdtmigVariablesRow>? get variables;

  @BuiltValueField(wireName: r'datasets')
  BuiltList<ExportSdtmigDatasetsRow>? get datasets;

  ExportSdtmigWorkbook._();

  factory ExportSdtmigWorkbook([void updates(ExportSdtmigWorkbookBuilder b)]) = _$ExportSdtmigWorkbook;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSdtmigWorkbookBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSdtmigWorkbook> get serializer => _$ExportSdtmigWorkbookSerializer();
}

class _$ExportSdtmigWorkbookSerializer implements PrimitiveSerializer<ExportSdtmigWorkbook> {
  @override
  final Iterable<Type> types = const [ExportSdtmigWorkbook, _$ExportSdtmigWorkbook];

  @override
  final String wireName = r'ExportSdtmigWorkbook';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSdtmigWorkbook object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.variables != null) {
      yield r'variables';
      yield serializers.serialize(
        object.variables,
        specifiedType: const FullType(BuiltList, [FullType(ExportSdtmigVariablesRow)]),
      );
    }
    if (object.datasets != null) {
      yield r'datasets';
      yield serializers.serialize(
        object.datasets,
        specifiedType: const FullType(BuiltList, [FullType(ExportSdtmigDatasetsRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportSdtmigWorkbook object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSdtmigWorkbookBuilder result,
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
        case r'datasets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportSdtmigDatasetsRow)]),
          ) as BuiltList<ExportSdtmigDatasetsRow>;
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
  ExportSdtmigWorkbook deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSdtmigWorkbookBuilder();
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

