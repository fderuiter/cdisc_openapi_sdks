//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_domain.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_domain.g.dart';

/// XmlCdashigDomain
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigDomain implements Built<XmlCdashigDomain, XmlCdashigDomainBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigDomain? get self;

  XmlCdashigDomain._();

  factory XmlCdashigDomain([void updates(XmlCdashigDomainBuilder b)]) = _$XmlCdashigDomain;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigDomainBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigDomain> get serializer => _$XmlCdashigDomainSerializer();
}

class _$XmlCdashigDomainSerializer implements PrimitiveSerializer<XmlCdashigDomain> {
  @override
  final Iterable<Type> types = const [XmlCdashigDomain, _$XmlCdashigDomain];

  @override
  final String wireName = r'XmlCdashigDomain';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigDomain),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigDomainBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigDomain),
          ) as CdashigDomain;
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
  XmlCdashigDomain deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigDomainBuilder();
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

