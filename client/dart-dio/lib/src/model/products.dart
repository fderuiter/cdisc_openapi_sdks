//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/products_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'products.g.dart';

/// Products
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class Products implements Built<Products, ProductsBuilder> {
  @BuiltValueField(wireName: r'_links')
  ProductsLinks? get links;

  Products._();

  factory Products([void updates(ProductsBuilder b)]) = _$Products;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Products> get serializer => _$ProductsSerializer();
}

class _$ProductsSerializer implements PrimitiveSerializer<Products> {
  @override
  final Iterable<Type> types = const [Products, _$Products];

  @override
  final String wireName = r'Products';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Products object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(ProductsLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Products object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductsLinks),
          ) as ProductsLinks;
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
  Products deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductsBuilder();
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

