//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_sdtm_dataset_variable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_root_sdtm_dataset_variable.g.dart';

/// XmlRootSdtmDatasetVariable
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlRootSdtmDatasetVariable implements Built<XmlRootSdtmDatasetVariable, XmlRootSdtmDatasetVariableBuilder> {
  @BuiltValueField(wireName: r'self')
  RootSdtmDatasetVariable? get self;

  XmlRootSdtmDatasetVariable._();

  factory XmlRootSdtmDatasetVariable([void updates(XmlRootSdtmDatasetVariableBuilder b)]) = _$XmlRootSdtmDatasetVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlRootSdtmDatasetVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlRootSdtmDatasetVariable> get serializer => _$XmlRootSdtmDatasetVariableSerializer();
}

class _$XmlRootSdtmDatasetVariableSerializer implements PrimitiveSerializer<XmlRootSdtmDatasetVariable> {
  @override
  final Iterable<Type> types = const [XmlRootSdtmDatasetVariable, _$XmlRootSdtmDatasetVariable];

  @override
  final String wireName = r'XmlRootSdtmDatasetVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlRootSdtmDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootSdtmDatasetVariable),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlRootSdtmDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlRootSdtmDatasetVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSdtmDatasetVariable),
          ) as RootSdtmDatasetVariable;
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
  XmlRootSdtmDatasetVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlRootSdtmDatasetVariableBuilder();
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

