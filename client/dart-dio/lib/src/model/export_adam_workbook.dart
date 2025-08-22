//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/export_adam_variables_row.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_adam_datastructures_row.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_adam_workbook.g.dart';

/// ExportAdamWorkbook
///
/// Properties:
/// * [variables] 
/// * [datastructures] 
@BuiltValue()
abstract class ExportAdamWorkbook implements Built<ExportAdamWorkbook, ExportAdamWorkbookBuilder> {
  @BuiltValueField(wireName: r'variables')
  BuiltList<ExportAdamVariablesRow>? get variables;

  @BuiltValueField(wireName: r'datastructures')
  BuiltList<ExportAdamDatastructuresRow>? get datastructures;

  ExportAdamWorkbook._();

  factory ExportAdamWorkbook([void updates(ExportAdamWorkbookBuilder b)]) = _$ExportAdamWorkbook;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportAdamWorkbookBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportAdamWorkbook> get serializer => _$ExportAdamWorkbookSerializer();
}

class _$ExportAdamWorkbookSerializer implements PrimitiveSerializer<ExportAdamWorkbook> {
  @override
  final Iterable<Type> types = const [ExportAdamWorkbook, _$ExportAdamWorkbook];

  @override
  final String wireName = r'ExportAdamWorkbook';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportAdamWorkbook object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.variables != null) {
      yield r'variables';
      yield serializers.serialize(
        object.variables,
        specifiedType: const FullType(BuiltList, [FullType(ExportAdamVariablesRow)]),
      );
    }
    if (object.datastructures != null) {
      yield r'datastructures';
      yield serializers.serialize(
        object.datastructures,
        specifiedType: const FullType(BuiltList, [FullType(ExportAdamDatastructuresRow)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportAdamWorkbook object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportAdamWorkbookBuilder result,
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
        case r'datastructures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportAdamDatastructuresRow)]),
          ) as BuiltList<ExportAdamDatastructuresRow>;
          result.datastructures.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportAdamWorkbook deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportAdamWorkbookBuilder();
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

