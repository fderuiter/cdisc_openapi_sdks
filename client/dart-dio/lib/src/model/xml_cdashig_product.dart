//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_product.g.dart';

/// XmlCdashigProduct
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigProduct implements Built<XmlCdashigProduct, XmlCdashigProductBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigProduct? get self;

  XmlCdashigProduct._();

  factory XmlCdashigProduct([void updates(XmlCdashigProductBuilder b)]) = _$XmlCdashigProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigProduct> get serializer => _$XmlCdashigProductSerializer();
}

class _$XmlCdashigProductSerializer implements PrimitiveSerializer<XmlCdashigProduct> {
  @override
  final Iterable<Type> types = const [XmlCdashigProduct, _$XmlCdashigProduct];

  @override
  final String wireName = r'XmlCdashigProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigProduct),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigProductBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProduct),
          ) as CdashigProduct;
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
  XmlCdashigProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigProductBuilder();
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

