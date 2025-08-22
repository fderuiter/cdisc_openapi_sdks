//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_dataset_variables.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtmig_dataset_variables.g.dart';

/// XmlSdtmigDatasetVariables
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmigDatasetVariables implements Built<XmlSdtmigDatasetVariables, XmlSdtmigDatasetVariablesBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigDatasetVariables? get self;

  XmlSdtmigDatasetVariables._();

  factory XmlSdtmigDatasetVariables([void updates(XmlSdtmigDatasetVariablesBuilder b)]) = _$XmlSdtmigDatasetVariables;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmigDatasetVariablesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmigDatasetVariables> get serializer => _$XmlSdtmigDatasetVariablesSerializer();
}

class _$XmlSdtmigDatasetVariablesSerializer implements PrimitiveSerializer<XmlSdtmigDatasetVariables> {
  @override
  final Iterable<Type> types = const [XmlSdtmigDatasetVariables, _$XmlSdtmigDatasetVariables];

  @override
  final String wireName = r'XmlSdtmigDatasetVariables';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmigDatasetVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigDatasetVariables),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmigDatasetVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmigDatasetVariablesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasetVariables),
          ) as SdtmigDatasetVariables;
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
  XmlSdtmigDatasetVariables deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmigDatasetVariablesBuilder();
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

