//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_sendig_dataset_variable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_root_sendig_dataset_variable.g.dart';

/// XmlRootSendigDatasetVariable
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlRootSendigDatasetVariable implements Built<XmlRootSendigDatasetVariable, XmlRootSendigDatasetVariableBuilder> {
  @BuiltValueField(wireName: r'self')
  RootSendigDatasetVariable? get self;

  XmlRootSendigDatasetVariable._();

  factory XmlRootSendigDatasetVariable([void updates(XmlRootSendigDatasetVariableBuilder b)]) = _$XmlRootSendigDatasetVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlRootSendigDatasetVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlRootSendigDatasetVariable> get serializer => _$XmlRootSendigDatasetVariableSerializer();
}

class _$XmlRootSendigDatasetVariableSerializer implements PrimitiveSerializer<XmlRootSendigDatasetVariable> {
  @override
  final Iterable<Type> types = const [XmlRootSendigDatasetVariable, _$XmlRootSendigDatasetVariable];

  @override
  final String wireName = r'XmlRootSendigDatasetVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlRootSendigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(RootSendigDatasetVariable),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlRootSendigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlRootSendigDatasetVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSendigDatasetVariable),
          ) as RootSendigDatasetVariable;
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
  XmlRootSendigDatasetVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlRootSendigDatasetVariableBuilder();
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

