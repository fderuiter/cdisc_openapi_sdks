//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/qrs_item_ref_element.dart';
import 'package:openapi/src/model/qrs_items_ref.dart';
import 'package:openapi/src/model/qrs_product_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'qrs_items_links.g.dart';

/// QrsItemsLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [items] 
@BuiltValue()
abstract class QrsItemsLinks implements Built<QrsItemsLinks, QrsItemsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  QrsItemsRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  QrsProductRef? get parentProduct;

  @BuiltValueField(wireName: r'items')
  BuiltList<QrsItemRefElement>? get items;

  QrsItemsLinks._();

  factory QrsItemsLinks([void updates(QrsItemsLinksBuilder b)]) = _$QrsItemsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(QrsItemsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<QrsItemsLinks> get serializer => _$QrsItemsLinksSerializer();
}

class _$QrsItemsLinksSerializer implements PrimitiveSerializer<QrsItemsLinks> {
  @override
  final Iterable<Type> types = const [QrsItemsLinks, _$QrsItemsLinks];

  @override
  final String wireName = r'QrsItemsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    QrsItemsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(QrsItemsRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(QrsProductRef),
      );
    }
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(QrsItemRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    QrsItemsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required QrsItemsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsItemsRef),
          ) as QrsItemsRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsProductRef),
          ) as QrsProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QrsItemRefElement)]),
          ) as BuiltList<QrsItemRefElement>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  QrsItemsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = QrsItemsLinksBuilder();
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

