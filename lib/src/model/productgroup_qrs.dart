//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/productgroup_qrs_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'productgroup_qrs.g.dart';

/// ProductgroupQrs
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class ProductgroupQrs implements Built<ProductgroupQrs, ProductgroupQrsBuilder> {
  @BuiltValueField(wireName: r'_links')
  ProductgroupQrsLinks? get links;

  ProductgroupQrs._();

  factory ProductgroupQrs([void updates(ProductgroupQrsBuilder b)]) = _$ProductgroupQrs;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductgroupQrsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductgroupQrs> get serializer => _$ProductgroupQrsSerializer();
}

class _$ProductgroupQrsSerializer implements PrimitiveSerializer<ProductgroupQrs> {
  @override
  final Iterable<Type> types = const [ProductgroupQrs, _$ProductgroupQrs];

  @override
  final String wireName = r'ProductgroupQrs';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductgroupQrs object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(ProductgroupQrsLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductgroupQrs object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductgroupQrsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupQrsLinks),
          ) as ProductgroupQrsLinks;
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
  ProductgroupQrs deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductgroupQrsBuilder();
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

