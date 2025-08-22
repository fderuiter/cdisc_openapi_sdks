//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdash_domain_ref_element.dart';
import 'package:openapi/src/model/cdash_product_domains_ref.dart';
import 'package:openapi/src/model/cdash_product_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_product_domains_links.g.dart';

/// CdashProductDomainsLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [domains] 
@BuiltValue()
abstract class CdashProductDomainsLinks implements Built<CdashProductDomainsLinks, CdashProductDomainsLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashProductDomainsRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashProductRef? get parentProduct;

  @BuiltValueField(wireName: r'domains')
  BuiltList<CdashDomainRefElement>? get domains;

  CdashProductDomainsLinks._();

  factory CdashProductDomainsLinks([void updates(CdashProductDomainsLinksBuilder b)]) = _$CdashProductDomainsLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashProductDomainsLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashProductDomainsLinks> get serializer => _$CdashProductDomainsLinksSerializer();
}

class _$CdashProductDomainsLinksSerializer implements PrimitiveSerializer<CdashProductDomainsLinks> {
  @override
  final Iterable<Type> types = const [CdashProductDomainsLinks, _$CdashProductDomainsLinks];

  @override
  final String wireName = r'CdashProductDomainsLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashProductDomainsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashProductDomainsRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(CdashProductRef),
      );
    }
    if (object.domains != null) {
      yield r'domains';
      yield serializers.serialize(
        object.domains,
        specifiedType: const FullType(BuiltList, [FullType(CdashDomainRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashProductDomainsLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashProductDomainsLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProductDomainsRef),
          ) as CdashProductDomainsRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProductRef),
          ) as CdashProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashDomainRefElement)]),
          ) as BuiltList<CdashDomainRefElement>;
          result.domains.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashProductDomainsLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashProductDomainsLinksBuilder();
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

