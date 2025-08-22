//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/export_sendig_datasets_row.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_sendig_variables_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sendig_workbook.g.dart';

/// ExportSendigWorkbook
///
/// Properties:
/// * [variables] 
/// * [datasets] 
@BuiltValue()
abstract class ExportSendigWorkbook implements Built<ExportSendigWorkbook, ExportSendigWorkbookBuilder> {
  @BuiltValueField(wireName: r'variables')
  BuiltList<ExportSendigVariablesRow>? get variables;

  @BuiltValueField(wireName: r'datasets')
  BuiltList<ExportSendigDatasetsRow>? get datasets;

  ExportSendigWorkbook._();

  factory ExportSendigWorkbook([void updates(ExportSendigWorkbookBuilder b)]) = _$ExportSendigWorkbook;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSendigWorkbookBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSendigWorkbook> get serializer => _$ExportSendigWorkbookSerializer();
}

class _$ExportSendigWorkbookSerializer implements PrimitiveSerializer<ExportSendigWorkbook> {
  @override
  final Iterable<Type> types = const [ExportSendigWorkbook, _$ExportSendigWorkbook];

  @override
  final String wireName = r'ExportSendigWorkbook';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSendigWorkbook object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.variables != null) {
      yield r'variables';
      yield serializers.serialize(
        object.variables,
        specifiedType: const FullType(BuiltList, [FullType(ExportSendigVariablesRow)]),
      );
    }
    if (object.datasets != null) {
      yield r'datasets';
      yield serializers.serialize(
        object.datasets,
        specifiedType: const FullType(BuiltList, [FullType(ExportSendigDatasetsRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportSendigWorkbook object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSendigWorkbookBuilder result,
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
        case r'datasets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportSendigDatasetsRow)]),
          ) as BuiltList<ExportSendigDatasetsRow>;
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
  ExportSendigWorkbook deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSendigWorkbookBuilder();
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

