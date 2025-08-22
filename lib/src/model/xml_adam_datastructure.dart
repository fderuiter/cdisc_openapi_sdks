//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_datastructure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_adam_datastructure.g.dart';

/// XmlAdamDatastructure
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlAdamDatastructure implements Built<XmlAdamDatastructure, XmlAdamDatastructureBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamDatastructure? get self;

  XmlAdamDatastructure._();

  factory XmlAdamDatastructure([void updates(XmlAdamDatastructureBuilder b)]) = _$XmlAdamDatastructure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlAdamDatastructureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlAdamDatastructure> get serializer => _$XmlAdamDatastructureSerializer();
}

class _$XmlAdamDatastructureSerializer implements PrimitiveSerializer<XmlAdamDatastructure> {
  @override
  final Iterable<Type> types = const [XmlAdamDatastructure, _$XmlAdamDatastructure];

  @override
  final String wireName = r'XmlAdamDatastructure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlAdamDatastructure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamDatastructure),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlAdamDatastructure object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlAdamDatastructureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamDatastructure),
          ) as AdamDatastructure;
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
  XmlAdamDatastructure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlAdamDatastructureBuilder();
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

