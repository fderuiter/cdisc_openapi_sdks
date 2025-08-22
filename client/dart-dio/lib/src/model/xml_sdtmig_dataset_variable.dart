//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_dataset_variable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtmig_dataset_variable.g.dart';

/// XmlSdtmigDatasetVariable
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmigDatasetVariable implements Built<XmlSdtmigDatasetVariable, XmlSdtmigDatasetVariableBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigDatasetVariable? get self;

  XmlSdtmigDatasetVariable._();

  factory XmlSdtmigDatasetVariable([void updates(XmlSdtmigDatasetVariableBuilder b)]) = _$XmlSdtmigDatasetVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmigDatasetVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmigDatasetVariable> get serializer => _$XmlSdtmigDatasetVariableSerializer();
}

class _$XmlSdtmigDatasetVariableSerializer implements PrimitiveSerializer<XmlSdtmigDatasetVariable> {
  @override
  final Iterable<Type> types = const [XmlSdtmigDatasetVariable, _$XmlSdtmigDatasetVariable];

  @override
  final String wireName = r'XmlSdtmigDatasetVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigDatasetVariable),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmigDatasetVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasetVariable),
          ) as SdtmigDatasetVariable;
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
  XmlSdtmigDatasetVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmigDatasetVariableBuilder();
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

