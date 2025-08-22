//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_classes.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtmig_classes.g.dart';

/// XmlSdtmigClasses
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmigClasses implements Built<XmlSdtmigClasses, XmlSdtmigClassesBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigClasses? get self;

  XmlSdtmigClasses._();

  factory XmlSdtmigClasses([void updates(XmlSdtmigClassesBuilder b)]) = _$XmlSdtmigClasses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmigClassesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmigClasses> get serializer => _$XmlSdtmigClassesSerializer();
}

class _$XmlSdtmigClassesSerializer implements PrimitiveSerializer<XmlSdtmigClasses> {
  @override
  final Iterable<Type> types = const [XmlSdtmigClasses, _$XmlSdtmigClasses];

  @override
  final String wireName = r'XmlSdtmigClasses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmigClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigClasses),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmigClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmigClassesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigClasses),
          ) as SdtmigClasses;
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
  XmlSdtmigClasses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmigClassesBuilder();
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

