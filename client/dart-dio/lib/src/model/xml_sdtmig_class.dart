//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_class.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtmig_class.g.dart';

/// XmlSdtmigClass
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmigClass implements Built<XmlSdtmigClass, XmlSdtmigClassBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigClass? get self;

  XmlSdtmigClass._();

  factory XmlSdtmigClass([void updates(XmlSdtmigClassBuilder b)]) = _$XmlSdtmigClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmigClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmigClass> get serializer => _$XmlSdtmigClassSerializer();
}

class _$XmlSdtmigClassSerializer implements PrimitiveSerializer<XmlSdtmigClass> {
  @override
  final Iterable<Type> types = const [XmlSdtmigClass, _$XmlSdtmigClass];

  @override
  final String wireName = r'XmlSdtmigClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmigClass object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigClass),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmigClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmigClassBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigClass),
          ) as SdtmigClass;
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
  XmlSdtmigClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmigClassBuilder();
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

