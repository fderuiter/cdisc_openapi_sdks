//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/products.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_products.g.dart';

/// XmlProducts
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlProducts implements Built<XmlProducts, XmlProductsBuilder> {
  @BuiltValueField(wireName: r'self')
  Products? get self;

  XmlProducts._();

  factory XmlProducts([void updates(XmlProductsBuilder b)]) = _$XmlProducts;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlProductsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlProducts> get serializer => _$XmlProductsSerializer();
}

class _$XmlProductsSerializer implements PrimitiveSerializer<XmlProducts> {
  @override
  final Iterable<Type> types = const [XmlProducts, _$XmlProducts];

  @override
  final String wireName = r'XmlProducts';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlProducts object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(Products),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlProducts object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlProductsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Products),
          ) as Products;
          result.self.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  XmlProducts deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlProductsBuilder();
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

