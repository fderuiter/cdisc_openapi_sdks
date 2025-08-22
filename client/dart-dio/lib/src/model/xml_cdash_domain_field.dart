//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_domain_field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdash_domain_field.g.dart';

/// XmlCdashDomainField
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashDomainField implements Built<XmlCdashDomainField, XmlCdashDomainFieldBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashDomainField? get self;

  XmlCdashDomainField._();

  factory XmlCdashDomainField([void updates(XmlCdashDomainFieldBuilder b)]) = _$XmlCdashDomainField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashDomainFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashDomainField> get serializer => _$XmlCdashDomainFieldSerializer();
}

class _$XmlCdashDomainFieldSerializer implements PrimitiveSerializer<XmlCdashDomainField> {
  @override
  final Iterable<Type> types = const [XmlCdashDomainField, _$XmlCdashDomainField];

  @override
  final String wireName = r'XmlCdashDomainField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashDomainField),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashDomainFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashDomainField),
          ) as CdashDomainField;
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
  XmlCdashDomainField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashDomainFieldBuilder();
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

