//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_product_ref_element.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_product_ref_element.dart';
import 'package:openapi/src/model/productgroup_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'productgroup_data_collection_links.g.dart';

/// ProductgroupDataCollectionLinks
///
/// Properties:
/// * [self] 
/// * [cdash] 
/// * [cdashig] 
@BuiltValue()
abstract class ProductgroupDataCollectionLinks implements Built<ProductgroupDataCollectionLinks, ProductgroupDataCollectionLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  ProductgroupRef? get self;

  @BuiltValueField(wireName: r'cdash')
  BuiltList<CdashProductRefElement>? get cdash;

  @BuiltValueField(wireName: r'cdashig')
  BuiltList<CdashigProductRefElement>? get cdashig;

  ProductgroupDataCollectionLinks._();

  factory ProductgroupDataCollectionLinks([void updates(ProductgroupDataCollectionLinksBuilder b)]) = _$ProductgroupDataCollectionLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductgroupDataCollectionLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductgroupDataCollectionLinks> get serializer => _$ProductgroupDataCollectionLinksSerializer();
}

class _$ProductgroupDataCollectionLinksSerializer implements PrimitiveSerializer<ProductgroupDataCollectionLinks> {
  @override
  final Iterable<Type> types = const [ProductgroupDataCollectionLinks, _$ProductgroupDataCollectionLinks];

  @override
  final String wireName = r'ProductgroupDataCollectionLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductgroupDataCollectionLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(ProductgroupRef),
      );
    }
    if (object.cdash != null) {
      yield r'cdash';
      yield serializers.serialize(
        object.cdash,
        specifiedType: const FullType(BuiltList, [FullType(CdashProductRefElement)]),
      );
    }
    if (object.cdashig != null) {
      yield r'cdashig';
      yield serializers.serialize(
        object.cdashig,
        specifiedType: const FullType(BuiltList, [FullType(CdashigProductRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductgroupDataCollectionLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductgroupDataCollectionLinksBuilder result,
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
        case r'cdash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashProductRefElement)]),
          ) as BuiltList<CdashProductRefElement>;
          result.cdash.replace(valueDes);
          break;
        case r'cdashig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigProductRefElement)]),
          ) as BuiltList<CdashigProductRefElement>;
          result.cdashig.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductgroupDataCollectionLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductgroupDataCollectionLinksBuilder();
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

