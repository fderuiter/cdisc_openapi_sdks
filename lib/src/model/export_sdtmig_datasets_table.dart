//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_sdtmig_datasets_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sdtmig_datasets_table.g.dart';

/// ExportSdtmigDatasetsTable
///
/// Properties:
/// * [datasets] 
@BuiltValue()
abstract class ExportSdtmigDatasetsTable implements Built<ExportSdtmigDatasetsTable, ExportSdtmigDatasetsTableBuilder> {
  @BuiltValueField(wireName: r'datasets')
  BuiltList<ExportSdtmigDatasetsRow>? get datasets;

  ExportSdtmigDatasetsTable._();

  factory ExportSdtmigDatasetsTable([void updates(ExportSdtmigDatasetsTableBuilder b)]) = _$ExportSdtmigDatasetsTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSdtmigDatasetsTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSdtmigDatasetsTable> get serializer => _$ExportSdtmigDatasetsTableSerializer();
}

class _$ExportSdtmigDatasetsTableSerializer implements PrimitiveSerializer<ExportSdtmigDatasetsTable> {
  @override
  final Iterable<Type> types = const [ExportSdtmigDatasetsTable, _$ExportSdtmigDatasetsTable];

  @override
  final String wireName = r'ExportSdtmigDatasetsTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSdtmigDatasetsTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    ExportSdtmigDatasetsTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSdtmigDatasetsTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  ExportSdtmigDatasetsTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSdtmigDatasetsTableBuilder();
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

