//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_class_variables.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtm_class_variables.g.dart';

/// XmlSdtmClassVariables
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmClassVariables implements Built<XmlSdtmClassVariables, XmlSdtmClassVariablesBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmClassVariables? get self;

  XmlSdtmClassVariables._();

  factory XmlSdtmClassVariables([void updates(XmlSdtmClassVariablesBuilder b)]) = _$XmlSdtmClassVariables;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmClassVariablesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmClassVariables> get serializer => _$XmlSdtmClassVariablesSerializer();
}

class _$XmlSdtmClassVariablesSerializer implements PrimitiveSerializer<XmlSdtmClassVariables> {
  @override
  final Iterable<Type> types = const [XmlSdtmClassVariables, _$XmlSdtmClassVariables];

  @override
  final String wireName = r'XmlSdtmClassVariables';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmClassVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmClassVariables),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmClassVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmClassVariablesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassVariables),
          ) as SdtmClassVariables;
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
  XmlSdtmClassVariables deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmClassVariablesBuilder();
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

