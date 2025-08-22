//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/qrs_product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_qrs_product.g.dart';

/// XmlQrsProduct
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlQrsProduct implements Built<XmlQrsProduct, XmlQrsProductBuilder> {
  @BuiltValueField(wireName: r'self')
  QrsProduct? get self;

  XmlQrsProduct._();

  factory XmlQrsProduct([void updates(XmlQrsProductBuilder b)]) = _$XmlQrsProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlQrsProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlQrsProduct> get serializer => _$XmlQrsProductSerializer();
}

class _$XmlQrsProductSerializer implements PrimitiveSerializer<XmlQrsProduct> {
  @override
  final Iterable<Type> types = const [XmlQrsProduct, _$XmlQrsProduct];

  @override
  final String wireName = r'XmlQrsProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlQrsProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(QrsProduct),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlQrsProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlQrsProductBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsProduct),
          ) as QrsProduct;
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
  XmlQrsProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlQrsProductBuilder();
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

