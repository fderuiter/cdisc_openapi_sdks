//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_product_ref_element.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/productgroup_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'productgroup_data_analysis_links.g.dart';

/// ProductgroupDataAnalysisLinks
///
/// Properties:
/// * [self] 
/// * [adam] 
@BuiltValue()
abstract class ProductgroupDataAnalysisLinks implements Built<ProductgroupDataAnalysisLinks, ProductgroupDataAnalysisLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  ProductgroupRef? get self;

  @BuiltValueField(wireName: r'adam')
  BuiltList<AdamProductRefElement>? get adam;

  ProductgroupDataAnalysisLinks._();

  factory ProductgroupDataAnalysisLinks([void updates(ProductgroupDataAnalysisLinksBuilder b)]) = _$ProductgroupDataAnalysisLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductgroupDataAnalysisLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductgroupDataAnalysisLinks> get serializer => _$ProductgroupDataAnalysisLinksSerializer();
}

class _$ProductgroupDataAnalysisLinksSerializer implements PrimitiveSerializer<ProductgroupDataAnalysisLinks> {
  @override
  final Iterable<Type> types = const [ProductgroupDataAnalysisLinks, _$ProductgroupDataAnalysisLinks];

  @override
  final String wireName = r'ProductgroupDataAnalysisLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductgroupDataAnalysisLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(ProductgroupRef),
      );
    }
    if (object.adam != null) {
      yield r'adam';
      yield serializers.serialize(
        object.adam,
        specifiedType: const FullType(BuiltList, [FullType(AdamProductRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductgroupDataAnalysisLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductgroupDataAnalysisLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupRef),
          ) as ProductgroupRef;
          result.self.replace(valueDes);
          break;
        case r'adam':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AdamProductRefElement)]),
          ) as BuiltList<AdamProductRefElement>;
          result.adam.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductgroupDataAnalysisLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductgroupDataAnalysisLinksBuilder();
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

