//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_cdashig_domain_field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_root_cdashig_domain_field.g.dart';

/// XmlRootCdashigDomainField
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlRootCdashigDomainField implements Built<XmlRootCdashigDomainField, XmlRootCdashigDomainFieldBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCdashigDomainField? get self;

  XmlRootCdashigDomainField._();

  factory XmlRootCdashigDomainField([void updates(XmlRootCdashigDomainFieldBuilder b)]) = _$XmlRootCdashigDomainField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlRootCdashigDomainFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlRootCdashigDomainField> get serializer => _$XmlRootCdashigDomainFieldSerializer();
}

class _$XmlRootCdashigDomainFieldSerializer implements PrimitiveSerializer<XmlRootCdashigDomainField> {
  @override
  final Iterable<Type> types = const [XmlRootCdashigDomainField, _$XmlRootCdashigDomainField];

  @override
  final String wireName = r'XmlRootCdashigDomainField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlRootCdashigDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCdashigDomainField),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlRootCdashigDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlRootCdashigDomainFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashigDomainField),
          ) as RootCdashigDomainField;
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
  XmlRootCdashigDomainField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlRootCdashigDomainFieldBuilder();
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

