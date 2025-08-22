//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_datastructure_varsets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_adam_datastructure_varsets.g.dart';

/// XmlAdamDatastructureVarsets
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlAdamDatastructureVarsets implements Built<XmlAdamDatastructureVarsets, XmlAdamDatastructureVarsetsBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamDatastructureVarsets? get self;

  XmlAdamDatastructureVarsets._();

  factory XmlAdamDatastructureVarsets([void updates(XmlAdamDatastructureVarsetsBuilder b)]) = _$XmlAdamDatastructureVarsets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlAdamDatastructureVarsetsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlAdamDatastructureVarsets> get serializer => _$XmlAdamDatastructureVarsetsSerializer();
}

class _$XmlAdamDatastructureVarsetsSerializer implements PrimitiveSerializer<XmlAdamDatastructureVarsets> {
  @override
  final Iterable<Type> types = const [XmlAdamDatastructureVarsets, _$XmlAdamDatastructureVarsets];

  @override
  final String wireName = r'XmlAdamDatastructureVarsets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlAdamDatastructureVarsets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamDatastructureVarsets),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlAdamDatastructureVarsets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlAdamDatastructureVarsetsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamDatastructureVarsets),
          ) as AdamDatastructureVarsets;
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
  XmlAdamDatastructureVarsets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlAdamDatastructureVarsetsBuilder();
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

