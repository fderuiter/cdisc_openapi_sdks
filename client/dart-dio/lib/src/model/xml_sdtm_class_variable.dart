//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_class_variable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtm_class_variable.g.dart';

/// XmlSdtmClassVariable
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmClassVariable implements Built<XmlSdtmClassVariable, XmlSdtmClassVariableBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmClassVariable? get self;

  XmlSdtmClassVariable._();

  factory XmlSdtmClassVariable([void updates(XmlSdtmClassVariableBuilder b)]) = _$XmlSdtmClassVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmClassVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmClassVariable> get serializer => _$XmlSdtmClassVariableSerializer();
}

class _$XmlSdtmClassVariableSerializer implements PrimitiveSerializer<XmlSdtmClassVariable> {
  @override
  final Iterable<Type> types = const [XmlSdtmClassVariable, _$XmlSdtmClassVariable];

  @override
  final String wireName = r'XmlSdtmClassVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmClassVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmClassVariable),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmClassVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmClassVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassVariable),
          ) as SdtmClassVariable;
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
  XmlSdtmClassVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmClassVariableBuilder();
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

