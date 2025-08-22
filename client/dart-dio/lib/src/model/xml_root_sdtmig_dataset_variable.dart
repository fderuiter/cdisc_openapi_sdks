//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_sdtmig_dataset_variable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_root_sdtmig_dataset_variable.g.dart';

/// XmlRootSdtmigDatasetVariable
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlRootSdtmigDatasetVariable implements Built<XmlRootSdtmigDatasetVariable, XmlRootSdtmigDatasetVariableBuilder> {
  @BuiltValueField(wireName: r'self')
  RootSdtmigDatasetVariable? get self;

  XmlRootSdtmigDatasetVariable._();

  factory XmlRootSdtmigDatasetVariable([void updates(XmlRootSdtmigDatasetVariableBuilder b)]) = _$XmlRootSdtmigDatasetVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlRootSdtmigDatasetVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlRootSdtmigDatasetVariable> get serializer => _$XmlRootSdtmigDatasetVariableSerializer();
}

class _$XmlRootSdtmigDatasetVariableSerializer implements PrimitiveSerializer<XmlRootSdtmigDatasetVariable> {
  @override
  final Iterable<Type> types = const [XmlRootSdtmigDatasetVariable, _$XmlRootSdtmigDatasetVariable];

  @override
  final String wireName = r'XmlRootSdtmigDatasetVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlRootSdtmigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootSdtmigDatasetVariable),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlRootSdtmigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlRootSdtmigDatasetVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSdtmigDatasetVariable),
          ) as RootSdtmigDatasetVariable;
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
  XmlRootSdtmigDatasetVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlRootSdtmigDatasetVariableBuilder();
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

