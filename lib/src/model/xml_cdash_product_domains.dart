//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_product_domains.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdash_product_domains.g.dart';

/// XmlCdashProductDomains
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashProductDomains implements Built<XmlCdashProductDomains, XmlCdashProductDomainsBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashProductDomains? get self;

  XmlCdashProductDomains._();

  factory XmlCdashProductDomains([void updates(XmlCdashProductDomainsBuilder b)]) = _$XmlCdashProductDomains;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashProductDomainsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashProductDomains> get serializer => _$XmlCdashProductDomainsSerializer();
}

class _$XmlCdashProductDomainsSerializer implements PrimitiveSerializer<XmlCdashProductDomains> {
  @override
  final Iterable<Type> types = const [XmlCdashProductDomains, _$XmlCdashProductDomains];

  @override
  final String wireName = r'XmlCdashProductDomains';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashProductDomains object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashProductDomains),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashProductDomains object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashProductDomainsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProductDomains),
          ) as CdashProductDomains;
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
  XmlCdashProductDomains deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashProductDomainsBuilder();
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

