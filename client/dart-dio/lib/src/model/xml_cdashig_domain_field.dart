//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_domain_field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_cdashig_domain_field.g.dart';

/// XmlCdashigDomainField
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlCdashigDomainField implements Built<XmlCdashigDomainField, XmlCdashigDomainFieldBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigDomainField? get self;

  XmlCdashigDomainField._();

  factory XmlCdashigDomainField([void updates(XmlCdashigDomainFieldBuilder b)]) = _$XmlCdashigDomainField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlCdashigDomainFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlCdashigDomainField> get serializer => _$XmlCdashigDomainFieldSerializer();
}

class _$XmlCdashigDomainFieldSerializer implements PrimitiveSerializer<XmlCdashigDomainField> {
  @override
  final Iterable<Type> types = const [XmlCdashigDomainField, _$XmlCdashigDomainField];

  @override
  final String wireName = r'XmlCdashigDomainField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlCdashigDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigDomainField),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlCdashigDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlCdashigDomainFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigDomainField),
          ) as CdashigDomainField;
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
  XmlCdashigDomainField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlCdashigDomainFieldBuilder();
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

