//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_classes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtm_classes.g.dart';

/// XmlSdtmClasses
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmClasses implements Built<XmlSdtmClasses, XmlSdtmClassesBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmClasses? get self;

  XmlSdtmClasses._();

  factory XmlSdtmClasses([void updates(XmlSdtmClassesBuilder b)]) = _$XmlSdtmClasses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmClassesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmClasses> get serializer => _$XmlSdtmClassesSerializer();
}

class _$XmlSdtmClassesSerializer implements PrimitiveSerializer<XmlSdtmClasses> {
  @override
  final Iterable<Type> types = const [XmlSdtmClasses, _$XmlSdtmClasses];

  @override
  final String wireName = r'XmlSdtmClasses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmClasses),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmClassesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClasses),
          ) as SdtmClasses;
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
  XmlSdtmClasses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmClassesBuilder();
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

