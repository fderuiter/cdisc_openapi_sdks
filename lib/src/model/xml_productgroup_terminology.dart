//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/productgroup_terminology.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_productgroup_terminology.g.dart';

/// XmlProductgroupTerminology
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlProductgroupTerminology implements Built<XmlProductgroupTerminology, XmlProductgroupTerminologyBuilder> {
  @BuiltValueField(wireName: r'self')
  ProductgroupTerminology? get self;

  XmlProductgroupTerminology._();

  factory XmlProductgroupTerminology([void updates(XmlProductgroupTerminologyBuilder b)]) = _$XmlProductgroupTerminology;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlProductgroupTerminologyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlProductgroupTerminology> get serializer => _$XmlProductgroupTerminologySerializer();
}

class _$XmlProductgroupTerminologySerializer implements PrimitiveSerializer<XmlProductgroupTerminology> {
  @override
  final Iterable<Type> types = const [XmlProductgroupTerminology, _$XmlProductgroupTerminology];

  @override
  final String wireName = r'XmlProductgroupTerminology';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlProductgroupTerminology object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(ProductgroupTerminology),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlProductgroupTerminology object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlProductgroupTerminologyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupTerminology),
          ) as ProductgroupTerminology;
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
  XmlProductgroupTerminology deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlProductgroupTerminologyBuilder();
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

