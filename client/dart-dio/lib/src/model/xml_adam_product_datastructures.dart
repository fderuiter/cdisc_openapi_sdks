//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_product_datastructures.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_adam_product_datastructures.g.dart';

/// XmlAdamProductDatastructures
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlAdamProductDatastructures implements Built<XmlAdamProductDatastructures, XmlAdamProductDatastructuresBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamProductDatastructures? get self;

  XmlAdamProductDatastructures._();

  factory XmlAdamProductDatastructures([void updates(XmlAdamProductDatastructuresBuilder b)]) = _$XmlAdamProductDatastructures;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlAdamProductDatastructuresBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlAdamProductDatastructures> get serializer => _$XmlAdamProductDatastructuresSerializer();
}

class _$XmlAdamProductDatastructuresSerializer implements PrimitiveSerializer<XmlAdamProductDatastructures> {
  @override
  final Iterable<Type> types = const [XmlAdamProductDatastructures, _$XmlAdamProductDatastructures];

  @override
  final String wireName = r'XmlAdamProductDatastructures';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlAdamProductDatastructures object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamProductDatastructures),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlAdamProductDatastructures object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlAdamProductDatastructuresBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamProductDatastructures),
          ) as AdamProductDatastructures;
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
  XmlAdamProductDatastructures deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlAdamProductDatastructuresBuilder();
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

