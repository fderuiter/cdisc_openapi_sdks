//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_datasets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtmig_datasets.g.dart';

/// XmlSdtmigDatasets
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmigDatasets implements Built<XmlSdtmigDatasets, XmlSdtmigDatasetsBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigDatasets? get self;

  XmlSdtmigDatasets._();

  factory XmlSdtmigDatasets([void updates(XmlSdtmigDatasetsBuilder b)]) = _$XmlSdtmigDatasets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmigDatasetsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmigDatasets> get serializer => _$XmlSdtmigDatasetsSerializer();
}

class _$XmlSdtmigDatasetsSerializer implements PrimitiveSerializer<XmlSdtmigDatasets> {
  @override
  final Iterable<Type> types = const [XmlSdtmigDatasets, _$XmlSdtmigDatasets];

  @override
  final String wireName = r'XmlSdtmigDatasets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmigDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigDatasets),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmigDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmigDatasetsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigDatasets),
          ) as SdtmigDatasets;
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
  XmlSdtmigDatasets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmigDatasetsBuilder();
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

