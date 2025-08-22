//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_dataset.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtmig_dataset.g.dart';

/// XmlSdtmigDataset
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmigDataset implements Built<XmlSdtmigDataset, XmlSdtmigDatasetBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigDataset? get self;

  XmlSdtmigDataset._();

  factory XmlSdtmigDataset([void updates(XmlSdtmigDatasetBuilder b)]) = _$XmlSdtmigDataset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmigDatasetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmigDataset> get serializer => _$XmlSdtmigDatasetSerializer();
}

class _$XmlSdtmigDatasetSerializer implements PrimitiveSerializer<XmlSdtmigDataset> {
  @override
  final Iterable<Type> types = const [XmlSdtmigDataset, _$XmlSdtmigDataset];

  @override
  final String wireName = r'XmlSdtmigDataset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmigDataset object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigDataset),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmigDataset object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmigDatasetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDataset),
          ) as SdtmigDataset;
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
  XmlSdtmigDataset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmigDatasetBuilder();
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

