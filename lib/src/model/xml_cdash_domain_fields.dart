//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_domain_fields.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdash_domain_fields.g.dart';

/// XmlCdashDomainFields
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashDomainFields implements Built<XmlCdashDomainFields, XmlCdashDomainFieldsBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashDomainFields? get self;

  XmlCdashDomainFields._();

  factory XmlCdashDomainFields([void updates(XmlCdashDomainFieldsBuilder b)]) = _$XmlCdashDomainFields;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashDomainFieldsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashDomainFields> get serializer => _$XmlCdashDomainFieldsSerializer();
}

class _$XmlCdashDomainFieldsSerializer implements PrimitiveSerializer<XmlCdashDomainFields> {
  @override
  final Iterable<Type> types = const [XmlCdashDomainFields, _$XmlCdashDomainFields];

  @override
  final String wireName = r'XmlCdashDomainFields';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashDomainFields object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashDomainFields),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashDomainFields object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashDomainFieldsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashDomainFields),
          ) as CdashDomainFields;
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
  XmlCdashDomainFields deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashDomainFieldsBuilder();
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

