//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_dataset_variables.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sendig_dataset_variables.g.dart';

/// XmlSendigDatasetVariables
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSendigDatasetVariables implements Built<XmlSendigDatasetVariables, XmlSendigDatasetVariablesBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigDatasetVariables? get self;

  XmlSendigDatasetVariables._();

  factory XmlSendigDatasetVariables([void updates(XmlSendigDatasetVariablesBuilder b)]) = _$XmlSendigDatasetVariables;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSendigDatasetVariablesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSendigDatasetVariables> get serializer => _$XmlSendigDatasetVariablesSerializer();
}

class _$XmlSendigDatasetVariablesSerializer implements PrimitiveSerializer<XmlSendigDatasetVariables> {
  @override
  final Iterable<Type> types = const [XmlSendigDatasetVariables, _$XmlSendigDatasetVariables];

  @override
  final String wireName = r'XmlSendigDatasetVariables';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSendigDatasetVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigDatasetVariables),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSendigDatasetVariables object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSendigDatasetVariablesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigDatasetVariables),
          ) as SendigDatasetVariables;
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
  XmlSendigDatasetVariables deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSendigDatasetVariablesBuilder();
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

