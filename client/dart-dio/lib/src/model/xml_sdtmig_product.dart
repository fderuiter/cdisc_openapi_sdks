//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtmig_product.g.dart';

/// XmlSdtmigProduct
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmigProduct implements Built<XmlSdtmigProduct, XmlSdtmigProductBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigProduct? get self;

  XmlSdtmigProduct._();

  factory XmlSdtmigProduct([void updates(XmlSdtmigProductBuilder b)]) = _$XmlSdtmigProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmigProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmigProduct> get serializer => _$XmlSdtmigProductSerializer();
}

class _$XmlSdtmigProductSerializer implements PrimitiveSerializer<XmlSdtmigProduct> {
  @override
  final Iterable<Type> types = const [XmlSdtmigProduct, _$XmlSdtmigProduct];

  @override
  final String wireName = r'XmlSdtmigProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmigProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigProduct),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmigProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmigProductBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigProduct),
          ) as SdtmigProduct;
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
  XmlSdtmigProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmigProductBuilder();
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

