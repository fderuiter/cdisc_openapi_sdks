//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/ct_package_ref_element.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/productgroup_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'productgroup_terminology_links.g.dart';

/// ProductgroupTerminologyLinks
///
/// Properties:
/// * [self] 
/// * [packages] 
@BuiltValue()
abstract class ProductgroupTerminologyLinks implements Built<ProductgroupTerminologyLinks, ProductgroupTerminologyLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  ProductgroupRef? get self;

  @BuiltValueField(wireName: r'packages')
  BuiltList<CtPackageRefElement>? get packages;

  ProductgroupTerminologyLinks._();

  factory ProductgroupTerminologyLinks([void updates(ProductgroupTerminologyLinksBuilder b)]) = _$ProductgroupTerminologyLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductgroupTerminologyLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductgroupTerminologyLinks> get serializer => _$ProductgroupTerminologyLinksSerializer();
}

class _$ProductgroupTerminologyLinksSerializer implements PrimitiveSerializer<ProductgroupTerminologyLinks> {
  @override
  final Iterable<Type> types = const [ProductgroupTerminologyLinks, _$ProductgroupTerminologyLinks];

  @override
  final String wireName = r'ProductgroupTerminologyLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductgroupTerminologyLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(ProductgroupRef),
      );
    }
    if (object.packages != null) {
      yield r'packages';
      yield serializers.serialize(
        object.packages,
        specifiedType: const FullType(BuiltList, [FullType(CtPackageRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductgroupTerminologyLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductgroupTerminologyLinksBuilder result,
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
        case r'packages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CtPackageRefElement)]),
          ) as BuiltList<CtPackageRefElement>;
          result.packages.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductgroupTerminologyLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductgroupTerminologyLinksBuilder();
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

