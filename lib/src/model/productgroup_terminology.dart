//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/productgroup_terminology_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'productgroup_terminology.g.dart';

/// ProductgroupTerminology
///
/// Properties:
/// * [links] 
@BuiltValue()
abstract class ProductgroupTerminology implements Built<ProductgroupTerminology, ProductgroupTerminologyBuilder> {
  @BuiltValueField(wireName: r'_links')
  ProductgroupTerminologyLinks? get links;

  ProductgroupTerminology._();

  factory ProductgroupTerminology([void updates(ProductgroupTerminologyBuilder b)]) = _$ProductgroupTerminology;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductgroupTerminologyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductgroupTerminology> get serializer => _$ProductgroupTerminologySerializer();
}

class _$ProductgroupTerminologySerializer implements PrimitiveSerializer<ProductgroupTerminology> {
  @override
  final Iterable<Type> types = const [ProductgroupTerminology, _$ProductgroupTerminology];

  @override
  final String wireName = r'ProductgroupTerminology';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductgroupTerminology object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(ProductgroupTerminologyLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductgroupTerminology object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductgroupTerminologyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupTerminologyLinks),
          ) as ProductgroupTerminologyLinks;
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
  ProductgroupTerminology deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductgroupTerminologyBuilder();
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

