//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_cdash_domain_field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_root_cdash_domain_field.g.dart';

/// XmlRootCdashDomainField
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlRootCdashDomainField implements Built<XmlRootCdashDomainField, XmlRootCdashDomainFieldBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCdashDomainField? get self;

  XmlRootCdashDomainField._();

  factory XmlRootCdashDomainField([void updates(XmlRootCdashDomainFieldBuilder b)]) = _$XmlRootCdashDomainField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlRootCdashDomainFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlRootCdashDomainField> get serializer => _$XmlRootCdashDomainFieldSerializer();
}

class _$XmlRootCdashDomainFieldSerializer implements PrimitiveSerializer<XmlRootCdashDomainField> {
  @override
  final Iterable<Type> types = const [XmlRootCdashDomainField, _$XmlRootCdashDomainField];

  @override
  final String wireName = r'XmlRootCdashDomainField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlRootCdashDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCdashDomainField),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlRootCdashDomainField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlRootCdashDomainFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashDomainField),
          ) as RootCdashDomainField;
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
  XmlRootCdashDomainField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlRootCdashDomainFieldBuilder();
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

