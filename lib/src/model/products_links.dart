//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/productgroup_terminology.dart';
import 'package:openapi/src/model/productgroup_data_tabulation.dart';
import 'package:openapi/src/model/productgroup_data_collection.dart';
import 'package:openapi/src/model/productgroup_qrs.dart';
import 'package:openapi/src/model/products_ref.dart';
import 'package:openapi/src/model/productgroup_data_analysis.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'products_links.g.dart';

/// ProductsLinks
///
/// Properties:
/// * [self] 
/// * [dataCollection] 
/// * [dataTabulation] 
/// * [dataAnalysis] 
/// * [terminology] 
/// * [measure] 
@BuiltValue()
abstract class ProductsLinks implements Built<ProductsLinks, ProductsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  ProductsRef? get self;

  @BuiltValueField(wireName: r'data-collection')
  ProductgroupDataCollection? get dataCollection;

  @BuiltValueField(wireName: r'data-tabulation')
  ProductgroupDataTabulation? get dataTabulation;

  @BuiltValueField(wireName: r'data-analysis')
  ProductgroupDataAnalysis? get dataAnalysis;

  @BuiltValueField(wireName: r'terminology')
  ProductgroupTerminology? get terminology;

  @BuiltValueField(wireName: r'measure')
  ProductgroupQrs? get measure;

  ProductsLinks._();

  factory ProductsLinks([void updates(ProductsLinksBuilder b)]) = _$ProductsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductsLinks> get serializer => _$ProductsLinksSerializer();
}

class _$ProductsLinksSerializer implements PrimitiveSerializer<ProductsLinks> {
  @override
  final Iterable<Type> types = const [ProductsLinks, _$ProductsLinks];

  @override
  final String wireName = r'ProductsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(ProductsRef),
      );
    }
    if (object.dataCollection != null) {
      yield r'data-collection';
      yield serializers.serialize(
        object.dataCollection,
        specifiedType: const FullType(ProductgroupDataCollection),
      );
    }
    if (object.dataTabulation != null) {
      yield r'data-tabulation';
      yield serializers.serialize(
        object.dataTabulation,
        specifiedType: const FullType(ProductgroupDataTabulation),
      );
    }
    if (object.dataAnalysis != null) {
      yield r'data-analysis';
      yield serializers.serialize(
        object.dataAnalysis,
        specifiedType: const FullType(ProductgroupDataAnalysis),
      );
    }
    if (object.terminology != null) {
      yield r'terminology';
      yield serializers.serialize(
        object.terminology,
        specifiedType: const FullType(ProductgroupTerminology),
      );
    }
    if (object.measure != null) {
      yield r'measure';
      yield serializers.serialize(
        object.measure,
        specifiedType: const FullType(ProductgroupQrs),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductsRef),
          ) as ProductsRef;
          result.self.replace(valueDes);
          break;
        case r'data-collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupDataCollection),
          ) as ProductgroupDataCollection;
          result.dataCollection.replace(valueDes);
          break;
        case r'data-tabulation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupDataTabulation),
          ) as ProductgroupDataTabulation;
          result.dataTabulation.replace(valueDes);
          break;
        case r'data-analysis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupDataAnalysis),
          ) as ProductgroupDataAnalysis;
          result.dataAnalysis.replace(valueDes);
          break;
        case r'terminology':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupTerminology),
          ) as ProductgroupTerminology;
          result.terminology.replace(valueDes);
          break;
        case r'measure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupQrs),
          ) as ProductgroupQrs;
          result.measure.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductsLinksBuilder();
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

