//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_dataset.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtm_dataset.g.dart';

/// XmlSdtmDataset
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmDataset implements Built<XmlSdtmDataset, XmlSdtmDatasetBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmDataset? get self;

  XmlSdtmDataset._();

  factory XmlSdtmDataset([void updates(XmlSdtmDatasetBuilder b)]) = _$XmlSdtmDataset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmDatasetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmDataset> get serializer => _$XmlSdtmDatasetSerializer();
}

class _$XmlSdtmDatasetSerializer implements PrimitiveSerializer<XmlSdtmDataset> {
  @override
  final Iterable<Type> types = const [XmlSdtmDataset, _$XmlSdtmDataset];

  @override
  final String wireName = r'XmlSdtmDataset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmDataset object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmDataset),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmDataset object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmDatasetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDataset),
          ) as SdtmDataset;
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
  XmlSdtmDataset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmDatasetBuilder();
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

