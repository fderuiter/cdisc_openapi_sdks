//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_class.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtm_class.g.dart';

/// XmlSdtmClass
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmClass implements Built<XmlSdtmClass, XmlSdtmClassBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmClass? get self;

  XmlSdtmClass._();

  factory XmlSdtmClass([void updates(XmlSdtmClassBuilder b)]) = _$XmlSdtmClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmClass> get serializer => _$XmlSdtmClassSerializer();
}

class _$XmlSdtmClassSerializer implements PrimitiveSerializer<XmlSdtmClass> {
  @override
  final Iterable<Type> types = const [XmlSdtmClass, _$XmlSdtmClass];

  @override
  final String wireName = r'XmlSdtmClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmClass object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmClass),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmClassBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClass),
          ) as SdtmClass;
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
  XmlSdtmClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmClassBuilder();
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

