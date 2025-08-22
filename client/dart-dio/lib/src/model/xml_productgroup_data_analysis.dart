//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/productgroup_data_analysis.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_productgroup_data_analysis.g.dart';

/// XmlProductgroupDataAnalysis
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlProductgroupDataAnalysis implements Built<XmlProductgroupDataAnalysis, XmlProductgroupDataAnalysisBuilder> {
  @BuiltValueField(wireName: r'self')
  ProductgroupDataAnalysis? get self;

  XmlProductgroupDataAnalysis._();

  factory XmlProductgroupDataAnalysis([void updates(XmlProductgroupDataAnalysisBuilder b)]) = _$XmlProductgroupDataAnalysis;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlProductgroupDataAnalysisBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlProductgroupDataAnalysis> get serializer => _$XmlProductgroupDataAnalysisSerializer();
}

class _$XmlProductgroupDataAnalysisSerializer implements PrimitiveSerializer<XmlProductgroupDataAnalysis> {
  @override
  final Iterable<Type> types = const [XmlProductgroupDataAnalysis, _$XmlProductgroupDataAnalysis];

  @override
  final String wireName = r'XmlProductgroupDataAnalysis';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlProductgroupDataAnalysis object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(ProductgroupDataAnalysis),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlProductgroupDataAnalysis object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlProductgroupDataAnalysisBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupDataAnalysis),
          ) as ProductgroupDataAnalysis;
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
  XmlProductgroupDataAnalysis deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlProductgroupDataAnalysisBuilder();
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

