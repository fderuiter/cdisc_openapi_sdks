//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_datasets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtm_datasets.g.dart';

/// XmlSdtmDatasets
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmDatasets implements Built<XmlSdtmDatasets, XmlSdtmDatasetsBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmDatasets? get self;

  XmlSdtmDatasets._();

  factory XmlSdtmDatasets([void updates(XmlSdtmDatasetsBuilder b)]) = _$XmlSdtmDatasets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmDatasetsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmDatasets> get serializer => _$XmlSdtmDatasetsSerializer();
}

class _$XmlSdtmDatasetsSerializer implements PrimitiveSerializer<XmlSdtmDatasets> {
  @override
  final Iterable<Type> types = const [XmlSdtmDatasets, _$XmlSdtmDatasets];

  @override
  final String wireName = r'XmlSdtmDatasets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmDatasets),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmDatasetsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmDatasets),
          ) as SdtmDatasets;
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
  XmlSdtmDatasets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmDatasetsBuilder();
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

