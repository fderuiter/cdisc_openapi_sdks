//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_variable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_adam_variable.g.dart';

/// XmlAdamVariable
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlAdamVariable implements Built<XmlAdamVariable, XmlAdamVariableBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamVariable? get self;

  XmlAdamVariable._();

  factory XmlAdamVariable([void updates(XmlAdamVariableBuilder b)]) = _$XmlAdamVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlAdamVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlAdamVariable> get serializer => _$XmlAdamVariableSerializer();
}

class _$XmlAdamVariableSerializer implements PrimitiveSerializer<XmlAdamVariable> {
  @override
  final Iterable<Type> types = const [XmlAdamVariable, _$XmlAdamVariable];

  @override
  final String wireName = r'XmlAdamVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlAdamVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamVariable),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlAdamVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlAdamVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamVariable),
          ) as AdamVariable;
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
  XmlAdamVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlAdamVariableBuilder();
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

