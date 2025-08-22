//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_domain_fields.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_domain_fields.g.dart';

/// XmlCdashigDomainFields
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigDomainFields implements Built<XmlCdashigDomainFields, XmlCdashigDomainFieldsBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigDomainFields? get self;

  XmlCdashigDomainFields._();

  factory XmlCdashigDomainFields([void updates(XmlCdashigDomainFieldsBuilder b)]) = _$XmlCdashigDomainFields;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigDomainFieldsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigDomainFields> get serializer => _$XmlCdashigDomainFieldsSerializer();
}

class _$XmlCdashigDomainFieldsSerializer implements PrimitiveSerializer<XmlCdashigDomainFields> {
  @override
  final Iterable<Type> types = const [XmlCdashigDomainFields, _$XmlCdashigDomainFields];

  @override
  final String wireName = r'XmlCdashigDomainFields';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigDomainFields object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigDomainFields),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigDomainFields object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigDomainFieldsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigDomainFields),
          ) as CdashigDomainFields;
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
  XmlCdashigDomainFields deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigDomainFieldsBuilder();
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

