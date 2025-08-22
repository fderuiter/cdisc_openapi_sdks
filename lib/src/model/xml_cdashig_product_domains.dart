//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_domains.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_product_domains.g.dart';

/// XmlCdashigProductDomains
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigProductDomains implements Built<XmlCdashigProductDomains, XmlCdashigProductDomainsBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigProductDomains? get self;

  XmlCdashigProductDomains._();

  factory XmlCdashigProductDomains([void updates(XmlCdashigProductDomainsBuilder b)]) = _$XmlCdashigProductDomains;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigProductDomainsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigProductDomains> get serializer => _$XmlCdashigProductDomainsSerializer();
}

class _$XmlCdashigProductDomainsSerializer implements PrimitiveSerializer<XmlCdashigProductDomains> {
  @override
  final Iterable<Type> types = const [XmlCdashigProductDomains, _$XmlCdashigProductDomains];

  @override
  final String wireName = r'XmlCdashigProductDomains';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigProductDomains object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigProductDomains),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigProductDomains object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigProductDomainsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductDomains),
          ) as CdashigProductDomains;
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
  XmlCdashigProductDomains deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigProductDomainsBuilder();
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

