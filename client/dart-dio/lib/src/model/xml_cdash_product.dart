//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdash_product.g.dart';

/// XmlCdashProduct
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashProduct implements Built<XmlCdashProduct, XmlCdashProductBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashProduct? get self;

  XmlCdashProduct._();

  factory XmlCdashProduct([void updates(XmlCdashProductBuilder b)]) = _$XmlCdashProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashProduct> get serializer => _$XmlCdashProductSerializer();
}

class _$XmlCdashProductSerializer implements PrimitiveSerializer<XmlCdashProduct> {
  @override
  final Iterable<Type> types = const [XmlCdashProduct, _$XmlCdashProduct];

  @override
  final String wireName = r'XmlCdashProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashProduct),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashProductBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProduct),
          ) as CdashProduct;
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
  XmlCdashProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashProductBuilder();
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

