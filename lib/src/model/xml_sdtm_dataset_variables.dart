//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_dataset_variables.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtm_dataset_variables.g.dart';

/// XmlSdtmDatasetVariables
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmDatasetVariables implements Built<XmlSdtmDatasetVariables, XmlSdtmDatasetVariablesBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmDatasetVariables? get self;

  XmlSdtmDatasetVariables._();

  factory XmlSdtmDatasetVariables([void updates(XmlSdtmDatasetVariablesBuilder b)]) = _$XmlSdtmDatasetVariables;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmDatasetVariablesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmDatasetVariables> get serializer => _$XmlSdtmDatasetVariablesSerializer();
}

class _$XmlSdtmDatasetVariablesSerializer implements PrimitiveSerializer<XmlSdtmDatasetVariables> {
  @override
  final Iterable<Type> types = const [XmlSdtmDatasetVariables, _$XmlSdtmDatasetVariables];

  @override
  final String wireName = r'XmlSdtmDatasetVariables';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmDatasetVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmDatasetVariables),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmDatasetVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmDatasetVariablesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetVariables),
          ) as SdtmDatasetVariables;
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
  XmlSdtmDatasetVariables deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmDatasetVariablesBuilder();
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

