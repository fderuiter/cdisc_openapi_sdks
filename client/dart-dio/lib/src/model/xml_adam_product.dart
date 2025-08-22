//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_adam_product.g.dart';

/// XmlAdamProduct
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlAdamProduct implements Built<XmlAdamProduct, XmlAdamProductBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamProduct? get self;

  XmlAdamProduct._();

  factory XmlAdamProduct([void updates(XmlAdamProductBuilder b)]) = _$XmlAdamProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlAdamProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlAdamProduct> get serializer => _$XmlAdamProductSerializer();
}

class _$XmlAdamProductSerializer implements PrimitiveSerializer<XmlAdamProduct> {
  @override
  final Iterable<Type> types = const [XmlAdamProduct, _$XmlAdamProduct];

  @override
  final String wireName = r'XmlAdamProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlAdamProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamProduct),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlAdamProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlAdamProductBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamProduct),
          ) as AdamProduct;
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
  XmlAdamProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlAdamProductBuilder();
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

