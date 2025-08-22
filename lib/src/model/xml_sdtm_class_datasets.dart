//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_class_datasets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtm_class_datasets.g.dart';

/// XmlSdtmClassDatasets
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmClassDatasets implements Built<XmlSdtmClassDatasets, XmlSdtmClassDatasetsBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmClassDatasets? get self;

  XmlSdtmClassDatasets._();

  factory XmlSdtmClassDatasets([void updates(XmlSdtmClassDatasetsBuilder b)]) = _$XmlSdtmClassDatasets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmClassDatasetsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmClassDatasets> get serializer => _$XmlSdtmClassDatasetsSerializer();
}

class _$XmlSdtmClassDatasetsSerializer implements PrimitiveSerializer<XmlSdtmClassDatasets> {
  @override
  final Iterable<Type> types = const [XmlSdtmClassDatasets, _$XmlSdtmClassDatasets];

  @override
  final String wireName = r'XmlSdtmClassDatasets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmClassDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmClassDatasets),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmClassDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmClassDatasetsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassDatasets),
          ) as SdtmClassDatasets;
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
  XmlSdtmClassDatasets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmClassDatasetsBuilder();
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

