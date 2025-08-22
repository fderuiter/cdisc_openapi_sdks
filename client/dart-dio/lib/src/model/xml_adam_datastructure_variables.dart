//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_datastructure_variables.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_adam_datastructure_variables.g.dart';

/// XmlAdamDatastructureVariables
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlAdamDatastructureVariables implements Built<XmlAdamDatastructureVariables, XmlAdamDatastructureVariablesBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamDatastructureVariables? get self;

  XmlAdamDatastructureVariables._();

  factory XmlAdamDatastructureVariables([void updates(XmlAdamDatastructureVariablesBuilder b)]) = _$XmlAdamDatastructureVariables;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlAdamDatastructureVariablesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlAdamDatastructureVariables> get serializer => _$XmlAdamDatastructureVariablesSerializer();
}

class _$XmlAdamDatastructureVariablesSerializer implements PrimitiveSerializer<XmlAdamDatastructureVariables> {
  @override
  final Iterable<Type> types = const [XmlAdamDatastructureVariables, _$XmlAdamDatastructureVariables];

  @override
  final String wireName = r'XmlAdamDatastructureVariables';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlAdamDatastructureVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamDatastructureVariables),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlAdamDatastructureVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlAdamDatastructureVariablesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamDatastructureVariables),
          ) as AdamDatastructureVariables;
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
  XmlAdamDatastructureVariables deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlAdamDatastructureVariablesBuilder();
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

