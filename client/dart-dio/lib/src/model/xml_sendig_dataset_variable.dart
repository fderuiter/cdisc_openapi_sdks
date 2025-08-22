//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_dataset_variable.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sendig_dataset_variable.g.dart';

/// XmlSendigDatasetVariable
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSendigDatasetVariable implements Built<XmlSendigDatasetVariable, XmlSendigDatasetVariableBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigDatasetVariable? get self;

  XmlSendigDatasetVariable._();

  factory XmlSendigDatasetVariable([void updates(XmlSendigDatasetVariableBuilder b)]) = _$XmlSendigDatasetVariable;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSendigDatasetVariableBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSendigDatasetVariable> get serializer => _$XmlSendigDatasetVariableSerializer();
}

class _$XmlSendigDatasetVariableSerializer implements PrimitiveSerializer<XmlSendigDatasetVariable> {
  @override
  final Iterable<Type> types = const [XmlSendigDatasetVariable, _$XmlSendigDatasetVariable];

  @override
  final String wireName = r'XmlSendigDatasetVariable';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSendigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigDatasetVariable),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSendigDatasetVariable object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSendigDatasetVariableBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigDatasetVariable),
          ) as SendigDatasetVariable;
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
  XmlSendigDatasetVariable deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSendigDatasetVariableBuilder();
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

