//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtm_product_ref_element.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtmig_product_ref_element.dart';
import 'package:openapi/src/model/productgroup_ref.dart';
import 'package:openapi/src/model/sendig_product_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'productgroup_data_tabulation_links.g.dart';

/// ProductgroupDataTabulationLinks
///
/// Properties:
/// * [self] 
/// * [sdtm] 
/// * [sdtmig] 
/// * [sendig] 
@BuiltValue()
abstract class ProductgroupDataTabulationLinks implements Built<ProductgroupDataTabulationLinks, ProductgroupDataTabulationLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  ProductgroupRef? get self;

  @BuiltValueField(wireName: r'sdtm')
  BuiltList<SdtmProductRefElement>? get sdtm;

  @BuiltValueField(wireName: r'sdtmig')
  BuiltList<SdtmigProductRefElement>? get sdtmig;

  @BuiltValueField(wireName: r'sendig')
  BuiltList<SendigProductRefElement>? get sendig;

  ProductgroupDataTabulationLinks._();

  factory ProductgroupDataTabulationLinks([void updates(ProductgroupDataTabulationLinksBuilder b)]) = _$ProductgroupDataTabulationLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductgroupDataTabulationLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductgroupDataTabulationLinks> get serializer => _$ProductgroupDataTabulationLinksSerializer();
}

class _$ProductgroupDataTabulationLinksSerializer implements PrimitiveSerializer<ProductgroupDataTabulationLinks> {
  @override
  final Iterable<Type> types = const [ProductgroupDataTabulationLinks, _$ProductgroupDataTabulationLinks];

  @override
  final String wireName = r'ProductgroupDataTabulationLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductgroupDataTabulationLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(ProductgroupRef),
      );
    }
    if (object.sdtm != null) {
      yield r'sdtm';
      yield serializers.serialize(
        object.sdtm,
        specifiedType: const FullType(BuiltList, [FullType(SdtmProductRefElement)]),
      );
    }
    if (object.sdtmig != null) {
      yield r'sdtmig';
      yield serializers.serialize(
        object.sdtmig,
        specifiedType: const FullType(BuiltList, [FullType(SdtmigProductRefElement)]),
      );
    }
    if (object.sendig != null) {
      yield r'sendig';
      yield serializers.serialize(
        object.sendig,
        specifiedType: const FullType(BuiltList, [FullType(SendigProductRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductgroupDataTabulationLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductgroupDataTabulationLinksBuilder result,
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
        case r'sdtm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmProductRefElement)]),
          ) as BuiltList<SdtmProductRefElement>;
          result.sdtm.replace(valueDes);
          break;
        case r'sdtmig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmigProductRefElement)]),
          ) as BuiltList<SdtmigProductRefElement>;
          result.sdtmig.replace(valueDes);
          break;
        case r'sendig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendigProductRefElement)]),
          ) as BuiltList<SendigProductRefElement>;
          result.sendig.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductgroupDataTabulationLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductgroupDataTabulationLinksBuilder();
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

