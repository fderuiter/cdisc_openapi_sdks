//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_domain.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdash_domain.g.dart';

/// XmlCdashDomain
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashDomain implements Built<XmlCdashDomain, XmlCdashDomainBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashDomain? get self;

  XmlCdashDomain._();

  factory XmlCdashDomain([void updates(XmlCdashDomainBuilder b)]) = _$XmlCdashDomain;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashDomainBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashDomain> get serializer => _$XmlCdashDomainSerializer();
}

class _$XmlCdashDomainSerializer implements PrimitiveSerializer<XmlCdashDomain> {
  @override
  final Iterable<Type> types = const [XmlCdashDomain, _$XmlCdashDomain];

  @override
  final String wireName = r'XmlCdashDomain';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashDomain),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashDomainBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashDomain),
          ) as CdashDomain;
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
  XmlCdashDomain deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashDomainBuilder();
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

