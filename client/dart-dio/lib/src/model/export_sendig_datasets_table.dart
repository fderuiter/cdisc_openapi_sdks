//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/export_sendig_datasets_row.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_sendig_datasets_table.g.dart';

/// ExportSendigDatasetsTable
///
/// Properties:
/// * [datasets] 
@BuiltValue()
abstract class ExportSendigDatasetsTable implements Built<ExportSendigDatasetsTable, ExportSendigDatasetsTableBuilder> {
  @BuiltValueField(wireName: r'datasets')
  BuiltList<ExportSendigDatasetsRow>? get datasets;

  ExportSendigDatasetsTable._();

  factory ExportSendigDatasetsTable([void updates(ExportSendigDatasetsTableBuilder b)]) = _$ExportSendigDatasetsTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportSendigDatasetsTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportSendigDatasetsTable> get serializer => _$ExportSendigDatasetsTableSerializer();
}

class _$ExportSendigDatasetsTableSerializer implements PrimitiveSerializer<ExportSendigDatasetsTable> {
  @override
  final Iterable<Type> types = const [ExportSendigDatasetsTable, _$ExportSendigDatasetsTable];

  @override
  final String wireName = r'ExportSendigDatasetsTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportSendigDatasetsTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    ExportSendigDatasetsTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportSendigDatasetsTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  ExportSendigDatasetsTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportSendigDatasetsTableBuilder();
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

