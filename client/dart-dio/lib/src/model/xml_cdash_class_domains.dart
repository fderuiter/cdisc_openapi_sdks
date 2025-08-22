//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_class_domains.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdash_class_domains.g.dart';

/// XmlCdashClassDomains
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashClassDomains implements Built<XmlCdashClassDomains, XmlCdashClassDomainsBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashClassDomains? get self;

  XmlCdashClassDomains._();

  factory XmlCdashClassDomains([void updates(XmlCdashClassDomainsBuilder b)]) = _$XmlCdashClassDomains;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashClassDomainsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashClassDomains> get serializer => _$XmlCdashClassDomainsSerializer();
}

class _$XmlCdashClassDomainsSerializer implements PrimitiveSerializer<XmlCdashClassDomains> {
  @override
  final Iterable<Type> types = const [XmlCdashClassDomains, _$XmlCdashClassDomains];

  @override
  final String wireName = r'XmlCdashClassDomains';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashClassDomains object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashClassDomains),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashClassDomains object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashClassDomainsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashClassDomains),
          ) as CdashClassDomains;
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
  XmlCdashClassDomains deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashClassDomainsBuilder();
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

