//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_dataset_variable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtm_dataset_variable.g.dart';

/// XmlSdtmDatasetVariable
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmDatasetVariable implements Built<XmlSdtmDatasetVariable, XmlSdtmDatasetVariableBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmDatasetVariable? get self;

  XmlSdtmDatasetVariable._();

  factory XmlSdtmDatasetVariable([void updates(XmlSdtmDatasetVariableBuilder b)]) = _$XmlSdtmDatasetVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmDatasetVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmDatasetVariable> get serializer => _$XmlSdtmDatasetVariableSerializer();
}

class _$XmlSdtmDatasetVariableSerializer implements PrimitiveSerializer<XmlSdtmDatasetVariable> {
  @override
  final Iterable<Type> types = const [XmlSdtmDatasetVariable, _$XmlSdtmDatasetVariable];

  @override
  final String wireName = r'XmlSdtmDatasetVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmDatasetVariable),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmDatasetVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasetVariable),
          ) as SdtmDatasetVariable;
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
  XmlSdtmDatasetVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmDatasetVariableBuilder();
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

