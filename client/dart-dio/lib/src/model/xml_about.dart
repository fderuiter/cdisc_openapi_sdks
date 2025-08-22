//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/about.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_about.g.dart';

/// XmlAbout
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlAbout implements Built<XmlAbout, XmlAboutBuilder> {
  @BuiltValueField(wireName: r'self')
  About? get self;

  XmlAbout._();

  factory XmlAbout([void updates(XmlAboutBuilder b)]) = _$XmlAbout;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlAboutBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlAbout> get serializer => _$XmlAboutSerializer();
}

class _$XmlAboutSerializer implements PrimitiveSerializer<XmlAbout> {
  @override
  final Iterable<Type> types = const [XmlAbout, _$XmlAbout];

  @override
  final String wireName = r'XmlAbout';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlAbout object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(About),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlAbout object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlAboutBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(About),
          ) as About;
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
  XmlAbout deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlAboutBuilder();
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

