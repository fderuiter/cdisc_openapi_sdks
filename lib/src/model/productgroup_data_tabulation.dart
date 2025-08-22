//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/productgroup_data_tabulation_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'productgroup_data_tabulation.g.dart';

/// ProductgroupDataTabulation
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class ProductgroupDataTabulation implements Built<ProductgroupDataTabulation, ProductgroupDataTabulationBuilder> {
  @BuiltValueField(wireName: r'_links')
  ProductgroupDataTabulationLinks? get links;

  ProductgroupDataTabulation._();

  factory ProductgroupDataTabulation([void updates(ProductgroupDataTabulationBuilder b)]) = _$ProductgroupDataTabulation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductgroupDataTabulationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductgroupDataTabulation> get serializer => _$ProductgroupDataTabulationSerializer();
}

class _$ProductgroupDataTabulationSerializer implements PrimitiveSerializer<ProductgroupDataTabulation> {
  @override
  final Iterable<Type> types = const [ProductgroupDataTabulation, _$ProductgroupDataTabulation];

  @override
  final String wireName = r'ProductgroupDataTabulation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductgroupDataTabulation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(ProductgroupDataTabulationLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductgroupDataTabulation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductgroupDataTabulationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupDataTabulationLinks),
          ) as ProductgroupDataTabulationLinks;
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
  ProductgroupDataTabulation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductgroupDataTabulationBuilder();
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

