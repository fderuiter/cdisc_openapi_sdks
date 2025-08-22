//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_sdtm_datasets_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sdtm_datasets_table.g.dart';

/// ExportSdtmDatasetsTable
///
/// Properties:
/// * [datasets] 
@BuiltValue()
abstract class ExportSdtmDatasetsTable implements Built<ExportSdtmDatasetsTable, ExportSdtmDatasetsTableBuilder> {
  @BuiltValueField(wireName: r'datasets')
  BuiltList<ExportSdtmDatasetsRow>? get datasets;

  ExportSdtmDatasetsTable._();

  factory ExportSdtmDatasetsTable([void updates(ExportSdtmDatasetsTableBuilder b)]) = _$ExportSdtmDatasetsTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSdtmDatasetsTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSdtmDatasetsTable> get serializer => _$ExportSdtmDatasetsTableSerializer();
}

class _$ExportSdtmDatasetsTableSerializer implements PrimitiveSerializer<ExportSdtmDatasetsTable> {
  @override
  final Iterable<Type> types = const [ExportSdtmDatasetsTable, _$ExportSdtmDatasetsTable];

  @override
  final String wireName = r'ExportSdtmDatasetsTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSdtmDatasetsTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    ExportSdtmDatasetsTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSdtmDatasetsTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  ExportSdtmDatasetsTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSdtmDatasetsTableBuilder();
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

