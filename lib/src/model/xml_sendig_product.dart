//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sendig_product.g.dart';

/// XmlSendigProduct
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSendigProduct implements Built<XmlSendigProduct, XmlSendigProductBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigProduct? get self;

  XmlSendigProduct._();

  factory XmlSendigProduct([void updates(XmlSendigProductBuilder b)]) = _$XmlSendigProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSendigProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSendigProduct> get serializer => _$XmlSendigProductSerializer();
}

class _$XmlSendigProductSerializer implements PrimitiveSerializer<XmlSendigProduct> {
  @override
  final Iterable<Type> types = const [XmlSendigProduct, _$XmlSendigProduct];

  @override
  final String wireName = r'XmlSendigProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSendigProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigProduct),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSendigProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSendigProductBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigProduct),
          ) as SendigProduct;
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
  XmlSendigProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSendigProductBuilder();
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

