//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/qrs_ref_element.dart';
import 'package:openapi/src/model/productgroup_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'productgroup_qrs_links.g.dart';

/// ProductgroupQrsLinks
///
/// Properties:
/// * [self] 
/// * [qrs] 
@BuiltValue()
abstract class ProductgroupQrsLinks implements Built<ProductgroupQrsLinks, ProductgroupQrsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  ProductgroupRef? get self;

  @BuiltValueField(wireName: r'qrs')
  BuiltList<QrsRefElement>? get qrs;

  ProductgroupQrsLinks._();

  factory ProductgroupQrsLinks([void updates(ProductgroupQrsLinksBuilder b)]) = _$ProductgroupQrsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductgroupQrsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductgroupQrsLinks> get serializer => _$ProductgroupQrsLinksSerializer();
}

class _$ProductgroupQrsLinksSerializer implements PrimitiveSerializer<ProductgroupQrsLinks> {
  @override
  final Iterable<Type> types = const [ProductgroupQrsLinks, _$ProductgroupQrsLinks];

  @override
  final String wireName = r'ProductgroupQrsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductgroupQrsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(ProductgroupRef),
      );
    }
    if (object.qrs != null) {
      yield r'qrs';
      yield serializers.serialize(
        object.qrs,
        specifiedType: const FullType(BuiltList, [FullType(QrsRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductgroupQrsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductgroupQrsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupRef),
          ) as ProductgroupRef;
          result.self.replace(valueDes);
          break;
        case r'qrs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(QrsRefElement)]),
          ) as BuiltList<QrsRefElement>;
          result.qrs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductgroupQrsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductgroupQrsLinksBuilder();
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

