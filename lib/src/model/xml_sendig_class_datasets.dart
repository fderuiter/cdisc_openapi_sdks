//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_class_datasets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sendig_class_datasets.g.dart';

/// XmlSendigClassDatasets
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSendigClassDatasets implements Built<XmlSendigClassDatasets, XmlSendigClassDatasetsBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigClassDatasets? get self;

  XmlSendigClassDatasets._();

  factory XmlSendigClassDatasets([void updates(XmlSendigClassDatasetsBuilder b)]) = _$XmlSendigClassDatasets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSendigClassDatasetsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSendigClassDatasets> get serializer => _$XmlSendigClassDatasetsSerializer();
}

class _$XmlSendigClassDatasetsSerializer implements PrimitiveSerializer<XmlSendigClassDatasets> {
  @override
  final Iterable<Type> types = const [XmlSendigClassDatasets, _$XmlSendigClassDatasets];

  @override
  final String wireName = r'XmlSendigClassDatasets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSendigClassDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigClassDatasets),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSendigClassDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSendigClassDatasetsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigClassDatasets),
          ) as SendigClassDatasets;
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
  XmlSendigClassDatasets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSendigClassDatasetsBuilder();
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

