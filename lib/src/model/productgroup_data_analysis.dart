//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/productgroup_data_analysis_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'productgroup_data_analysis.g.dart';

/// ProductgroupDataAnalysis
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class ProductgroupDataAnalysis implements Built<ProductgroupDataAnalysis, ProductgroupDataAnalysisBuilder> {
  @BuiltValueField(wireName: r'_links')
  ProductgroupDataAnalysisLinks? get links;

  ProductgroupDataAnalysis._();

  factory ProductgroupDataAnalysis([void updates(ProductgroupDataAnalysisBuilder b)]) = _$ProductgroupDataAnalysis;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductgroupDataAnalysisBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductgroupDataAnalysis> get serializer => _$ProductgroupDataAnalysisSerializer();
}

class _$ProductgroupDataAnalysisSerializer implements PrimitiveSerializer<ProductgroupDataAnalysis> {
  @override
  final Iterable<Type> types = const [ProductgroupDataAnalysis, _$ProductgroupDataAnalysis];

  @override
  final String wireName = r'ProductgroupDataAnalysis';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductgroupDataAnalysis object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(ProductgroupDataAnalysisLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductgroupDataAnalysis object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductgroupDataAnalysisBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupDataAnalysisLinks),
          ) as ProductgroupDataAnalysisLinks;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductgroupDataAnalysis deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductgroupDataAnalysisBuilder();
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

