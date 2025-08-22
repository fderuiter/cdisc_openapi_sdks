//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/productgroup_data_tabulation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_productgroup_data_tabulation.g.dart';

/// XmlProductgroupDataTabulation
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlProductgroupDataTabulation implements Built<XmlProductgroupDataTabulation, XmlProductgroupDataTabulationBuilder> {
  @BuiltValueField(wireName: r'self')
  ProductgroupDataTabulation? get self;

  XmlProductgroupDataTabulation._();

  factory XmlProductgroupDataTabulation([void updates(XmlProductgroupDataTabulationBuilder b)]) = _$XmlProductgroupDataTabulation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlProductgroupDataTabulationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlProductgroupDataTabulation> get serializer => _$XmlProductgroupDataTabulationSerializer();
}

class _$XmlProductgroupDataTabulationSerializer implements PrimitiveSerializer<XmlProductgroupDataTabulation> {
  @override
  final Iterable<Type> types = const [XmlProductgroupDataTabulation, _$XmlProductgroupDataTabulation];

  @override
  final String wireName = r'XmlProductgroupDataTabulation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlProductgroupDataTabulation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(ProductgroupDataTabulation),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlProductgroupDataTabulation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlProductgroupDataTabulationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupDataTabulation),
          ) as ProductgroupDataTabulation;
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
  XmlProductgroupDataTabulation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlProductgroupDataTabulationBuilder();
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

