//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_dataset.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sendig_dataset.g.dart';

/// XmlSendigDataset
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSendigDataset implements Built<XmlSendigDataset, XmlSendigDatasetBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigDataset? get self;

  XmlSendigDataset._();

  factory XmlSendigDataset([void updates(XmlSendigDatasetBuilder b)]) = _$XmlSendigDataset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSendigDatasetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSendigDataset> get serializer => _$XmlSendigDatasetSerializer();
}

class _$XmlSendigDatasetSerializer implements PrimitiveSerializer<XmlSendigDataset> {
  @override
  final Iterable<Type> types = const [XmlSendigDataset, _$XmlSendigDataset];

  @override
  final String wireName = r'XmlSendigDataset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSendigDataset object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigDataset),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSendigDataset object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSendigDatasetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigDataset),
          ) as SendigDataset;
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
  XmlSendigDataset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSendigDatasetBuilder();
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

