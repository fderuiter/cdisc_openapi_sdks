//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/productgroup_data_collection_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'productgroup_data_collection.g.dart';

/// ProductgroupDataCollection
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class ProductgroupDataCollection implements Built<ProductgroupDataCollection, ProductgroupDataCollectionBuilder> {
  @BuiltValueField(wireName: r'_links')
  ProductgroupDataCollectionLinks? get links;

  ProductgroupDataCollection._();

  factory ProductgroupDataCollection([void updates(ProductgroupDataCollectionBuilder b)]) = _$ProductgroupDataCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductgroupDataCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductgroupDataCollection> get serializer => _$ProductgroupDataCollectionSerializer();
}

class _$ProductgroupDataCollectionSerializer implements PrimitiveSerializer<ProductgroupDataCollection> {
  @override
  final Iterable<Type> types = const [ProductgroupDataCollection, _$ProductgroupDataCollection];

  @override
  final String wireName = r'ProductgroupDataCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductgroupDataCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(ProductgroupDataCollectionLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductgroupDataCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductgroupDataCollectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupDataCollectionLinks),
          ) as ProductgroupDataCollectionLinks;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductgroupDataCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductgroupDataCollectionBuilder();
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

