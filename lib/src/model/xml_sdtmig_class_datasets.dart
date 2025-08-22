//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_class_datasets.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_sdtmig_class_datasets.g.dart';

/// XmlSdtmigClassDatasets
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlSdtmigClassDatasets implements Built<XmlSdtmigClassDatasets, XmlSdtmigClassDatasetsBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmigClassDatasets? get self;

  XmlSdtmigClassDatasets._();

  factory XmlSdtmigClassDatasets([void updates(XmlSdtmigClassDatasetsBuilder b)]) = _$XmlSdtmigClassDatasets;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlSdtmigClassDatasetsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlSdtmigClassDatasets> get serializer => _$XmlSdtmigClassDatasetsSerializer();
}

class _$XmlSdtmigClassDatasetsSerializer implements PrimitiveSerializer<XmlSdtmigClassDatasets> {
  @override
  final Iterable<Type> types = const [XmlSdtmigClassDatasets, _$XmlSdtmigClassDatasets];

  @override
  final String wireName = r'XmlSdtmigClassDatasets';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlSdtmigClassDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmigClassDatasets),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlSdtmigClassDatasets object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlSdtmigClassDatasetsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigClassDatasets),
          ) as SdtmigClassDatasets;
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
  XmlSdtmigClassDatasets deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlSdtmigClassDatasetsBuilder();
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

