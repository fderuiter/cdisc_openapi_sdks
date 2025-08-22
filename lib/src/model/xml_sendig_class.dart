//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_class.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sendig_class.g.dart';

/// XmlSendigClass
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSendigClass implements Built<XmlSendigClass, XmlSendigClassBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigClass? get self;

  XmlSendigClass._();

  factory XmlSendigClass([void updates(XmlSendigClassBuilder b)]) = _$XmlSendigClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSendigClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSendigClass> get serializer => _$XmlSendigClassSerializer();
}

class _$XmlSendigClassSerializer implements PrimitiveSerializer<XmlSendigClass> {
  @override
  final Iterable<Type> types = const [XmlSendigClass, _$XmlSendigClass];

  @override
  final String wireName = r'XmlSendigClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSendigClass object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigClass),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSendigClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSendigClassBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigClass),
          ) as SendigClass;
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
  XmlSendigClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSendigClassBuilder();
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

