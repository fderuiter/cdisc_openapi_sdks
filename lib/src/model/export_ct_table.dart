//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_ct_codelist.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_ct_table.g.dart';

/// ExportCtTable
///
/// Properties:
/// * [ct] 
@BuiltValue()
abstract class ExportCtTable implements Built<ExportCtTable, ExportCtTableBuilder> {
  @BuiltValueField(wireName: r'ct')
  BuiltList<ExportCtCodelist>? get ct;

  ExportCtTable._();

  factory ExportCtTable([void updates(ExportCtTableBuilder b)]) = _$ExportCtTable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportCtTableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportCtTable> get serializer => _$ExportCtTableSerializer();
}

class _$ExportCtTableSerializer implements PrimitiveSerializer<ExportCtTable> {
  @override
  final Iterable<Type> types = const [ExportCtTable, _$ExportCtTable];

  @override
  final String wireName = r'ExportCtTable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportCtTable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ct != null) {
      yield r'ct';
      yield serializers.serialize(
        object.ct,
        specifiedType: const FullType(BuiltList, [FullType(ExportCtCodelist)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportCtTable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportCtTableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportCtCodelist)]),
          ) as BuiltList<ExportCtCodelist>;
          result.ct.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportCtTable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportCtTableBuilder();
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

