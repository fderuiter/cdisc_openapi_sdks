//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_classes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sendig_classes.g.dart';

/// XmlSendigClasses
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSendigClasses implements Built<XmlSendigClasses, XmlSendigClassesBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigClasses? get self;

  XmlSendigClasses._();

  factory XmlSendigClasses([void updates(XmlSendigClassesBuilder b)]) = _$XmlSendigClasses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSendigClassesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSendigClasses> get serializer => _$XmlSendigClassesSerializer();
}

class _$XmlSendigClassesSerializer implements PrimitiveSerializer<XmlSendigClasses> {
  @override
  final Iterable<Type> types = const [XmlSendigClasses, _$XmlSendigClasses];

  @override
  final String wireName = r'XmlSendigClasses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSendigClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigClasses),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSendigClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSendigClassesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigClasses),
          ) as SendigClasses;
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
  XmlSendigClasses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSendigClassesBuilder();
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

