//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtm_product.g.dart';

/// XmlSdtmProduct
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmProduct implements Built<XmlSdtmProduct, XmlSdtmProductBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmProduct? get self;

  XmlSdtmProduct._();

  factory XmlSdtmProduct([void updates(XmlSdtmProductBuilder b)]) = _$XmlSdtmProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmProduct> get serializer => _$XmlSdtmProductSerializer();
}

class _$XmlSdtmProductSerializer implements PrimitiveSerializer<XmlSdtmProduct> {
  @override
  final Iterable<Type> types = const [XmlSdtmProduct, _$XmlSdtmProduct];

  @override
  final String wireName = r'XmlSdtmProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmProduct),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmProductBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmProduct),
          ) as SdtmProduct;
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
  XmlSdtmProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmProductBuilder();
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

