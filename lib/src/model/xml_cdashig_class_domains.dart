//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_class_domains.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_class_domains.g.dart';

/// XmlCdashigClassDomains
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigClassDomains implements Built<XmlCdashigClassDomains, XmlCdashigClassDomainsBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigClassDomains? get self;

  XmlCdashigClassDomains._();

  factory XmlCdashigClassDomains([void updates(XmlCdashigClassDomainsBuilder b)]) = _$XmlCdashigClassDomains;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigClassDomainsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigClassDomains> get serializer => _$XmlCdashigClassDomainsSerializer();
}

class _$XmlCdashigClassDomainsSerializer implements PrimitiveSerializer<XmlCdashigClassDomains> {
  @override
  final Iterable<Type> types = const [XmlCdashigClassDomains, _$XmlCdashigClassDomains];

  @override
  final String wireName = r'XmlCdashigClassDomains';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigClassDomains object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigClassDomains),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigClassDomains object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigClassDomainsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigClassDomains),
          ) as CdashigClassDomains;
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
  XmlCdashigClassDomains deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigClassDomainsBuilder();
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

