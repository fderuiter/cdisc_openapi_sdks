//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_cdash_class_field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_root_cdash_class_field.g.dart';

/// XmlRootCdashClassField
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlRootCdashClassField implements Built<XmlRootCdashClassField, XmlRootCdashClassFieldBuilder> {
  @BuiltValueField(wireName: r'self')
  RootCdashClassField? get self;

  XmlRootCdashClassField._();

  factory XmlRootCdashClassField([void updates(XmlRootCdashClassFieldBuilder b)]) = _$XmlRootCdashClassField;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlRootCdashClassFieldBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlRootCdashClassField> get serializer => _$XmlRootCdashClassFieldSerializer();
}

class _$XmlRootCdashClassFieldSerializer implements PrimitiveSerializer<XmlRootCdashClassField> {
  @override
  final Iterable<Type> types = const [XmlRootCdashClassField, _$XmlRootCdashClassField];

  @override
  final String wireName = r'XmlRootCdashClassField';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlRootCdashClassField object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootCdashClassField),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlRootCdashClassField object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlRootCdashClassFieldBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCdashClassField),
          ) as RootCdashClassField;
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
  XmlRootCdashClassField deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlRootCdashClassFieldBuilder();
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

