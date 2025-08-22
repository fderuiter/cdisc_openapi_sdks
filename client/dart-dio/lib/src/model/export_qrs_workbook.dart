//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/export_qrs_workbook_items_row.dart';
import 'package:openapi/src/model/export_qrs_responses.dart';
import 'package:openapi/src/model/export_qrs_general.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'export_qrs_workbook.g.dart';

/// ExportQrsWorkbook
///
/// Properties:
/// * [self] 
/// * [items] 
/// * [responses] 
@BuiltValue()
abstract class ExportQrsWorkbook implements Built<ExportQrsWorkbook, ExportQrsWorkbookBuilder> {
  @BuiltValueField(wireName: r'self')
  ExportQrsGeneral? get self;

  @BuiltValueField(wireName: r'items')
  BuiltList<ExportQrsWorkbookItemsRow>? get items;

  @BuiltValueField(wireName: r'responses')
  BuiltList<ExportQrsResponses>? get responses;

  ExportQrsWorkbook._();

  factory ExportQrsWorkbook([void updates(ExportQrsWorkbookBuilder b)]) = _$ExportQrsWorkbook;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExportQrsWorkbookBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExportQrsWorkbook> get serializer => _$ExportQrsWorkbookSerializer();
}

class _$ExportQrsWorkbookSerializer implements PrimitiveSerializer<ExportQrsWorkbook> {
  @override
  final Iterable<Type> types = const [ExportQrsWorkbook, _$ExportQrsWorkbook];

  @override
  final String wireName = r'ExportQrsWorkbook';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExportQrsWorkbook object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(ExportQrsGeneral),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(ExportQrsWorkbookItemsRow)]),
      );
    }
    if (object.responses != null) {
      yield r'responses';
      yield serializers.serialize(
        object.responses,
        specifiedType: const FullType(BuiltList, [FullType(ExportQrsResponses)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExportQrsWorkbook object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExportQrsWorkbookBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ExportQrsGeneral),
          ) as ExportQrsGeneral;
          result.self.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportQrsWorkbookItemsRow)]),
          ) as BuiltList<ExportQrsWorkbookItemsRow>;
          result.items.replace(valueDes);
          break;
        case r'responses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ExportQrsResponses)]),
          ) as BuiltList<ExportQrsResponses>;
          result.responses.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExportQrsWorkbook deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportQrsWorkbookBuilder();
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

